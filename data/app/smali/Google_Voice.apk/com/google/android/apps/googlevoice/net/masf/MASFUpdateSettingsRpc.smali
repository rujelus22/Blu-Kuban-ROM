.class public Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFUpdateSettingsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

.field private responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

.field private final settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 31
    const-string v0, "/us"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    .line 26
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 32
    return-void
.end method


# virtual methods
.method protected declared-synchronized createRequestPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->setSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->toByteArray()[B
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDoNotDisturb()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 113
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEmailNotificationAddresses()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getEmailNotificationAddressList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getEmailNotificationAddressCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForwardingPhoneNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhoneNameList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhoneNameCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 65
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 5

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhoneCount()I

    move-result v2

    new-array v1, v2, [Lcom/google/android/apps/googlevoice/core/Phone;

    .line 74
    .local v1, phones:[Lcom/google/android/apps/googlevoice/core/Phone;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 75
    new-instance v2, Lcom/google/android/apps/googlevoice/core/Phone;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v3, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/Phone;-><init>(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)V

    aput-object v2, v1, v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 77
    :cond_20
    monitor-exit p0

    return-object v1

    .line 72
    .end local v0           #i:I
    .end local v1           #phones:[Lcom/google/android/apps/googlevoice/core/Phone;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMaxForwardingPhones()I
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getMaxForwardingPhones()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 82
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSMSNotificationPhoneNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsNotificationPhoneNameList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsNotificationPhoneNameCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScreenBehaviour()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasScreenBehavior()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getScreenBehavior()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->valueOf(I)Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    move-result-object v0

    .line 104
    .local v0, screenBehavior:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    if-eqz v0, :cond_1a

    .line 108
    .end local v0           #screenBehavior:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    goto :goto_18

    .line 100
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTemporaryForwardingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhone()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 88
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTemporaryForwardingNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneFormatted()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDIDAsCallerId()Z
    .registers 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->checkCompleted()V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getUseDidAsCallerId()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 119
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "responsePayload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->responseSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDoNotDisturb(Z)V
    .registers 3
    .parameter "doNotDisturb"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setDoNotDisturb(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmailNotificationAddresses([Ljava/lang/String;)V
    .registers 5
    .parameter "emailNotificationAddresses"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearEmailNotificationAddress()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addEmailNotificationAddress(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 129
    :cond_14
    monitor-exit p0

    return-void

    .line 125
    .end local v0           #i:I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setForwardingPhoneNames([Ljava/lang/String;)V
    .registers 5
    .parameter "forwardingPhoneNames"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearForwardingPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 143
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addForwardingPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 145
    :cond_14
    monitor-exit p0

    return-void

    .line 141
    .end local v0           #i:I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setForwardingPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 5
    .parameter "forwardingPhones"

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    const-string v1, "forwardingPhones"

    invoke-static {p1, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Phone;->toApiForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addForwardingPhone(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 154
    :cond_1d
    monitor-exit p0

    return-void

    .line 149
    .end local v0           #i:I
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSMSNotificationPhones([Ljava/lang/String;)V
    .registers 5
    .parameter "smsNotificationPhoneNames"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsNotificationPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addSmsNotificationPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 137
    :cond_14
    monitor-exit p0

    return-void

    .line 133
    .end local v0           #i:I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScreenBehaviour(Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;)V
    .registers 4
    .parameter "screenBehaviour"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    const-string v0, "screenBahaviour"

    invoke-static {p1, v0}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setScreenBehavior(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTemporaryForwardingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "temporaryForwardingNumber"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    const-string v0, "temporaryForwardingNumber"

    invoke-static {p1, v0}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setTemporaryForwardingPhone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDIDAsCallerID(Z)V
    .registers 3
    .parameter "useDIDAsCallerID"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;->settings:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setUseDidAsCallerId(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
