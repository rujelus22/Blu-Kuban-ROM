.class public Lcom/samsung/upnp/event/SubscriptionRequest;
.super Lcom/samsung/http/HTTPRequest;
.source "SubscriptionRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/http/HTTPRequest;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPRequest;)V
    .registers 2
    .parameter "httpReq"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/http/HTTPRequest;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->set(Lcom/samsung/http/HTTPRequest;)V

    .line 63
    return-void
.end method

.method private setService(Lcom/samsung/upnp/Service;)V
    .registers 9
    .parameter "service"

    .prologue
    .line 71
    if-nez p1, :cond_3

    .line 110
    :cond_2
    :goto_2
    return-void

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, eventSubURL:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/samsung/upnp/event/SubscriptionRequest;->setURI(Ljava/lang/String;Z)V

    .line 79
    const-string v5, ""

    .line 80
    .local v5, urlBaseStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 81
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_17

    .line 82
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_17
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_29

    .line 85
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v4

    .line 86
    .local v4, rootDev:Lcom/samsung/upnp/Device;
    if-eqz v4, :cond_29

    .line 87
    invoke-virtual {v4}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v5

    .line 91
    .end local v4           #rootDev:Lcom/samsung/upnp/Device;
    :cond_29
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3b

    .line 92
    :cond_31
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v4

    .line 93
    .restart local v4       #rootDev:Lcom/samsung/upnp/Device;
    if-eqz v4, :cond_3b

    .line 94
    invoke-virtual {v4}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 98
    .end local v4           #rootDev:Lcom/samsung/upnp/Device;
    :cond_3b
    if-eqz v5, :cond_43

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4a

    .line 99
    :cond_43
    invoke-static {v1}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 100
    move-object v5, v1

    .line 102
    :cond_4a
    if-eqz v5, :cond_2

    .line 104
    invoke-static {v5}, Lcom/samsung/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, reqHost:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, reqPort:I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/upnp/event/SubscriptionRequest;->setHost(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->setRequestHost(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/event/SubscriptionRequest;->setRequestPort(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    const-string v1, "NT"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, nt:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 218
    const-string v0, ""

    .line 219
    .end local v0           #nt:Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    const-string v1, "SID"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, sid:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 193
    const-string v0, ""

    .line 194
    .end local v0           #sid:Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 233
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/event/Subscription;->getTimeout(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCallback()Z
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, callback:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasNT()Z
    .registers 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getNT()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, nt:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasSID()Z
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, sid:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public post()Lcom/samsung/upnp/event/SubscriptionResponse;
    .registers 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 252
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    new-instance v1, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v1, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>(Lcom/samsung/http/HTTPResponse;)V

    return-object v1
.end method

.method public post(Lcom/samsung/upnp/event/SubscriptionResponse;)V
    .registers 2
    .parameter "subRes"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    .line 243
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 165
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 142
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setRenewRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V
    .registers 6
    .parameter "service"
    .parameter "uuid"
    .parameter "timeout"

    .prologue
    .line 123
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setService(Lcom/samsung/upnp/Service;)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p3, p4}, Lcom/samsung/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 127
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 185
    const-string v0, "SID"

    invoke-static {p1}, Lcom/samsung/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setSubscribeRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V
    .registers 6
    .parameter "service"
    .parameter "callback"
    .parameter "timeout"

    .prologue
    .line 114
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setService(Lcom/samsung/upnp/Service;)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->setCallback(Ljava/lang/String;)V

    .line 117
    const-string v0, "upnp:event"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->setNT(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p3, p4}, Lcom/samsung/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 119
    return-void
.end method

.method public final setTimeout(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 228
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/samsung/upnp/event/Subscription;->toTimeoutHeaderString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setUnsubscribeRequest(Lcom/samsung/upnp/Service;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 131
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setService(Lcom/samsung/upnp/Service;)V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 134
    return-void
.end method
