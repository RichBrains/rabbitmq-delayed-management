FROM rabbitmq:3.7-management
ADD https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip rabbitmq_delayed_message_exchange.zip
RUN apt-get update && apt-get install -y unzip && mkdir -p /usr/lib/rabbitmq/plugins/ && \ 
        unzip rabbitmq_delayed_message_exchange.zip -d /usr/lib/rabbitmq/plugins/ \
        && chown -R rabbitmq:rabbitmq /usr/lib/rabbitmq/plugins/ \
        && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange && rabbitmq-plugins enable --offline rabbitmq_top

