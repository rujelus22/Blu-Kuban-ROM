.class public Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFCarrierProvisionRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;


# instance fields
.field private clientPhoneNumber:Ljava/lang/String;

.field private integratedPrimaryDID:Ljava/lang/String;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 32
    const-string v0, "/cp"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    .line 33
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
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->clientPhoneNumber:Ljava/lang/String;

    const-string v1, "clientPhoneNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->clientPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    const/4 v0, 0x1

    :goto_10
    const-string v1, "clientPhoneNumber.length > 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->clientPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->setClientPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->integratedPrimaryDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->integratedPrimaryDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->setIntegratedPrimaryDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    .line 44
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 38
    :cond_41
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getProvisionError()Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    .registers 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->hasProvisionError()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getProvisionError()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->valueOf(I)Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    move-result-object v0

    .line 63
    .local v0, code:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    if-eqz v0, :cond_15

    .line 67
    .end local v0           #code:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasProvisionError()Z
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->checkCompleted()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->hasProvisionError()Z

    move-result v0

    return v0
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
    .line 49
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    return-object v0
.end method

.method public setClientPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "clientPhoneNumber"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->clientPhoneNumber:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setIntegratedPrimaryDID(Ljava/lang/String;)V
    .registers 2
    .parameter "integratedPrimaryDID"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;->integratedPrimaryDID:Ljava/lang/String;

    .line 78
    return-void
.end method
