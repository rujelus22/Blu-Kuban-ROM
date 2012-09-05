.class public abstract Lcom/samsung/swift/service/livenotifications/LiveNotifier;
.super Ljava/lang/Object;
.source "LiveNotifier.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final autoUnsubscribeTimeout:I = 0x258

.field private static final random:Ljava/util/Random; = null

.field private static final senderName:Ljava/lang/String; = "System"


# instance fields
.field private on:Z

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-class v0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->random:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->on:Z

    .line 120
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v5, "constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v1

    .line 125
    .local v1, mq:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->queueExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 127
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "admin queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not present, creating..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/samsung/swift/service/msgq/Queue;

    invoke-direct {v0}, Lcom/samsung/swift/service/msgq/Queue;-><init>()V

    .line 129
    .local v0, adminq:Lcom/samsung/swift/service/msgq/Queue;
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/msgq/Queue;->setId(Ljava/lang/String;)V

    .line 130
    const-string v4, "System"

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/msgq/Queue;->setCreatorClientId(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/msgq/Queue;->setOwnerToken(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/msgq/Queue;->setSubscriberToken(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/msgq/Queue;->setPublisherToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v8}, Lcom/samsung/swift/service/msgq/Queue;->setPersistent(Z)V

    .line 135
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->createQueue(Lcom/samsung/swift/service/msgq/Queue;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 137
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v5, "admin queue creation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0           #adminq:Lcom/samsung/swift/service/msgq/Queue;
    :cond_7c
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->queueExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 144
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not present, creating with token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v2, Lcom/samsung/swift/service/msgq/Queue;

    invoke-direct {v2}, Lcom/samsung/swift/service/msgq/Queue;-><init>()V

    .line 146
    .local v2, q:Lcom/samsung/swift/service/msgq/Queue;
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setId(Ljava/lang/String;)V

    .line 147
    const-string v4, "System"

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setCreatorClientId(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setOwnerToken(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setPublisherToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/msgq/Queue;->setPersistent(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setSubscriptionQueueId(Ljava/lang/String;)V

    .line 152
    const/16 v4, 0x258

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/msgq/Queue;->setAutoUnsubscribeTimeout(I)V

    .line 153
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->createQueue(Lcom/samsung/swift/service/msgq/Queue;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 155
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v5, "queue creation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v2           #q:Lcom/samsung/swift/service/msgq/Queue;
    :cond_e9
    const-string v4, "System"

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->isSubscribed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 162
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v5, "not subscribed to admin queue, subscribing..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v4

    const-string v5, "System"

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->adminQueueName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, subresult:I
    if-eqz v3, :cond_126

    .line 165
    sget-object v4, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to subscribe to admin queue. subscribe result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v3           #subresult:I
    :cond_126
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->countSubscribers(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_136

    .line 171
    iput-boolean v8, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->on:Z

    .line 173
    :cond_136
    return-void
.end method


# virtual methods
.method protected adminQueueName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adminq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public poll()V
    .registers 14

    .prologue
    const/4 v10, 0x0

    .line 206
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v9

    const-string v11, "System"

    const/16 v12, 0xff

    invoke-virtual {v9, v11, v10, v12}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->selectUnreadMessages(Ljava/lang/String;II)[Lcom/samsung/swift/service/msgq/Message;

    move-result-object v7

    .line 207
    .local v7, messages:[Lcom/samsung/swift/service/msgq/Message;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, acks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v7

    .local v1, arr$:[Lcom/samsung/swift/service/msgq/Message;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v5, :cond_f9

    aget-object v6, v1, v3

    .line 210
    .local v6, m:Lcom/samsung/swift/service/msgq/Message;
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got message on queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->queueId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->text()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :try_start_4a
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->text()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v4, jo:Lorg/json/JSONObject;
    const-string v9, "totalSubscribedClients"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 219
    .local v8, numSubscribedClients:I
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numSubscribedClients: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez v8, :cond_7d

    move v9, v10

    :goto_78
    iput-boolean v9, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->on:Z
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_7a} :catch_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_7a} :catch_bf

    .line 208
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v8           #numSubscribedClients:I
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 220
    .restart local v4       #jo:Lorg/json/JSONObject;
    .restart local v8       #numSubscribedClients:I
    :cond_7d
    const/4 v9, 0x1

    goto :goto_78

    .line 222
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v8           #numSubscribedClients:I
    :catch_7f
    move-exception v2

    .line 224
    .local v2, e:Lorg/json/JSONException;
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse JSON from admin queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->queueId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - message not a subscription notice?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Offending message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->text()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 227
    .end local v2           #e:Lorg/json/JSONException;
    :catch_bf
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse number of subscribed clients from admin queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->queueId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Offending message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/swift/service/msgq/Message;->text()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 234
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v6           #m:Lcom/samsung/swift/service/msgq/Message;
    :cond_f9
    sget-object v9, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Submitting acks for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " messages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v11

    const-string v12, "System"

    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v11, v12, v9}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->submitAckMessages(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 236
    return-void
.end method

.method protected abstract queueName()Ljava/lang/String;
.end method

.method protected sendMessage(Ljava/lang/String;)V
    .registers 7
    .parameter "messageText"

    .prologue
    .line 184
    iget-boolean v2, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->on:Z

    if-nez v2, :cond_c

    .line 185
    sget-object v2, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    const-string v3, "sendMessage: no subscribers, not sending message"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_b
    return-void

    .line 189
    :cond_c
    sget-object v2, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage: token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Lcom/samsung/swift/service/msgq/Message;

    invoke-direct {v1}, Lcom/samsung/swift/service/msgq/Message;-><init>()V

    .line 192
    .local v1, m:Lcom/samsung/swift/service/msgq/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/msgq/Message;->setId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, p1}, Lcom/samsung/swift/service/msgq/Message;->setText(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->queueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/msgq/Message;->setQueueId(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/msgq/Message;->setType(I)V

    .line 196
    const-string v2, "System"

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/msgq/Message;->setSenderClientId(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->token:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->postMessage(Lcom/samsung/swift/service/msgq/Message;Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, errcode:I
    sget-object v2, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify: post result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method
