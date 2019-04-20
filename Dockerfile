FROM golang:alpine as go

RUN apk add --update ca-certificates git curl jq py-pip bash && pip install yq

RUN go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira

FROM alpine:3.8

RUN apk add --update ca-certificates git curl jq py-pip bash && pip install yq

COPY --from=go /go/bin/jira /usr/local/bin/jira

ENTRYPOINT [ "jira" ]