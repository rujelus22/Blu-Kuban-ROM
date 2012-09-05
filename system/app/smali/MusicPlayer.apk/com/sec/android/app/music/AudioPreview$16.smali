.class Lcom/sec/android/app/music/AudioPreview$16;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v0, v0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v0, :cond_7

    .line 2028
    :cond_6
    :goto_6
    return-void

    .line 2006
    :cond_7
    if-eqz p2, :cond_6

    .line 2009
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2010
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2012
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivityUpdateReceiver() cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivityUpdateReceiver() action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v0, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2016
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto :goto_6

    .line 2017
    :cond_55
    const-string v0, "unregister_bt_receiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2019
    :try_start_5d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$2200(Lcom/sec/android/app/music/AudioPreview;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_68} :catch_81

    .line 2025
    :goto_68
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v2}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_6

    .line 2020
    :catch_81
    move-exception v0

    .line 2021
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$16;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPlayerActivityUpdateReceiver()...unregisterReceiver mBluetoothReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method
