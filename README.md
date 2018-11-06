 First of all thanks for even getting this far.. Before you is my attempt at a project in a completely new language to me as well as I haven't coded in almost 8 years.. I recently broke my feet.. My right ankle and left foot and I just started walking.. I did this on a motorcycle in Aug 2018 about a month or so I decided to see whats changed in the almost 10 years since I left the industy in NC anyways.. This is my story and my format.. I used the MIT license to do what it says please and send me the money.. I'm living on the kindness and at the mercy of others and I dont want to go back Live event production I want to get back behind the key board, anyways My book is in the code in the comments.. I'll try to get into a format to if you get it early it'll be easier to catch up.. probably less talking as time goes by.. My mothers friend suggest I write a book.. So I am.. This is the Prelude.. Just here.. Are there other book writers who distribute they books in the form of code? This is a profile website to showcase my development skills.. It'll eventually be a lot more.. I love Rails BTW.. and these template engines and libraries.. I used to write that in PHP and C back in the day.. But thats covered ahead.. This is my story my one big project and it's going to evolve and change.. 


and this is not just an app.. It's also a book in an attempt to distribute a book in the form of a code repository
and since I'm letting you follow the MIT version I hope when possible you help me out.. 
Anyways poke around and start near the top .. If you know how a rails app works you'll see how the data flows and hopefully I can string a story out of it.. I do need a job as the story goes.. so lets talk about how I can help you out. Go build the app or goto damonhopkins.herokuapp.com or
damonhopkins-test.herokuapp.com to see where I'm at.. :) you can read it through git hub as a seies of diffs Maybe I'll try that first..
and mabe you read the commits and figure it out..

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
