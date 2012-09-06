.class public Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFRegisterDestinationRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;


# instance fields
.field private final destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 5
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_GVP_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/rd"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    .line 28
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public addEventPayload(ILjava/lang/String;)V
    .registers 5
    .parameter "events"
    .parameter "payload"

    .prologue
    .line 58
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    .line 59
    .local v0, eventPayload:Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->setEvents(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    .line 60
    invoke-virtual {v0, p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->setPayload(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v1, v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->addEventPayload(Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 62
    return-void
.end method

.method protected createRequestPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->getEventPayloadCount()I

    move-result v0

    if-lez v0, :cond_41

    const/4 v0, 0x1

    :goto_9
    const-string v1, "eventPayload.length > 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->getAndroidPrimaryId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPrimaryId"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->getRoutingInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "routingInfo"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 42
    :cond_41
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidPrimaryId(Ljava/lang/String;)V
    .registers 3
    .parameter "androidPrimaryId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setAndroidPrimaryId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 67
    return-void
.end method

.method public setRoutingInfo(Ljava/lang/String;)V
    .registers 3
    .parameter "routingInfo"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setRoutingInfo(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 72
    return-void
.end method

.method public setType(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;->destination:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 77
    return-void
.end method
