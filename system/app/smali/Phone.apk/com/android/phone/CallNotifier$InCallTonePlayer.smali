.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 4
    .parameter
    .parameter "toneId"

    .prologue
    .line 2394
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2395
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2396
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2398
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 2402
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2404
    const/4 v9, 0x0

    .line 2408
    .local v9, toneType:I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 2409
    .local v3, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2411
    .local v4, phoneType:I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_42

    .line 2412
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2415
    :cond_42
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_320

    .line 2549
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2417
    :pswitch_62
    const/16 v9, 0x16

    .line 2421
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_148

    .line 2422
    const/16 v10, 0x1e

    .line 2434
    .local v10, toneVolume:I
    :goto_70
    const v8, 0x7fffffeb

    .line 2557
    .local v8, toneLengthMillis:I
    :cond_73
    :goto_73
    :try_start_73
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    if-eqz v11, :cond_253

    .line 2558
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_234

    const/4 v6, 0x6

    .line 2561
    .local v6, stream:I
    :goto_88
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_23b

    .line 2562
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_237

    const/4 v6, 0x6

    .line 2564
    :goto_a5
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :goto_ac
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_b1} :catch_278

    .line 2609
    .end local v6           #stream:I
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    :goto_b1
    const/4 v1, 0x1

    .line 2610
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2612
    .local v2, okToPlayTone:Z
    if-eqz v7, :cond_10b

    .line 2613
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2614
    .local v5, ringerMode:I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_2fe

    .line 2615
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_294

    .line 2616
    if-eqz v5, :cond_eb

    const/4 v11, 0x1

    if-eq v5, v11, :cond_eb

    .line 2618
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_e9

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2619
    :cond_e9
    const/4 v2, 0x1

    .line 2620
    const/4 v1, 0x0

    .line 2647
    :cond_eb
    :goto_eb
    monitor-enter p0

    .line 2648
    if-eqz v2, :cond_104

    :try_start_ee
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_104

    .line 2649
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2669
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_f9
    .catchall {:try_start_ee .. :try_end_f9} :catchall_31c

    .line 2671
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_fc
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_31c
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_ff} :catch_301

    .line 2676
    :goto_ff
    if-eqz v1, :cond_104

    .line 2677
    :try_start_101
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2681
    :cond_104
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2682
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2683
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_31c

    .line 2686
    .end local v5           #ringerMode:I
    :cond_10b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_114

    .line 2687
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2703
    :cond_114
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_147

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_147

    .line 2704
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2705
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2707
    :cond_147
    return-void

    .line 2424
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_148
    const/16 v10, 0x50

    .restart local v10       #toneVolume:I
    goto/16 :goto_70

    .line 2439
    .end local v10           #toneVolume:I
    :pswitch_14c
    const/4 v11, 0x2

    if-ne v4, v11, :cond_157

    .line 2440
    const/16 v9, 0x60

    .line 2441
    const/16 v10, 0x32

    .line 2442
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2443
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_157
    const/4 v11, 0x1

    if-eq v4, v11, :cond_15d

    const/4 v11, 0x3

    if-ne v4, v11, :cond_165

    .line 2445
    :cond_15d
    const/16 v9, 0x11

    .line 2446
    const/16 v10, 0x50

    .line 2447
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1194

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2451
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_165
    const/4 v11, 0x5

    if-ne v4, v11, :cond_170

    .line 2452
    const/16 v9, 0x60

    .line 2453
    const/16 v10, 0x32

    .line 2454
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2456
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_170
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2460
    :pswitch_189
    const/16 v9, 0x12

    .line 2461
    const/16 v10, 0x50

    .line 2462
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2463
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2469
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_191
    const/16 v9, 0x19

    .line 2470
    const/16 v10, 0x50

    .line 2471
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2472
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2474
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_199
    const/16 v9, 0x1b

    .line 2475
    const/16 v10, 0x50

    .line 2476
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 2477
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2479
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1a1
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1b6

    .line 2481
    const/16 v9, 0x5d

    .line 2482
    const/16 v10, 0x50

    .line 2483
    .restart local v10       #toneVolume:I
    const/16 v8, 0x2ee

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2485
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_1b6
    const/16 v9, 0x1b

    .line 2486
    const/16 v10, 0x50

    .line 2487
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 2489
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2491
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1be
    const/16 v9, 0x56

    .line 2492
    const/16 v10, 0x50

    .line 2493
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2494
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2496
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1c6
    const/16 v9, 0x26

    .line 2497
    const/16 v10, 0x50

    .line 2498
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2499
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2501
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1ce
    const/16 v9, 0x25

    .line 2502
    const/16 v10, 0x32

    .line 2503
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 2504
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2507
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1d6
    const/16 v9, 0x5f

    .line 2508
    const/16 v10, 0x32

    .line 2509
    .restart local v10       #toneVolume:I
    const/16 v8, 0x177

    .line 2510
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2512
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1de
    const/16 v9, 0x57

    .line 2513
    const/16 v10, 0x32

    .line 2514
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2515
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2517
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1e6
    const-string v11, "feature_kt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f7

    .line 2518
    const/16 v9, 0x23

    .line 2522
    :goto_1f0
    const/16 v10, 0x50

    .line 2524
    .restart local v10       #toneVolume:I
    const v8, 0x7fffffeb

    .line 2525
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2520
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_1f7
    const/16 v9, 0x17

    goto :goto_1f0

    .line 2527
    :pswitch_1fa
    const/16 v9, 0x15

    .line 2528
    const/16 v10, 0x50

    .line 2529
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2530
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2532
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_202
    const/16 v9, 0x19

    .line 2533
    const/16 v10, 0x32

    .line 2534
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2535
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2537
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_20a
    const/16 v9, 0x63

    .line 2538
    const/16 v10, 0x50

    .line 2539
    .restart local v10       #toneVolume:I
    const/16 v8, 0x258

    .line 2540
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_73

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 2543
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_21f
    const/16 v9, 0x64

    .line 2544
    const/16 v10, 0x32

    .line 2545
    .restart local v10       #toneVolume:I
    const/16 v8, 0x154

    .line 2546
    .restart local v8       #toneLengthMillis:I
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_73

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "play tone - SKT waiting call end"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 2558
    :cond_234
    const/4 v6, 0x0

    goto/16 :goto_88

    .line 2562
    .restart local v6       #stream:I
    :cond_237
    const/16 v6, 0xb

    goto/16 :goto_a5

    .line 2567
    :cond_23b
    :try_start_23b
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_251

    const/4 v6, 0x6

    :goto_24f
    goto/16 :goto_ac

    :cond_251
    const/4 v6, 0x0

    goto :goto_24f

    .line 2576
    .end local v6           #stream:I
    :cond_253
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_26e

    .line 2577
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    const/16 v6, 0xb

    .restart local v6       #stream:I
    goto/16 :goto_ac

    .line 2581
    .end local v6           #stream:I
    :cond_26e
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_275
    .catch Ljava/lang/RuntimeException; {:try_start_23b .. :try_end_275} :catch_278

    .line 2583
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_ac

    .line 2589
    .end local v6           #stream:I
    :catch_278
    move-exception v0

    .line 2590
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    const/4 v7, 0x0

    .restart local v7       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_b1

    .line 2622
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v5       #ringerMode:I
    :cond_294
    const/16 v11, 0x60

    if-eq v9, v11, :cond_2a8

    const/16 v11, 0x26

    if-eq v9, v11, :cond_2a8

    const/16 v11, 0x27

    if-eq v9, v11, :cond_2a8

    const/16 v11, 0x25

    if-eq v9, v11, :cond_2a8

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_2cc

    .line 2627
    :cond_2a8
    if-eqz v5, :cond_eb

    .line 2628
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_2c8

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2629
    :cond_2c8
    const/4 v2, 0x1

    .line 2630
    const/4 v1, 0x0

    goto/16 :goto_eb

    .line 2632
    :cond_2cc
    const/16 v11, 0x57

    if-eq v9, v11, :cond_2d4

    const/16 v11, 0x56

    if-ne v9, v11, :cond_2fb

    .line 2634
    :cond_2d4
    if-eqz v5, :cond_eb

    const/4 v11, 0x1

    if-eq v5, v11, :cond_eb

    .line 2636
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$700()Z

    move-result v11

    if-eqz v11, :cond_2f7

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2637
    :cond_2f7
    const/4 v2, 0x1

    .line 2638
    const/4 v1, 0x0

    goto/16 :goto_eb

    .line 2641
    :cond_2fb
    const/4 v2, 0x1

    goto/16 :goto_eb

    .line 2644
    :cond_2fe
    const/4 v2, 0x1

    goto/16 :goto_eb

    .line 2672
    :catch_301
    move-exception v0

    .line 2673
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_302
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 2683
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_31c
    move-exception v11

    monitor-exit p0
    :try_end_31e
    .catchall {:try_start_302 .. :try_end_31e} :catchall_31c

    throw v11

    .line 2415
    nop

    :pswitch_data_320
    .packed-switch 0x1
        :pswitch_62
        :pswitch_14c
        :pswitch_189
        :pswitch_191
        :pswitch_199
        :pswitch_1be
        :pswitch_1c6
        :pswitch_1ce
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1de
        :pswitch_1a1
        :pswitch_1e6
        :pswitch_1fa
        :pswitch_202
        :pswitch_20a
        :pswitch_21f
    .end packed-switch
.end method

.method public stopTone()V
    .registers 3

    .prologue
    .line 2710
    monitor-enter p0

    .line 2711
    :try_start_1
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2712
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2714
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2715
    monitor-exit p0

    .line 2716
    return-void

    .line 2715
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
