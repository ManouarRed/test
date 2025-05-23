This is a minimal Flask application set up for shared hosting with Git deployment.

Deployment steps

Push this repository to your Git remote.

In your hosting panel, select "Add an application from GIT" and point to this repo.

Set the post-deploy script to deploy.sh with interpreter bash.

Access your site on port 8000 (or configure a reverse proxy/port mapping).

That's it! Enjoy your Hello World app.
