.class public Lcom/samsung/upnp/event/SubscriptionResponse;
.super Lcom/samsung/http/HTTPResponse;
.source "SubscriptionResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 35
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->setServer(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPResponse;)V
    .registers 2
    .parameter "httpRes"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPResponse;-><init>(Lcom/samsung/http/HTTPResponse;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 88
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/event/Subscription;->getTimeout(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setErrorResponse(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 60
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->setContentLength(J)V

    .line 61
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 69
    const-string v0, "SID"

    invoke-static {p1}, Lcom/samsung/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setTimeout(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 83
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/samsung/upnp/event/Subscription;->toTimeoutHeaderString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
