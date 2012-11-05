Deface::Override.new(:virtual_path => "spree/admin/orders/edit",
                     :name => "print_buttons",
                     :insert_after => "[data-hook='admin_order_edit_buttons'], #admin_order_edit_buttons[data-hook]",
                     :partial => "spree/shared/invoices/print_buttons",
                     :disabled => false)