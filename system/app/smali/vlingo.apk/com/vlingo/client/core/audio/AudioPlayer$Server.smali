.class Lcom/vlingo/client/core/audio/AudioPlayer$Server;
.super Ljava/lang/Thread;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server"
.end annotation


# instance fields
.field volatile m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

.field private m_LastSensorTime:J

.field private m_LastValues:[F

.field m_Player:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 316
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    .line 317
    const-string v0, "AudioServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 313
    iput-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    .line 314
    iput-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .registers 6
    .parameter "discardMsg"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v2

    monitor-enter v2

    .line 454
    :try_start_7
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    if-eqz v1, :cond_23

    .line 455
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    invoke-virtual {v1}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->isMsg()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 456
    if-nez p1, :cond_20

    .line 458
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->push(Lcom/vlingo/client/core/audio/AudioPlayer$Audio;)V

    .line 462
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .line 464
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_33

    .line 465
    monitor-enter p0

    .line 466
    :try_start_25
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_3b

    if-eqz v1, :cond_31

    .line 468
    :try_start_29
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_31} :catch_36

    .line 475
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3b

    .line 476
    return-void

    .line 464
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1

    .line 471
    :catch_36
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_31

    .line 475
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_3b
    move-exception v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 479
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x3

    .line 485
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_Accelerometer:Landroid/hardware/Sensor;
    invoke-static {v5}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$700(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/Sensor;

    move-result-object v5

    if-ne v4, v5, :cond_6b

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 487
    .local v0, curTime:J
    iget-wide v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastSensorTime:J

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_6b

    .line 488
    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;

    move-result-object v5

    monitor-enter v5

    .line 489
    :try_start_1f
    iput-wide v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastSensorTime:J

    .line 490
    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastValues:[F

    if-nez v4, :cond_38

    .line 491
    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastValues:[F

    .line 503
    :cond_2a
    :goto_2a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v10, :cond_6a

    .line 504
    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastValues:[F

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    aput v6, v4, v2

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 494
    .end local v2           #i:I
    :cond_38
    const/4 v3, 0x0

    .line 495
    .local v3, speed:F
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    if-ge v2, v10, :cond_4d

    .line 496
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    iget-object v6, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastValues:[F

    aget v6, v6, v2

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 497
    :cond_4d
    const/high16 v4, 0x4180

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2a

    .line 498
    const-string v4, "AudioPlayer"

    const-string v6, "shake"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->cancel(Z)V

    .line 500
    iget-wide v6, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastSensorTime:J

    const-wide/32 v8, 0x7fffffff

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastSensorTime:J

    goto :goto_2a

    .line 505
    .end local v2           #i:I
    .end local v3           #speed:F
    :catchall_67
    move-exception v4

    monitor-exit v5
    :try_end_69
    .catchall {:try_start_1f .. :try_end_69} :catchall_67

    throw v4

    .restart local v2       #i:I
    :cond_6a
    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_67

    .line 508
    .end local v0           #curTime:J
    .end local v2           #i:I
    :cond_6b
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    .line 324
    :goto_0
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v9

    monitor-enter v9

    .line 325
    :goto_7
    :try_start_7
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->isEmpty()Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_22

    move-result v8

    if-eqz v8, :cond_25

    .line 329
    :try_start_13
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 332
    :catch_1d
    move-exception v3

    .line 333
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 341
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_22
    move-exception v8

    monitor-exit v9
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    throw v8

    .line 338
    :cond_25
    :try_start_25
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->poll()Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    move-result-object v8

    iput-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .line 339
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    if-nez v8, :cond_37

    .line 340
    monitor-exit v9

    goto :goto_0

    .line 341
    :cond_37
    monitor-exit v9
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_22

    .line 344
    :try_start_38
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v7

    .line 357
    .local v7, useSCOStream:Z
    monitor-enter p0
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3d} :catch_e3

    .line 358
    :try_start_3d
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .line 360
    .local v1, audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    if-eqz v1, :cond_47

    .line 361
    invoke-virtual {v1, v7}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->createPlayer(Z)Landroid/media/MediaPlayer;

    move-result-object v8

    iput-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    .line 364
    :cond_47
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_d1

    .line 366
    invoke-virtual {v1}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->getContext()Lcom/vlingo/client/core/audio/AudioContext;

    move-result-object v2

    .line 368
    .local v2, context:Lcom/vlingo/client/core/audio/AudioContext;
    const/4 v4, 0x0

    .line 370
    .local v4, shake2Skip:Z
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isInCarMode()Z

    move-result v8

    if-nez v8, :cond_70

    if-eqz v2, :cond_70

    .line 371
    invoke-virtual {v2}, Lcom/vlingo/client/core/audio/AudioContext;->getSource()Ljava/lang/Object;

    move-result-object v5

    .line 372
    .local v5, source:Ljava/lang/Object;
    if-eqz v5, :cond_70

    instance-of v8, v5, Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v8, :cond_70

    .line 373
    move-object v0, v5

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    move-object v6, v0

    .line 374
    .local v6, tts:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v6}, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 375
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isShakeToSkip()Z

    move-result v4

    .line 380
    .end local v5           #source:Ljava/lang/Object;
    .end local v6           #tts:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_70
    if-eqz v4, :cond_8e

    .line 381
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;

    move-result-object v9

    monitor-enter v9
    :try_end_79
    .catchall {:try_start_3d .. :try_end_79} :catchall_ec

    .line 382
    :try_start_79
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;

    move-result-object v8

    iget-object v10, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_Accelerometer:Landroid/hardware/Sensor;
    invoke-static {v10}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$700(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/Sensor;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v8, p0, v10, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 384
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastSensorTime:J

    .line 385
    monitor-exit v9
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_e9

    .line 389
    :cond_8e
    :try_start_8e
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    new-instance v9, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;

    invoke-direct {v9, p0, v2}, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer$Server;Lcom/vlingo/client/core/audio/AudioContext;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 401
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    if-eqz v8, :cond_b3

    .line 403
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V

    .line 405
    if-eqz v2, :cond_b0

    invoke-virtual {v2}, Lcom/vlingo/client/core/audio/AudioContext;->getListener()Lcom/vlingo/client/core/audio/AudioListener;

    move-result-object v8

    if-eqz v8, :cond_b0

    .line 406
    invoke-virtual {v2}, Lcom/vlingo/client/core/audio/AudioContext;->getListener()Lcom/vlingo/client/core/audio/AudioListener;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/vlingo/client/core/audio/AudioListener;->onStart(Lcom/vlingo/client/core/audio/AudioContext;)V
    :try_end_b0
    .catchall {:try_start_8e .. :try_end_b0} :catchall_ec

    .line 411
    :cond_b0
    :try_start_b0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_ec
    .catch Ljava/lang/InterruptedException; {:try_start_b0 .. :try_end_b3} :catch_ef

    .line 417
    :cond_b3
    :goto_b3
    :try_start_b3
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    .line 418
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_Player:Landroid/media/MediaPlayer;

    .line 420
    if-eqz v4, :cond_d1

    .line 421
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;

    move-result-object v9

    monitor-enter v9
    :try_end_c4
    .catchall {:try_start_b3 .. :try_end_c4} :catchall_ec

    .line 422
    :try_start_c4
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 423
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_LastValues:[F

    .line 424
    monitor-exit v9
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_fa

    .line 428
    .end local v2           #context:Lcom/vlingo/client/core/audio/AudioContext;
    .end local v4           #shake2Skip:Z
    :cond_d1
    :try_start_d1
    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_ec

    .line 430
    :try_start_d2
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v9

    monitor-enter v9
    :try_end_d9
    .catch Ljava/lang/IllegalStateException; {:try_start_d2 .. :try_end_d9} :catch_e3

    .line 431
    :try_start_d9
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    if-nez v8, :cond_fd

    .line 433
    monitor-exit v9

    goto/16 :goto_0

    .line 436
    :catchall_e0
    move-exception v8

    monitor-exit v9
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v8
    :try_end_e3
    .catch Ljava/lang/IllegalStateException; {:try_start_e2 .. :try_end_e3} :catch_e3

    .line 446
    .end local v1           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    .end local v7           #useSCOStream:Z
    :catch_e3
    move-exception v3

    .line 447
    .local v3, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 385
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    .restart local v2       #context:Lcom/vlingo/client/core/audio/AudioContext;
    .restart local v4       #shake2Skip:Z
    .restart local v7       #useSCOStream:Z
    :catchall_e9
    move-exception v8

    :try_start_ea
    monitor-exit v9
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    :try_start_eb
    throw v8

    .line 428
    .end local v1           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    .end local v2           #context:Lcom/vlingo/client/core/audio/AudioContext;
    .end local v4           #shake2Skip:Z
    :catchall_ec
    move-exception v8

    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw v8
    :try_end_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_ee .. :try_end_ef} :catch_e3

    .line 412
    .restart local v1       #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    .restart local v2       #context:Lcom/vlingo/client/core/audio/AudioContext;
    .restart local v4       #shake2Skip:Z
    :catch_ef
    move-exception v3

    .line 413
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_f0
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_ec

    goto :goto_b3

    .line 424
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_fa
    move-exception v8

    :try_start_fb
    monitor-exit v9
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v8
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_ec

    .line 435
    .end local v2           #context:Lcom/vlingo/client/core/audio/AudioContext;
    .end local v4           #shake2Skip:Z
    :cond_fd
    const/4 v8, 0x0

    :try_start_fe
    iput-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->m_CurrentAudio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .line 436
    monitor-exit v9
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_e0

    .line 438
    :try_start_101
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$500(Lcom/vlingo/client/core/audio/AudioPlayer;)Ljava/lang/String;

    move-result-object v9

    monitor-enter v9
    :try_end_108
    .catch Ljava/lang/IllegalStateException; {:try_start_101 .. :try_end_108} :catch_e3

    .line 441
    :try_start_108
    iget-object v8, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$500(Lcom/vlingo/client/core/audio/AudioPlayer;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x15e

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_113
    .catchall {:try_start_108 .. :try_end_113} :catchall_116
    .catch Ljava/lang/InterruptedException; {:try_start_108 .. :try_end_113} :catch_119

    .line 445
    :goto_113
    :try_start_113
    monitor-exit v9

    goto/16 :goto_0

    :catchall_116
    move-exception v8

    monitor-exit v9
    :try_end_118
    .catchall {:try_start_113 .. :try_end_118} :catchall_116

    :try_start_118
    throw v8
    :try_end_119
    .catch Ljava/lang/IllegalStateException; {:try_start_118 .. :try_end_119} :catch_e3

    .line 442
    :catch_119
    move-exception v3

    .line 443
    .restart local v3       #e:Ljava/lang/InterruptedException;
    :try_start_11a
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_116

    goto :goto_113
.end method
