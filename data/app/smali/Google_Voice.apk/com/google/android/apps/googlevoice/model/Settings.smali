.class public Lcom/google/android/apps/googlevoice/model/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getDoNotDisturb()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEmailNotificationAddresses()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getEmailNotificationAddressList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getEmailNotificationAddressCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForwardingPhoneNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhoneNameList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhoneCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhoneList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->createPhoneArray([Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)[Lcom/google/android/apps/googlevoice/core/Phone;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxForwardingPhones()I
    .registers 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getMaxForwardingPhones()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScreenBehavior()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->hasScreenBehavior()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getScreenBehavior()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->valueOf(I)Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result-object v0

    .line 57
    .local v0, screenBehavior:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    if-eqz v0, :cond_17

    .line 61
    .end local v0           #screenBehavior:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_15

    .line 54
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSmsNotificationPhoneNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getSmsNotificationPhoneNameList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getSmsNotificationPhoneNameCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTemporaryForwardingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getTemporaryForwardingPhone()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTemporaryForwardingNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getTemporaryForwardingPhoneFormatted()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDidAsCallerId()Z
    .registers 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getUseDidAsCallerId()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadFromApiSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)V
    .registers 3
    .parameter "apiSettings"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 135
    return-void
.end method

.method public saveToApiSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setDoNotDisturb(Z)V
    .registers 3
    .parameter "doNotDisturb"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setDoNotDisturb(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmailNotificationAddresses([Ljava/lang/String;)V
    .registers 7
    .parameter "emailNotificationAddresses"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearEmailNotificationAddress()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 74
    if-eqz p1, :cond_17

    .line 75
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 76
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addEmailNotificationAddress(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 79
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_17
    monitor-exit p0

    return-void

    .line 73
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setForwardingPhoneNames([Ljava/lang/String;)V
    .registers 7
    .parameter "forwardingPhoneNames"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearForwardingPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 92
    if-eqz p1, :cond_17

    .line 93
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 94
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addForwardingPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 97
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_17
    monitor-exit p0

    return-void

    .line 91
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setForwardingPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 8
    .parameter "forwardingPhones"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 101
    if-eqz p1, :cond_1b

    .line 102
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    .line 103
    .local v3, p:Lcom/google/android/apps/googlevoice/core/Phone;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Phone;->toApiForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addForwardingPhone(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 106
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Lcom/google/android/apps/googlevoice/core/Phone;
    :cond_1b
    monitor-exit p0

    return-void

    .line 100
    :catchall_1d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setMaxForwardingPhones(I)V
    .registers 3
    .parameter "maxForwardingPhones"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setMaxForwardingPhones(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenBehaviour(Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;)V
    .registers 4
    .parameter "screenBehaviour"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setScreenBehavior(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmsNotificationPhoneNames([Ljava/lang/String;)V
    .registers 7
    .parameter "smsNotificationPhoneNames"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsNotificationPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 83
    if-eqz p1, :cond_17

    .line 84
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 85
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v4, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->addSmsNotificationPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 88
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_17
    monitor-exit p0

    return-void

    .line 82
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setTemporaryForwardingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "temporaryForwardingNumber"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setTemporaryForwardingPhone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTemporaryForwardingNumberFormatted(Ljava/lang/String;)V
    .registers 3
    .parameter "temporaryForwardingNumberFormatted"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setTemporaryForwardingPhoneFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDidAsCallerId(Z)V
    .registers 3
    .parameter "useDidAsCallerId"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/Settings;->apiSettingsBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setUseDidAsCallerId(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
