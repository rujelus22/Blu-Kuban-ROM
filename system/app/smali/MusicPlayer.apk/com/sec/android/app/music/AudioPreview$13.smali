.class Lcom/sec/android/app/music/AudioPreview$13;
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
    .line 1869
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1873
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, action:Ljava/lang/String;
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_fa

    .line 1875
    .local v1, plugged:Z
    :goto_11
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHeadsetReceiver:onReceive(action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1881
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "Intent.ACTION_HDMI_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1884
    :cond_5b
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_68

    .line 1885
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->close()V

    .line 1889
    :cond_68
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$1500(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1892
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->changeVolumeLimitPannel(Z)V
    invoke-static {v3, v2}, Lcom/sec/android/app/music/AudioPreview;->access$2100(Lcom/sec/android/app/music/AudioPreview;Z)V

    .line 1894
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v2}, Lcom/sec/android/app/music/AudioPreview;->updateCurrentVolumeBar()V

    .line 1898
    :cond_7a
    if-eqz v1, :cond_f9

    .line 1899
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isMidiMimeType(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/sec/android/app/music/AudioPreview;->access$1700(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 1900
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1901
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1903
    :cond_a3
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 1904
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1906
    :cond_b8
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/high16 v3, 0x3f80

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v2, v3}, Lcom/sec/android/app/music/AudioPreview;->access$1902(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1907
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-eqz v2, :cond_d8

    .line 1908
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const-string v4, "situation=6;device=0"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v2, v3}, Lcom/sec/android/app/music/AudioPreview;->access$1902(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1911
    :cond_d8
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F
    invoke-static {v2, v3}, Lcom/sec/android/app/music/AudioPreview;->access$2002(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1912
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$13;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v4}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 1916
    :cond_f9
    return-void

    .end local v1           #plugged:Z
    :cond_fa
    move v1, v2

    .line 1874
    goto/16 :goto_11
.end method
