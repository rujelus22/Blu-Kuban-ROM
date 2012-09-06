.class public Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFCheckCarrierProvisioningRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 30
    const-string v0, "/ccp"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    .line 31
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
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->phoneNumber:Ljava/lang/String;

    const-string v1, "phoneNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    const/4 v0, 0x1

    :goto_10
    const-string v1, "phoneNumber.length > 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 36
    :cond_32
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dataDeletedWhenProvisioned()Z
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDataDeletedWhenProvisioned()Z

    move-result v0

    return v0
.end method

.method public getCheckedPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionError()Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    .registers 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasProvisionError()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getProvisionError()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->valueOf(I)Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    move-result-object v0

    .line 64
    .local v0, code:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    if-eqz v0, :cond_15

    .line 68
    .end local v0           #code:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasAccountAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasAccountAlreadyProvisioned()Z

    move-result v0

    return v0
.end method

.method public hasAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasAlreadyProvisioned()Z

    move-result v0

    return v0
.end method

.method public hasDataDeletedWhenProvisioned()Z
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasDataDeletedWhenProvisioned()Z

    move-result v0

    return v0
.end method

.method public hasProvisionError()Z
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasProvisionError()Z

    move-result v0

    return v0
.end method

.method public hasProvisionable()Z
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasProvisionable()Z

    move-result v0

    return v0
.end method

.method public hasVerifyNeeded()Z
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasVerifyNeeded()Z

    move-result v0

    return v0
.end method

.method public isAccountAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getAccountAlreadyProvisioned()Z

    move-result v0

    return v0
.end method

.method public isAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getAlreadyProvisioned()Z

    move-result v0

    return v0
.end method

.method public isProvisionable()Z
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getProvisionable()Z

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
    .line 44
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->phoneNumber:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public verifyNeeded()Z
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->checkCompleted()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getVerifyNeeded()Z

    move-result v0

    return v0
.end method
