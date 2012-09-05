.class public Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MXBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;
    }
.end annotation


# static fields
.field public static MXBroadcastIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 29
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "arg0"
    .parameter "i"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;

    if-eqz v1, :cond_2d

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, act:Ljava/lang/String;
    const-string v1, "MXBroadcastReceiver"

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

    .line 52
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;->onMediaMounted()V

    .line 66
    .end local v0           #act:Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 56
    .restart local v0       #act:Ljava/lang/String;
    :cond_2e
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 59
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;->onMediaUnMounted(Landroid/net/Uri;)V

    goto :goto_2d
.end method

.method public setMXOnBroadcastReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;

    .line 71
    return-void
.end method
