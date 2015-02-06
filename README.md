# Add Logentries Agent to Elastic Beanstalk app

## Configuration

Two environment variables are required:

* `NODE_ENV`: node environment "stage", "production", etc.  Used for prefixing host names.
* `LOGENTRIES_KEY`: log entries key

## Enhancements and Known Issues

* How to better force / handle restart? I've noticed that logs may not begin forwarding until a second deploy or restart after the initial run on new EB environment.
* The agent doesn't forward CPU stats.  This could be a limit of the le agent on AWS EB AMI. I haven't researched further.

## Resources

* [Logentries Agent Installation](https://logentries.com/doc/agent/#installation)
* [Customizing Elastic Beanstalk EC2 Instances](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customize-containers-ec2.html)
