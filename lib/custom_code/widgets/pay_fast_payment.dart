// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:webview_flutter/webview_flutter.dart';

class PayFastPayment extends StatefulWidget {
  const PayFastPayment({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _PayFastPaymentState createState() => _PayFastPaymentState();
}

class _PayFastPaymentState extends State<PayFastPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: WebView(
          initialUrl: Uri.dataFromString('''   
                        <!DOCTYPE html> <html>
                        <style>
                        .center {
                          margin: auto;
                          width: 60%;
                          border: 3px solid #73AD21;
                          padding: 10px;
                         }
                        h1 {text-align: center; margin-left: 40px; font-size: 50px}
                        p {text-align: center; list-style-type:none;}

                        div {text-align: center; margin-left: 40px; font-size: 45px;
                        } 

                        input[type=button], input[type=submit], input[type=reset] {
  background-color: #FF0000;
  width: 50%;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  font-size: 40px;
  margin: 16px 32px;
  cursor: pointer;
}
</style>
  <body style="background-color:#ffffff;">
<head>
    
<h1>Reports Payment Checkout</h1>

<div class='checkout'>
     <div class='order'>
         
          <h5>Order #000001</h5>
          <form action="/action_page.php">
            <p>Please select your number of reports:</p>
             <input type="radio" id="html" name="number of reports" value="1 report">
             <label for="html">1 report</label><br>
             <input type="radio" id="css" name="number of reports" value="10 reports">
             <label for="css">10 reports</label><br>
             <label for="name">Enter your report number:</label>
             <input type="text" id="name" name="name" required
                   minlength="4" maxlength="8" size="15" height="80">
             
          </form>
          <h5 class='total'>Total</h5><h1>R100</h1>

          <form action="https://sandbox.payfast.co.za/eng/process" method="post">
               <input type="hidden" name="merchant_id" value="10000100">
               <input type="hidden" name="merchant_key" value="46f0cd694581a">
               <input type="hidden" name="return_url" value="https://www.example.com/success">
               <input type="hidden" name="cancel_url" value="https://www.example.com/cancel">
               <input type="hidden" name="notify_url" value="https://www.example.com/notify">

   
              <input type="hidden" name="amount" value="100.00">
              <input type="hidden" name="item_name" value="Test Product">
              <input type="submit" value="PAY NOW">
         </form> 
 
   </div>
</div>

</body>
</html>
                          ''', mimeType: 'text/html').toString(),
          javascriptMode: JavascriptMode.unrestricted,
          gestureNavigationEnabled: true,
        ),
      )
    ]));
  }
}
