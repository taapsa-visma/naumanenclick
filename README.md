# naumanen.click

Everything for naumanen.click website

## Next steps

1. Build a Github pipeline, so that when building the production build it is uploaded to S3 bucket and Cloudfront invalidates cache (and automatically gets the latest from S3)
   1. Mikä homma Block public access (bucket settings)?
      1. eikö IAM rooli mikä lisätty pitäisi olla riittävästi ja nää voi olla kaikki päällä
         1. vai pitääkö S3 bucketiin jotenkin vielä työntää se IAM policy??
