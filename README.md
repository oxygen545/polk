Website for a play for a friend

ActiveStorage Heroku Information:

One of the marquee features of Active Storage is the ability to use “previews” of non-image attachments. Specifically you can preview PDFs and Videos. To use this feature your application needs access to system resources that know how to work with these files. By default Rails ships with support with poppler for PDF previews, and ffmpeg for Video previews. These system dependencies are not available by default on Heroku.

If you want the ability to preview these types of files with Active Support you need to run:

heroku buildpacks:add -i 1 https://github.com/heroku/heroku-buildpack-activestorage-preview
Once you’ve done this, you need to deploy again to get the binaries. You can verify that the dependencies are installed by running which ffmpeg on the command line. If there is no output then the operation was not performed correctly. If you see a result then the binaries are ready to be used:

Errno::ENOENT (No such file or directory - ffmpeg):


youll need a bunch of ENV variables set on the production server as well as the development server:

here's the config for a heroku hosted server.. I guess this is also a how to guide in the making... I do need to add docs.. But I need to build a low$ site before a $$$$$ server anways, set these ENV variables:

GOOGLE_APPLICATION_CREDENTIALS=
GCS_BUCKET=
MAILER_URL=
SITE_TITLE=
OMNIAUTH_GOOGLE_ID=
GMAIL_DOMAIN_NAME=
GOOGLE_PRIVATE_KEY=
OMMIAUTH_GOOGLE_SECRET=
GMAIL_USERNAME=
GMAIL_PASSWORD=
SECRET_KEY=

MESSAGE_ADMIN_EMAIL=
MESSAGE_ADMIN_NAME=
SITE_AUTHOR=
SITE_COMPANY=