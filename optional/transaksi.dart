class Transaksi {
  String order_id;
  int gross_amount;

  Transaksi(this.order_id, this.gross_amount);
  
  Map toJson() => {
    // untuk detail transaksi
    'transaction_details' : {
        'order_id': order_id,
        'gross_amount': gross_amount,
    },
    // untuk detail customer
    'customer_details': {
        'first_name': "Alan",
        'last_name': "Lengkoan",
        'email': "alanlengkoan15@gmail.com",
        'phone': "085242907595",
        "billing_address": {
            "first_name": "Alan",
            "last_name": "Lengkoan",
            "email": "alanlengkoan15@gmail.com",
            "phone": "085242907595",
            "address": "Perumahan Taman Guna Asri Jl. Kelapa Molek Hibrida IV",
            "city": "Gowa",
            "postal_code": "12345",
            "country_code": "IDN"
        },
    },
    // untuk detail item
    'item_details': [
        {
            'id': 'id_unit_01',
            'price': 10000000,
            'quantity': 1,
            'name': "Mobil Honda BRV"
        },
        {
            'id': 'id_unit_02',
            'price': 20000000,
            'quantity': 1,
            'name': "Mobil Honda BRV - V"
        },
    ],
  };
}