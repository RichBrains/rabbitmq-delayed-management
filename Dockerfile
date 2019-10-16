FROM rabbitmq:3.7-management
ADD rabbitmq_lvc_exchange-3.8.0.ez
RUN mkdir -p /usr/lib/rabbitmq/plugins/ && \ 
        mv rabbitmq_lvc_exchange-3.8.0.ez /usr/lib/rabbitmq/plugins/ \
        && chown -R rabbitmq:rabbitmq /usr/lib/rabbitmq/plugins/ \
        && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange && rabbitmq-plugins enable --offline rabbitmq_top

