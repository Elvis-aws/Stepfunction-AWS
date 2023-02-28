

**********
**********
        *******
        Crawler
        *******
            - The CRAWLER creates the metadata that allows GLUE and services such as ATHENA to view the S3 information
              as a database with tables. That is, it allows you to create the Glue Catalog. This way you can see the
              information that s3 has as a database composed of several tables. For example if you want to create a
              crawler you must specify the following fields:
                - Database --> Name of database Service role service-role/AWSGlueServiceRole Selected classifiers -->
                  Specify Classifier Include path --> S3 location
            - Glue Data Catalog basically is a meta-store for actual data. In other words it persists information
              about physical location of data, its schema, format and partitions which makes it possible to query
              actual data via Athena or to load it in Glue jobs