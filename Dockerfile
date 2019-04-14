FROM golang

RUN go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira

ENTRYPOINT [ "jira" ]