.class Lcom/sec/android/app/music/AudioPreview$12;
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
    .line 1725
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1728
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v10, v10, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v10, :cond_7

    .line 1866
    :cond_6
    :goto_6
    return-void

    .line 1731
    :cond_7
    if-eqz p2, :cond_6

    .line 1734
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, action:Ljava/lang/String;
    const-string v10, "command"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, cmd:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBluetoothReceiver() cmd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBluetoothReceiver() action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string v10, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 1741
    const-string v10, "android.bluetooth.profile.extra.STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1742
    .local v9, sinkState:I
    const-string v10, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1743
    .local v7, previousSinkState:I
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_SINK_STATE_CHANGED "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v10, 0x2

    if-ne v9, v10, :cond_9a

    const/4 v10, 0x1

    if-eq v7, v10, :cond_89

    if-nez v7, :cond_9a

    .line 1749
    :cond_89
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1100(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1750
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v11, 0x1

    const/4 v12, 0x0

    #calls: Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/sec/android/app/music/AudioPreview;->access$1200(Lcom/sec/android/app/music/AudioPreview;ZZ)V

    goto/16 :goto_6

    .line 1752
    :cond_9a
    if-eqz v9, :cond_9f

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 1754
    :cond_9f
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1100(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 1756
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v11, 0x0

    const/4 v12, 0x1

    #calls: Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/sec/android/app/music/AudioPreview;->access$1200(Lcom/sec/android/app/music/AudioPreview;ZZ)V

    goto/16 :goto_6

    .line 1758
    :cond_b0
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_6

    .line 1761
    .end local v7           #previousSinkState:I
    .end local v9           #sinkState:I
    :cond_b7
    const-string v10, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15e

    .line 1762
    const-string v10, "android.bluetooth.profile.extra.STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1763
    .restart local v9       #sinkState:I
    const/16 v10, 0xa

    if-ne v9, v10, :cond_6

    .line 1764
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1100(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 1765
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v11, 0x1

    const/4 v12, 0x0

    #calls: Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/sec/android/app/music/AudioPreview;->access$1200(Lcom/sec/android/app/music/AudioPreview;ZZ)V

    .line 1767
    :cond_d9
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v11, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v11, v11, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isMidiMimeType(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/sec/android/app/music/AudioPreview;->access$1700(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1768
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_102

    .line 1769
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1771
    :cond_102
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 1772
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1774
    :cond_11b
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/high16 v11, 0x3f80

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v10, v11}, Lcom/sec/android/app/music/AudioPreview;->access$1902(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1775
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-eqz v10, :cond_13b

    .line 1776
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v11, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v11, v11, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const-string v12, "situation=6;device=0"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/music/framework/SecAudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v10, v11}, Lcom/sec/android/app/music/AudioPreview;->access$1902(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1779
    :cond_13b
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v11, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v11}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F
    invoke-static {v10, v11}, Lcom/sec/android/app/music/AudioPreview;->access$2002(Lcom/sec/android/app/music/AudioPreview;F)F

    .line 1780
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v11}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v12}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    goto/16 :goto_6

    .line 1783
    .end local v9           #sinkState:I
    :cond_15e
    const-string v10, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 1785
    const-string v10, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1787
    .local v2, bFromBT:Z
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v10}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    .line 1789
    .local v1, bBtA2dpOn:Z
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 1790
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_6

    .line 1792
    .end local v1           #bBtA2dpOn:Z
    .end local v2           #bFromBT:Z
    :cond_180
    const-string v10, "com.sec.android.app.soundplayer.MediaKey"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1793
    const-string v10, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 1794
    .local v4, event:Landroid/view/KeyEvent;
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() ACTION_MEDIA_BUTTON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    if-eqz v4, :cond_6

    .line 1799
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1800
    .local v6, keycode:I
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 1801
    .local v5, keyAction:I
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 1803
    .local v8, repeatCount:I
    const/16 v10, 0x4f

    if-eq v6, v10, :cond_1d9

    const/16 v10, 0x57

    if-eq v6, v10, :cond_1d9

    const/16 v10, 0x58

    if-eq v6, v10, :cond_1d9

    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v10}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v10

    if-nez v10, :cond_1d9

    .line 1810
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v11, "isBluetoothA2dpOn() == false, playing with speaker"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1814
    :cond_1d9
    if-nez v8, :cond_24c

    if-nez v5, :cond_24c

    .line 1815
    sparse-switch v6, :sswitch_data_278

    goto/16 :goto_6

    .line 1829
    :sswitch_1e2
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v10}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v10

    if-eqz v10, :cond_1f8

    .line 1830
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_6

    .line 1817
    :sswitch_1f1
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    goto/16 :goto_6

    .line 1832
    :cond_1f8
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto/16 :goto_6

    .line 1836
    :sswitch_1ff
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->playNext()V

    goto/16 :goto_6

    .line 1839
    :sswitch_206
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v10, :cond_22f

    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v10

    if-eqz v10, :cond_22f

    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v10

    const/16 v11, 0xbb8

    if-le v10, v11, :cond_22f

    .line 1841
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 1842
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    goto/16 :goto_6

    .line 1844
    :cond_22f
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v10}, Lcom/sec/android/app/music/AudioPreview;->playPrev()V

    goto/16 :goto_6

    .line 1849
    :sswitch_236
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1852
    :sswitch_241
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1856
    :cond_24c
    const/4 v10, 0x1

    if-ne v5, v10, :cond_6

    .line 1857
    const/16 v10, 0x59

    if-ne v6, v10, :cond_263

    .line 1858
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v11, 0x0

    iput v11, v10, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 1859
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1860
    :cond_263
    const/16 v10, 0x5a

    if-ne v6, v10, :cond_6

    .line 1861
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v11, 0x0

    iput v11, v10, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 1862
    iget-object v10, p0, Lcom/sec/android/app/music/AudioPreview$12;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v10, v10, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1815
    nop

    :sswitch_data_278
    .sparse-switch
        0x4f -> :sswitch_1e2
        0x55 -> :sswitch_1e2
        0x56 -> :sswitch_1f1
        0x57 -> :sswitch_1ff
        0x58 -> :sswitch_206
        0x59 -> :sswitch_236
        0x5a -> :sswitch_241
        0x7e -> :sswitch_1e2
        0x7f -> :sswitch_1e2
    .end sparse-switch
.end method
