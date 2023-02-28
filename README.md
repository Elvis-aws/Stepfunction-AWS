# Serverless example to process all results from S3 data fetched in Athena Query using Step Functions. 

![Concept](./sf-athena-glue.png)

This serverless pattern uses AWS Athena allows to analyze data in Amazon S3 using standard SQL. 
A Glue crawler creates a database table from the S3 data which is queried by Athena. 
Step Function can be leveraged to query as well as process each result in this data received from Athena with the help 
of **NextToken**.

Athena is out-of-the-box integrated with AWS Glue Data Catalog, allowing you to create a unified metadata repository 
across various services, crawl data sources to discover schemas and populate your Catalog with new and modified table 
and partition definitions, and maintain schema versioning. It is easy to use. Simply point to your data in Amazon S3, 
define the schema, and start querying using standard SQL. Most results are delivered within seconds.

## Deployment Instructions

1. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy --guided
    ```
1. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions.


## Testing

1. Go to the *agawcrawler* names S3Bucket and upload the sample data csv file

2. Go to the Glue Crawler page and run the newly created Crawler *testcrawler*. This will scan the S3 bucket data and 
   automatically create tables out it.

3. Use the following dummy JSON payload to run your Step function execution:
    ```JSON
    {
        "key1": "value1",
        "key2": "value2",
        "key3": "value3"
    }
    ```
4. Observe the logs of the step function execution to verify if all the results fetched by the Athena query is processed or not.

## Cleanup

 1. For deleting the stack you can use sam delete from SAM CLI -
    ```
    sam delete
    ```

----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0
