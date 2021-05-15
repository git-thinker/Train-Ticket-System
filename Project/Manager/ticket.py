from flask import redirect, render_template, request, redirect, url_for
from . import manager_bp, access_check
from model import db, TrainNumber, Line, TicketsSold, FareInformation, User

@manager_bp.route('/ticket_view', methods = ['GET'])
def ticket_view():
    if not access_check(request, 0):
        response = redirect(url_for('manager_bp.manager_index'))
        response.delete_cookie('user_name')
        response.delete_cookie('user_type')
        return response
    ret = db.session.query(TrainNumber, Line, TicketsSold, FareInformation, User)\
        .filter(TrainNumber.line_ID == Line.line_ID)\
        .filter(TicketsSold.fare_ID == FareInformation.fare_ID)\
        .filter(FareInformation.train_number_id == TrainNumber.train_number_ID)\
        .filter(TicketsSold.user_ID == User.user_ID).all()
    render_args = {
        'ret': ret, 
        'user_name': request.cookies.get('user_name'),
        }
    return render_template('manage_ticket_table.html', **render_args)

@manager_bp.route('/ticket_delete', methods = ['GET'])
def ticket_delete():
    if not access_check(request, 0):
        response = redirect(url_for('manager_bp.manager_index'))
        response.delete_cookie('user_name')
        response.delete_cookie('user_type')
        return response
    delete_tickets_sold_ID = request.args.get('delete_tickets_sold_ID')
    delete_item = db.session.query(TicketsSold).filter(TicketsSold.tickets_sold_ID == delete_tickets_sold_ID).first()
    db.session.delete(delete_item)
    db.session.commit()
    return redirect(url_for('manager_bp.ticket_view'))

@manager_bp.route('/ticket_edit')
def ticket_edit():
    return render_template('manage_ticket_form.html')