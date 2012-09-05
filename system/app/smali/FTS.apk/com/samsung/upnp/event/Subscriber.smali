.class public Lcom/samsung/upnp/event/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"


# instance fields
.field private SID:Ljava/lang/String;

.field private deliveryHost:Ljava/lang/String;

.field private deliveryPath:Ljava/lang/String;

.field private deliveryPort:I

.field private deliveryURL:Ljava/lang/String;

.field private ifAddr:Ljava/lang/String;

.field private notifyCount:J

.field private subscriptionTime:J

.field private timeOut:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->SID:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->ifAddr:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPort:I

    .line 115
    iput-wide v1, p0, Lcom/samsung/upnp/event/Subscriber;->timeOut:J

    .line 145
    iput-wide v1, p0, Lcom/samsung/upnp/event/Subscriber;->subscriptionTime:J

    .line 159
    iput-wide v1, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    .line 40
    invoke-virtual {p0}, Lcom/samsung/upnp/event/Subscriber;->renew()V

    .line 41
    return-void
.end method


# virtual methods
.method public getDeliveryHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryPort()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPort:I

    return v0
.end method

.method public getDeliveryURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->ifAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyCount()J
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/upnp/event/Subscriber;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionTime()J
    .registers 3

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->subscriptionTime:J

    return-wide v0
.end method

.method public getTimeOut()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->timeOut:J

    return-wide v0
.end method

.method public incrementNotifyCount()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1

    .line 170
    iget-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 171
    iput-wide v4, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    .line 175
    :goto_f
    return-void

    .line 174
    :cond_10
    iget-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    goto :goto_f
.end method

.method public isExpired()Z
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, currTime:J
    iget-wide v5, p0, Lcom/samsung/upnp/event/Subscriber;->timeOut:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_e

    .line 138
    :cond_d
    :goto_d
    return v4

    .line 134
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/upnp/event/Subscriber;->getSubscriptionTime()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/samsung/upnp/event/Subscriber;->getTimeOut()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long v2, v5, v7

    .line 135
    .local v2, expiredTime:J
    cmp-long v5, v2, v0

    if-gez v5, :cond_d

    .line 136
    const/4 v4, 0x1

    goto :goto_d
.end method

.method public renew()V
    .registers 3

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/Subscriber;->setSubscriptionTime(J)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/Subscriber;->setNotifyCount(I)V

    .line 185
    return-void
.end method

.method public setDeliveryURL(Ljava/lang/String;)V
    .registers 4
    .parameter "deliveryURL"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    .line 86
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lcom/samsung/upnp/event/Subscriber;->deliveryPort:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 92
    .end local v0           #url:Ljava/net/URL;
    :goto_19
    return-void

    .line 91
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public setNotifyCount(I)V
    .registers 4
    .parameter "cnt"

    .prologue
    .line 166
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/upnp/event/Subscriber;->notifyCount:J

    .line 167
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 2
    .parameter "sid"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/upnp/event/Subscriber;->SID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSubscriptionTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/samsung/upnp/event/Subscriber;->subscriptionTime:J

    .line 153
    return-void
.end method

.method public setTimeOut(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/samsung/upnp/event/Subscriber;->timeOut:J

    .line 123
    return-void
.end method
