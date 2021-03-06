<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="https://cdn.goeasy.io/goeasy.js"></script>
<script type="text/javascript">
	if (typeof GoEasy !== 'undefined') {
		var goEasy = new GoEasy({
			appkey : 'ba821151-e043-4dfb-a954-c73744c8d323',
			userId : "222",
			username : "22",
			onConnected : function() {
				console.log("Connect to GoEasy success.");
			},
			onDisconnected : function() {
				console.log("Disconnect to GoEasy server.");
			},
			onConnectFailed : function(error) {
				console.log("Connect to GoEasy failed, error code: "
						+ error.code + " Error message: " + error.content);
			}
		});
	}
 
	function subscribe() {
		goEasy.subscribe({
			channel : 'demo_channel',
			onMessage : function(message) {
				console.log('Meessage received:' + message.content);
			},
			onSuccess : function() {

				console.log("Subscribe the Channel successfully.");

			},

			onFailed : function(error) {

				console.log("Subscribe the Channel failed, error code: "
						+ error.code + " error message: " + error.content);

			}

		});

	}

	function publishMessage() {
		goEasy.publish({
			channel : 'demo_channel',
			message : '11',
			onSuccess : function() {

				console.log("Publish message success.");

			},
			onFailed : function(error) {

				console.log("Publish message failed, error code: " + error.code
						+ " Error message: " + error.content);

			}
		});

	}

	function unsubscribe() {
		goEasy.unsubscribe({
			channel : "demo_channel",
			onSuccess : function() {
                          
				console.log("Cancel Subscription successfully.");

			},
			onFailed : function(error) {

				console.log("Cancel the subscrition failed, error code: "
						+ error.code + "error message: " + error.content);
			}

		});
	}
</script>
<title>goeasy</title>
</head>
<body> 
	<input type="button" value="publish" onclick="publishMessage()" />
	<input type="button" value="unsubscribe" onclick="unsubscribe()" />
	<input type="button" value="subscribe" onclick="subscribe()" />
</body>
</html>