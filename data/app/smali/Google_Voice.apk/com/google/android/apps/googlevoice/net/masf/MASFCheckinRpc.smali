.class public Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFCheckinRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/CheckinRpc;


# instance fields
.field private checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

.field private checkinToken:Ljava/lang/String;

.field private final destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 5
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_GVP_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/in"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 24
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 34
    return-void
.end method


# virtual methods
.method protected createRequestPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->setReason(I)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->checkinToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->setToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "responsePayload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidPrimaryId(Ljava/lang/String;)V
    .registers 3
    .parameter "androidPrimaryId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setAndroidPrimaryId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 54
    return-void
.end method

.method public setCheckinReason(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 69
    return-void
.end method

.method public setCheckinToken(Ljava/lang/String;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->checkinToken:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRoutingInfo(Ljava/lang/String;)V
    .registers 3
    .parameter "routingInfo"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setRoutingInfo(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 59
    return-void
.end method

.method public setType(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 64
    return-void
.end method
