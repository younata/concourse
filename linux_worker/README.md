# Concourse Worker

I run concourse from a single mac mini (2014, top of the line at the time). This is tooling I wrote for the linux side of that. Intended to be generic enough for when I decide to say 'fuck it' and set up a linux box to be the worker.

## Usage

Add the following files to ansible/roles/concourse/files

- `host_key` is the public key for the tsa host file (your web node)
- `worker_key` is the private key for your worker, which should already be registered with the web node.

My usages only requires one linux worker at a time, so I don't really care to better automate this. I do care to automate setting up and destroying worker VMs.

In addition, you need to modify the IP address that [`ansible/roles/concourse/files/run_concourse`](ansible/roles/concourse/files/run_concourse) uses to chat with the web node.
