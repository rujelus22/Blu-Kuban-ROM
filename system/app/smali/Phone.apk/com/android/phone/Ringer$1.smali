.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_19a

    .line 481
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 399
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingHandler: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_86

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_86

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 407
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 410
    const-string v1, "sec_korea_mm_audio"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 411
    if-nez v0, :cond_77

    .line 412
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "creating ringtone fail, although it has uri (maybe DRM issue)"

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 413
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/high16 v2, 0x110

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtoneFromResource(Landroid/content/Context;I)Landroid/media/Ringtone;

    move-result-object v0

    .line 417
    :cond_77
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 418
    const/4 v1, 0x3

    :try_start_7b
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_85

    .line 419
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 421
    :cond_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_d7

    .line 423
    :cond_86
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 424
    if-eqz v0, :cond_a

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_a

    .line 426
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_da

    .line 427
    invoke-virtual {v0, v5}, Landroid/media/Ringtone;->setRepeat(Z)V

    .line 435
    :goto_9f
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$402(Lcom/android/phone/Ringer;I)I

    .line 436
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 437
    const/4 v1, 0x7

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/Ringer$1;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 440
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 441
    :try_start_bc
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_d1

    .line 442
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$502(Lcom/android/phone/Ringer;J)J

    .line 444
    :cond_d1
    monitor-exit v2

    goto/16 :goto_a

    :catchall_d4
    move-exception v1

    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_bc .. :try_end_d6} :catchall_d4

    throw v1

    .line 421
    :catchall_d7
    move-exception v1

    :try_start_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v1

    .line 430
    :cond_da
    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->setRepeat(Z)V

    goto :goto_9f

    .line 450
    :pswitch_de
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string v1, "mRingHandler: PLAY_TTS..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 452
    :cond_e9
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 453
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 454
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_a

    .line 459
    :pswitch_10a
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_115

    const-string v1, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 460
    :cond_115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 461
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_14a

    .line 463
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_13e

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->IsSpeakingTts()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 464
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 465
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 467
    :cond_13e
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 473
    :cond_141
    :goto_141
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_a

    .line 470
    :cond_14a
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_141

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    goto :goto_141

    .line 477
    :pswitch_167
    invoke-static {}, Lcom/android/phone/Ringer;->access$300()Z

    move-result v1

    if-eqz v1, :cond_189

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETURN_ORIGIN_VOLUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 478
    :cond_189
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_a

    .line 396
    nop

    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_10a
        :pswitch_a
        :pswitch_de
        :pswitch_a
        :pswitch_167
    .end packed-switch
.end method
