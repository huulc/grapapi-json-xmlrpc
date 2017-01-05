Grape on Rails
==============

[![Build Status](https://travis-ci.org/ruby-grape/grape-on-rails.svg?branch=master)](https://travis-ci.org/ruby-grape/grape-on-rails)
[![Dependency Status](https://gemnasium.com/ruby-grape/grape-on-rails.svg)](https://gemnasium.com/ruby-grape/grape-on-rails)
[![Code Climate](https://codeclimate.com/github/ruby-grape/grape-on-rails.svg)](https://codeclimate.com/github/ruby-grape/grape-on-rails)

A [Grape](http://github.com/ruby-grape/grape) API mounted on Rails.

* [ping](app/api/acme/ping.rb): a hello world `GET` API
* [post](app/api/acme/post.rb): post JSON data
* [raise](app/api/acme/raise.rb): raise an error, Rails handling exceptions
* [protected](app/api/acme/protected.rb): API protected with rudimentary Basic Authentication

See
---

An instance of this app is running on [grape-on-rails.herokuapp.com](http://grape-on-rails.herokuapp.com).

Run
---

```
bundle install
rails s
```

Try http://localhost:3000/api/ping or http://localhost:3000/api/protected/ping with _username_ and _password_.


localhost:3010/extapi/xmlrpc?version=1.0
params:
```
<?xml version="1.0" encoding="utf-8"?>
<methodCall>
	<methodName>MOSE.MAIL.USER.authByMailAccount</methodName>
	<params>
		<param>
			 <value>
				  <struct>
					   <member>
							<name>ApiId</name>
							<value>
							 <string>1</string>
							</value>
					   </member>
					   <member>
							<name>ApiPasswd</name>
							<value>
							 <string>AAAA</string>
							</value>
					   </member>
					   <member>
							<name>EmailAddress</name>
							<value>
							 <string>test@mail.com</string>
							</value>
					   </member>
					   <member>
							<name>EmailPasswd</name>
							<value>
							 <string>PWWWWWW</string>
							</value>
					   </member>
				  </struct>
			 </value>
		</param>
	</params>
</methodCall>
```

localhost:3010/xml-rpc/kpdapi.cgi
params:
```
<?xml version="1.0" encoding="utf-8"?>
<methodCall>
	<methodName>MOSE.MAIL.USER.authByMailAccount</methodName>
	<params>
		<param>
			 <value>
				  <struct>
					   <member>
							<name>ApiId</name>
							<value>
							 <string>1</string>
							</value>
					   </member>
					   <member>
							<name>ApiPasswd</name>
							<value>
							 <string>AAAA</string>
							</value>
					   </member>
					   <member>
							<name>EmailAddress</name>
							<value>
							 <string>test@mail.com</string>
							</value>
					   </member>
					   <member>
							<name>EmailPasswd</name>
							<value>
							 <string>PWWWWWW</string>
							</value>
					   </member>
				  </struct>
			 </value>
		</param>
	</params>
</methodCall>
```



