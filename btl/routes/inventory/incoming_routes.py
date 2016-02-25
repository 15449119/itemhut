# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

from route_utils import *

@route("/incoming/update-order-<oid>")
@post("/incoming/update-order-<oid>")
def update_incoming_order(oid):
    check_user()
    if request.POST.get("arrived"):
        set_order_complete(oid)
    if request.POST.get("add-product"):
        upc = request.POST.get("upc")
        qty = request.POST.get("qty")
        insert_incoming_order_product(oid, upc, qty)
    products = select_incoming_product(oid)
    upc_list = get_order_upc_candidates(oid)
    order_info = select_incoming_order_data(oid)
    return template("views/incoming/update_incoming_order", inv = True,
                    invoice_added = False, order_info = order_info,
                    upc_list = upc_list, products = products)

@route("/incoming/all-records")
def all_records():
    check_user()
    orders = select_all_incoming_orders()
    return template("views/incoming/incoming_main", inv = True,
                    orders = orders)

@route("/incoming/add-record")
@post("/incoming/add-record")
def add_record():
    check_user()
    if request.POST.get("add-record"):
        invoice = request.POST.get("invoice")
        vendor_id = request.POST.get("vendor-id")
        order_date = request.POST.get("order-date")
        eta = request.POST.get("eta")
        upload = request.POST.get("invoice-file")
        name, ext = os.path.splitext(upload.filename)
        save_path = "uploaded_files/invoices/{0}".format(upload.filename)

        upload.save(save_path, overwrite=True)

            
        insert_invoice_data(invoice, vendor_id, order_date, eta,
                                str(invoice_file))

    
        return template("views/incoming/add_record", inv = True,
                        invoice_added = invoice)
        
    return template("views/incoming/add_record", inv = True,
                    invoice_added = False)

@route("/incoming")
def incoming():
    check_user()
    orders = select_incoming_orders()
    return template("views/incoming/incoming_main", inv = True,
                    orders = orders)