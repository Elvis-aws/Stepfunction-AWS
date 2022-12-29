
**************
Step Functions
**************
        - AWS Step Functions provides serverless orchestration for modern applications
        - Orchestration centrally manages a workflow by breaking it into multiple steps, adding flow logic, and
          tracking the inputs and outputs between the steps
        - As your applications execute, Step Functions maintains application state, tracking exactly which workflow step
          your application is in, and stores an event log of data that is passed between application components
        - That means that if networks fail or components hang, your application can pick up right where it left off

********
AWS Glue
********
        - AWS Glue is a serverless, scalable data integration service that makes it easier to discover, prepare, move,
          and integrate data from multiple sources for analytics, machine learning, and application development
        - AWS Glue provides all the capabilities needed for data integration, so you can gain insights and put your data
          to use in minutes instead of months
        - With AWS Glue, there is no infrastructure to set up or manage
        - You pay only for the resources consumed while your jobs are running

*************
Amazon Athena
*************
        - Amazon Athena is an interactive query service that makes it easy to analyze data directly in Amazon S3 using
          standard SQL
        - With a few clicks in the AWS Management Console, customers can point Athena at their data stored in S3 and
          begin using standard SQL to run interactive queries and get results in seconds
        - Athena is serverless, so there is no infrastructure to setup or manage, and customers pay only for the queries
          they run
        - You can use Athena to process logs, perform data analytics, and run interactive queries
        - Athena scales automatically – executing queries in parallel – so results are fast, even with large datasets
          and complex queries