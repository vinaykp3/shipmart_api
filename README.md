# README

* API is designed by keeping in mind the response should include the error messages in it's body so that user will come to know what went wrong.

* Prerequisites
	
	- Make sure ruby 2.5.1 is installed
	- Navigate to project directory
	- run: gem install bundle(for first time)
	- bundle install

* Database creation and initilization
	rake db:create
	rake db:migrate
	rake db:seed

* Run Server and api access
	rails s
	hit the end point http://localhost:3000/user/purchases?email=<refer_domain.yml>

	errors:
		if no params passed
		if user email not found in the system

* How to run the test suite
	- rspec spec
