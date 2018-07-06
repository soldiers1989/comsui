package com.suidifu.microservice.config;

import com.suidifu.matryoshka.delayPosition.handler.DelayProcessingTaskCacheHandler;
import com.suidifu.matryoshka.delayPosition.handler.DelayTaskConfigCacheHandler;
import com.suidifu.matryoshka.delayPosition.handler.impl.DelayProcessingTaskCacheHandlerImpl;
import com.suidifu.matryoshka.delayPosition.handler.impl.DelayTaskConfigCacheHandlerImpl;
import com.suidifu.owlman.microservice.handler.impl.BankAccountCacheHandlerImpl;
import com.suidifu.owlman.microservice.ledger.template.CachecableLedgerTemplateParser;
import com.suidifu.watchman.message.amqp.config.RabbitMqConnectionConfig;
import com.suidifu.watchman.message.amqp.config.RabbitMqQueueConfig;
import com.suidifu.watchman.message.amqp.consumer.TopicConsumer;
import com.zufangbao.sun.ledgerbook.BankAccountCache;
import com.zufangbao.sun.ledgerbookv2.handler.LedgerCacheHandler;
import com.zufangbao.sun.ledgerbookv2.handler.impl.LedgerCacheHandlerImpl;
import com.zufangbao.sun.ledgerbookv2.service.impl.CacheableInsideAccountServiceImpl;
import java.util.ArrayList;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author louguanyang at 2018/2/27 17:13
 * @mail louguanyang@hzsuidifu.com
 */
@Configuration
public class BeanConfig {

  @Bean(name = "cfg_rabbit_mq_queue_config")
  @ConfigurationProperties(prefix = "message.rabbitmq.queue")
  public RabbitMqQueueConfig rabbitMqQueueConfig() {
    return new RabbitMqQueueConfig();
  }

  @Bean(name = "cfg_rabbit_mq_connection_config")
  @ConfigurationProperties(prefix = "message.rabbitmq.connection")
  public RabbitMqConnectionConfig rabbitMqConnectionConfig() {
    return new RabbitMqConnectionConfig();
  }

  @Bean
  public TopicConsumer topicConsumer() {
    TopicConsumer topicConsumer = new TopicConsumer();
    topicConsumer.setRabbitMqConnectionConfig(rabbitMqConnectionConfig());
    topicConsumer.setRabbitMqQueueList(new ArrayList<RabbitMqQueueConfig>() {{
      add(rabbitMqQueueConfig());
    }});
    return topicConsumer;
  }

  @Bean(name = "delayProcessingTaskCacheHandler")
  public DelayProcessingTaskCacheHandler delayProcessingTaskCacheHandler() {
    return new DelayProcessingTaskCacheHandlerImpl();
  }

  @Bean(name = "delayTaskConfigCacheHandler")
  public DelayTaskConfigCacheHandler delayTaskConfigCacheHandler() {
    return new DelayTaskConfigCacheHandlerImpl();
  }

  @Bean(name = "ledgerCacheHandler")
  public LedgerCacheHandler ledgerCacheHandler() {
    return new LedgerCacheHandlerImpl();
  }

  @Bean(name = "insideAccountService")
  public com.zufangbao.sun.ledgerbookv2.service.InsideAccountService insideAccountService() {
    return new CacheableInsideAccountServiceImpl();
  }

  @Bean(name = "ledgerTemplateParser")
  public com.zufangbao.sun.ledgerbookv2.handler.impl.LedgerTemplateParser ledgerTemplateParser() {
    return new CachecableLedgerTemplateParser();
  }

  @Bean
  public BankAccountCache bankAccountCache() {
    return new BankAccountCacheHandlerImpl();
  }
}
