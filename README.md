Prepate ECR registry via AWS CLI:
aws ecr create-repository --repository-name lnt-poc/php-fpm --image-tag-mutability IMMUTABLE --region us-east-2

aws ecr put-image-tag-mutability --repository-name lnt-poc/app  --image-tag-mutability IMMUTABLE --region us-west-2

Check details for tag immutability https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html

aws ecr get-login --no-include-email --region=us-west-2

Write base URL for ECR in 'registry' file

>cd php-fpm

>../build.sh latest
See output and check PHP version,
then define TAG=7.1.26-1(for example) in 'repo' file
and rebuild with no param and TAG form file will be used

`git rev-parse --short=10 HEAD` for detect git hash

>../build.sh 

>../push.sh
