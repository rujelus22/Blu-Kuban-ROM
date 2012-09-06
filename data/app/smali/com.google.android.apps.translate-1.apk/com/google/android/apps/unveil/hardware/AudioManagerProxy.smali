.class public Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;
.super Ljava/lang/Object;
.source "AudioManagerProxy.java"


# instance fields
.field private audioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_6

    .line 25
    :goto_5
    return-void

    .line 24
    :cond_6
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;->audioManager:Landroid/media/AudioManager;

    goto :goto_5
.end method


# virtual methods
.method public playSoundEffect(I)V
    .registers 3
    .parameter "fx"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 33
    return-void
.end method
