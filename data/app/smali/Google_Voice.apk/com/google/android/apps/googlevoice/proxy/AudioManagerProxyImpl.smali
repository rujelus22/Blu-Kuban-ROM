.class public Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;
.super Ljava/lang/Object;
.source "AudioManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxy;


# instance fields
.field private final delegate:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .registers 2
    .parameter "audioManager"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    .line 23
    return-void
.end method


# virtual methods
.method public getDefaultRingtone(Lcom/google/android/apps/googlevoice/proxy/ContextProxy;)Lcom/google/android/apps/googlevoice/proxy/RingtoneProxy;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, ringtoneUri:Landroid/net/Uri;
    if-nez v1, :cond_d

    .line 58
    :cond_c
    :goto_c
    return-object v2

    .line 57
    :cond_d
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 58
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_c

    new-instance v2, Lcom/google/android/apps/googlevoice/util/Delegator;

    invoke-direct {v2}, Lcom/google/android/apps/googlevoice/util/Delegator;-><init>()V

    const-class v3, Lcom/google/android/apps/googlevoice/proxy/RingtoneProxy;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/googlevoice/util/Delegator;->adapt(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/proxy/RingtoneProxy;

    goto :goto_c
.end method

.method public getDelegate()Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getRingerMode()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 48
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 3
    .parameter "vibrateType"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;->delegate:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    return v0
.end method
