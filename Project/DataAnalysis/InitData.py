import pandas
from sqlalchemy import event

from model import *
from flask import Blueprint
from DataAnalysis.Analysis_way import *
import datetime
db_app = Blueprint('db_app', __name__, static_folder='static', template_folder='templates', url_prefix='/db')


# 从数据库提取数据+存入数据库
# @event.listens_for(RawData, 'after_insert')
# def preProcessData(mapper, connection, target, periods):
#     data_list = RawData.query.filter(RawData.train_number_ID == target).order_by(RawData.time.desc()).all()
#     time_list = []
#     value_list = []
#     sensor = data_list[0].train_number_ID
#     for data in data_list:
#         time_list.append(data.time)
#         value_list.append(data.value)
#     data_dic = {'时间': time_list, '数值': value_list}
#     data_df = pd.DataFrame(data=data_dic)  # 构造dataframe
#     preview_list = dataPreview(data_df[['时间', '数值']], periods)
#     for p in preview_list:
#         predict_data = PredictData(time=p['时间'], yhat=p['yhat'], yhat_lower=p['yhat_lower'],
#                                    yhat_upper=p['yhat_upper'], train_number_ID=sensor)
#         db.session.add(predict_data)
#     db.session.commit()


# 数据测试
@db_app.route('/test')
def testData():
    test_data = RawData(time='2020-05-21 23:51:00', value=10, train_number_ID=72)
    db.session.add(test_data)
    db.session.commit()
    return "test"


# 数据预测测试
@db_app.route('/InitPredict')
def initPredict():
    sensor = 'A1'
    periods = 50
    freq = "1D"
    data_list = RawData.query.filter(RawData.train_number_ID == sensor).order_by(RawData.time.desc()).all()
    time_list = []
    value_list = []
    for data in data_list:
        time_list.append(data.time)
        value_list.append(data.value)
    data_dic = {'时间': time_list, '数值': value_list}
    data_df = pd.DataFrame(data=data_dic)  # 构造dataframe
    preview_list = dataPreview(data_df[['时间', '数值']], periods=periods, freq=freq)
    for p in preview_list:
        print(p)
        predict_data = PredictData(time=p['时间'], yhat=p['yhat'], yhat_lower=p['yhat_lower'],
                                   yhat_upper=p['yhat_upper'], train_number_ID=sensor)
        db.session.add(predict_data)
    db.session.commit()
    return "预测数据初始化完毕"


@db_app.route('/InitData')
def InitData():
    print("进来了")
    df = pandas.read_csv('D:/code_work/Train-Ticket-System/Project/DataAnalysis/数据.csv')
    print(df)
    for sensor_name in list(df)[1:]:
        id = 'A1'
        for index, row in df.iterrows():
            time = row['Time']
            value = float(row[sensor_name])
            new_data = RawData(time=time, value=value, train_number_ID=id)
            db.session.add(new_data)
        db.session.commit()
    return "数据初始化成功"


@db_app.route('/Trend')
def Trend():
    print("进来了")
    sensor = 'A1'
    periods = '2H'
    data_list = RawData.query.filter(RawData.train_number_ID == sensor).order_by(RawData.time.desc()).all()
    time_list = []
    value_list = []
    for data in data_list:
        time_list.append(data.time)
        value_list.append(data.value)
    data_dic = {'时间': time_list, '数值': value_list}
    data_df = pd.DataFrame(data=data_dic)  # 构造dataframe
    preview_list = dataTrend(data_df[['时间', '数值']])
    # print(preview_list)
