Prepate ECR registry via AWS CLI:
aws ecr create-repository --repository-name lnt-poc/php-fpm

aws ecr get-login --no-include-email

Write base URL for ECR in 'registry' file

>cd php-fpm

>../build.sh latest
See output and check PHP version,
then define TAG=7.1.26-1(for example) in 'repo' file
and rebuild with no param and TAG form file will be used

>../build.sh 

>../push.sh
