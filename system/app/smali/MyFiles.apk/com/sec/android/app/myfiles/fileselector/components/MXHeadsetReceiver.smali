.class public Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MXHeadsetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;
    }
.end annotation


# static fields
.field public static MXHeadsetIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->MXHeadsetIntentFilter:Landroid/content/IntentFilter;

    .line 21
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->MXHeadsetIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "arg0"
    .parameter "i"

    .prologue
    .line 25
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;

    if-eqz v1, :cond_2d

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, act:Ljava/lang/String;
    const-string v1, "MXHeadsetReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 30
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;->onHeadsetUnplugged()V

    .line 32
    .end local v0           #act:Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method public setMXOnHeadsetReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;

    .line 36
    return-void
.end method
