# README

This README would normally document whatever steps are necessary to get the
application up and running.

Create and migrate database

* rails db:create
* rails db:migrate

Start server

* rails s

To create test webhook

* curl -X POST -d "webhook[name]=first_hook&webhook[message]=first_hook_created" http://localhost:3000/webhooks

Start Rails Console

* rails c

Invoke the job

* Delayed::Job.last.invoke_job
