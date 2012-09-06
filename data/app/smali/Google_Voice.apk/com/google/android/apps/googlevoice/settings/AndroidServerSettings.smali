.class public Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;
.super Ljava/lang/Object;
.source "AndroidServerSettings.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/settings/ServerSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$1;,
        Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;
    }
.end annotation


# instance fields
.field private final database:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

.field private settings:Lcom/google/android/apps/googlevoice/model/Settings;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V
    .registers 5
    .parameter "context"
    .parameter "voiceService"
    .parameter "backgroundThreadFactory"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 41
    new-instance v0, Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/model/Settings;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    .line 43
    new-instance v0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    invoke-direct {v0, p1, p3}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->database:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->updateSettingsFromRpcResult(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;)V

    return-void
.end method

.method private clonePhones([Lcom/google/android/apps/googlevoice/core/Phone;)[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 4
    .parameter "phones"

    .prologue
    .line 189
    if-eqz p1, :cond_17

    .line 190
    invoke-virtual {p1}, [Lcom/google/android/apps/googlevoice/core/Phone;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Lcom/google/android/apps/googlevoice/core/Phone;

    .line 191
    .restart local p1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 192
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Phone;->clone()Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v1

    aput-object v1, p1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 195
    .end local v0           #index:I
    :cond_17
    return-object p1
.end method

.method private cloneStrings([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "strings"

    .prologue
    .line 182
    if-eqz p1, :cond_8

    .line 183
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/String;

    .line 185
    .restart local p1
    :cond_8
    return-object p1
.end method

.method private updateSettingsFromRpcResult(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getUseDIDAsCallerId()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setUseDidAsCallerId(Z)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getDoNotDisturb()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setDoNotDisturb(Z)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getScreenBehaviour()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setScreenBehaviour(Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getMaxForwardingPhones()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setMaxForwardingPhones(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getTemporaryForwardingNumberFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setTemporaryForwardingNumberFormatted(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getTemporaryForwardingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setTemporaryForwardingNumber(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getForwardingPhoneNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setForwardingPhoneNames([Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->clonePhones([Lcom/google/android/apps/googlevoice/core/Phone;)[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setForwardingPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getSMSNotificationPhoneNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setSmsNotificationPhoneNames([Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getEmailNotificationAddresses()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/model/Settings;->setEmailNotificationAddresses([Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->database:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->saveToDatabase(Lcom/google/android/apps/googlevoice/model/Settings;)V

    .line 142
    return-void
.end method


# virtual methods
.method public fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    .registers 5
    .parameter "onCompleted"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v0

    .line 114
    .local v0, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    new-instance v1, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;-><init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->submit(Ljava/lang/Runnable;)V

    .line 115
    return-object v0
.end method

.method getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->database:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v0

    return-object v0
.end method

.method public getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getDoNotDisturb()Z

    move-result v0

    return v0
.end method

.method public getEmailNotificationAddresses()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getEmailNotificationAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingPhoneNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getForwardingPhoneNames()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->clonePhones([Lcom/google/android/apps/googlevoice/core/Phone;)[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getMaxForwardingPhones()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getMaxForwardingPhones()I

    move-result v0

    return v0
.end method

.method public getScreenBehaviour()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getScreenBehavior()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNotificationPhoneNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getSmsNotificationPhoneNames()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->cloneStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryForwardingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getTemporaryForwardingNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryForwardingNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getTemporaryForwardingNumberFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDIDAsCallerId()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/Settings;->getUseDidAsCallerId()Z

    move-result v0

    return v0
.end method

.method public hasForwardingPhones()Z
    .registers 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/model/Settings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 73
    .local v0, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public tryToLoadSettingsFromDatabase()V
    .registers 4

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->database:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->settings:Lcom/google/android/apps/googlevoice/model/Settings;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->loadFromDatabase(Lcom/google/android/apps/googlevoice/model/Settings;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 53
    :goto_7
    return-void

    .line 49
    :catch_8
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Could not load server settings"

    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public update(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V
    .registers 5
    .parameter "updateSettingsRpc"
    .parameter "onCompleted"

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;-><init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$1;)V

    invoke-interface {p1, v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->submit(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
