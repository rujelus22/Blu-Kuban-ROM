.class public Lcom/vlingo/client/android/core/common/AndroidSharedInstanceManager;
.super Lcom/vlingo/client/core/common/SharedInstanceManager;
.source "AndroidSharedInstanceManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vlingo/client/core/common/SharedInstanceManager;-><init>()V

    return-void
.end method


# virtual methods
.method public audioDeviceSharedInstance_get()Lcom/vlingo/client/core/audio/AudioDevice;
    .registers 2

    .prologue
    .line 19
    invoke-static {}, Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;->getInstance()Lcom/vlingo/client/android/core/audio/AndroidAudioDevice;

    move-result-object v0

    return-object v0
.end method

.method public audioDeviceSharedInstance_init()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public httpSharedInstance_destroy()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public httpSharedInstance_get()Lcom/vlingo/client/core/http/HttpManager;
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/vlingo/client/android/core/http/AndroidHttpManager;->getInstance()Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    move-result-object v0

    return-object v0
.end method

.method public httpSharedInstance_init()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public settingsSharedInstance_get()Lcom/vlingo/client/core/settings/SettingsRepository;
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public settingsSharedInstance_init(JLcom/vlingo/client/core/settings/SettingsInitializer;)V
    .registers 4
    .parameter "persistID"
    .parameter "initilizer"

    .prologue
    .line 50
    return-void
.end method
