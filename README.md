# Concourse

Scripts and Helpers to make running concourse easier.

I run a [concourse](https://concourse-ci.org/) instance in my own apartment, these are a list of helpers, scripts and other configuration for running that.

- [Linux Worker](linux_worker) is a vagrantfile and ansible playbook for running a linux worker.
- [Tasks](tasks) is a list of concourse tasks I use.
- [Pipelines](pipelines) is a list of pipelines I use, and a rakefile for automatically managing them.
- [web](web) is the configuration I use for running the web node of my concourse instance.
- [darwin](darwin) is the configuration I use for running a darwin worker.
