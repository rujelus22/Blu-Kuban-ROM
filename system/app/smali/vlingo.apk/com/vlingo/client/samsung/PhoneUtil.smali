.class public Lcom/vlingo/client/samsung/PhoneUtil;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static turnOnSpeakerphoneIfRequired(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 17
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 18
    .local v0, am:Landroid/media/AudioManager;
    const-string v1, "car_auto_start_speakerphone"

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_20

    .line 21
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 23
    :cond_20
    return-void
.end method
