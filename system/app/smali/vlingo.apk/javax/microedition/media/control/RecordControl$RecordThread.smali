.class Ljavax/microedition/media/control/RecordControl$RecordThread;
.super Ljava/lang/Object;
.source "RecordControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/media/control/RecordControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThread"
.end annotation


# instance fields
.field requestNumber:I

.field final synthetic this$0:Ljavax/microedition/media/control/RecordControl;


# direct methods
.method constructor <init>(Ljavax/microedition/media/control/RecordControl;I)V
    .registers 3
    .parameter
    .parameter "requestNumber"

    .prologue
    .line 385
    iput-object p1, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput p2, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->requestNumber:I

    .line 387
    return-void
.end method

.method private shoveBytesIntoBuffer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v0}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 482
    sget v0, Ljavax/microedition/media/control/RecordControl;->fakeAMRLen:I

    if-lez v0, :cond_21

    sget-object v0, Ljavax/microedition/media/control/RecordControl;->fakeAMR:[B

    if-eqz v0, :cond_21

    .line 485
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v0}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v0

    sget-object v1, Ljavax/microedition/media/control/RecordControl;->fakeAMR:[B

    sget v2, Ljavax/microedition/media/control/RecordControl;->fakeAMRLen:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V

    .line 486
    sput v3, Ljavax/microedition/media/control/RecordControl;->fakeAMRLen:I

    .line 494
    :cond_20
    :goto_20
    return-void

    .line 487
    :cond_21
    sget v0, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    if-lez v0, :cond_20

    sget-object v0, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    if-eqz v0, :cond_20

    goto :goto_20
.end method

.method private updateSamples()V
    .registers 19

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v12

    sget-object v13, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    if-eq v12, v13, :cond_7e

    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, done:Z
    :cond_d
    :goto_d
    if-nez v1, :cond_7e

    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$800(Ljavax/microedition/media/control/RecordControl;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    sub-int v9, v12, v13

    .line 504
    .local v9, numToRead:I
    if-lez v9, :cond_d

    .line 508
    const/4 v8, 0x0

    .line 510
    .local v8, numRead:I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    monitor-enter v13

    .line 512
    :try_start_29
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;

    move-result-object v12

    if-eqz v12, :cond_7d

    .line 513
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S
    invoke-static {v14}, Ljavax/microedition/media/control/RecordControl;->access$1000(Ljavax/microedition/media/control/RecordControl;)[S

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v15}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v15

    invoke-virtual {v12, v14, v15, v9}, Landroid/media/AudioRecord;->read([SII)I
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4e} :catch_7f

    move-result v8

    .line 522
    :try_start_4f
    monitor-exit v13
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_82

    .line 523
    if-lez v8, :cond_be

    .line 524
    sget-boolean v12, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    if-eqz v12, :cond_85

    .line 526
    const/4 v4, 0x0

    .local v4, i:I
    :goto_57
    if-ge v4, v8, :cond_85

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$1000(Ljavax/microedition/media/control/RecordControl;)[S

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    add-int/2addr v13, v4

    sget-object v14, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    sget v15, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    add-int/lit8 v16, v15, 0x1

    sput v16, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    sget v16, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    rem-int v15, v15, v16

    aget-short v14, v14, v15

    aput-short v14, v12, v13

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 516
    .end local v4           #i:I
    :cond_7d
    :try_start_7d
    monitor-exit v13

    .line 647
    .end local v1           #done:Z
    .end local v8           #numRead:I
    .end local v9           #numToRead:I
    :cond_7e
    :goto_7e
    return-void

    .line 519
    .restart local v1       #done:Z
    .restart local v8       #numRead:I
    .restart local v9       #numToRead:I
    :catch_7f
    move-exception v3

    .line 520
    .local v3, ex:Ljava/lang/Exception;
    monitor-exit v13

    goto :goto_7e

    .line 522
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_82
    move-exception v12

    monitor-exit v13
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_82

    throw v12

    .line 539
    :cond_85
    invoke-static {}, Ljavax/microedition/media/control/RecordControl;->access$1100()Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 541
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8c
    if-ge v4, v8, :cond_b0

    .line 543
    :try_start_8e
    invoke-static {}, Ljavax/microedition/media/control/RecordControl;->access$1200()Ljava/io/DataOutputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1000(Ljavax/microedition/media/control/RecordControl;)[S

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v14}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v14

    add-int/2addr v14, v4

    aget-short v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a8} :catch_ab

    .line 541
    :goto_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 544
    :catch_ab
    move-exception v2

    .line 545
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 549
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #i:I
    :cond_b0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-static {v12, v8}, Ljavax/microedition/media/control/RecordControl;->access$912(Ljavax/microedition/media/control/RecordControl;I)I

    .line 550
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-static {v12, v8}, Ljavax/microedition/media/control/RecordControl;->access$312(Ljavax/microedition/media/control/RecordControl;I)I

    .line 554
    :cond_be
    const/4 v5, 0x0

    .line 555
    .local v5, isEnd:I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v12

    sget-object v13, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v12, v13, :cond_104

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$800(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    if-ge v12, v13, :cond_104

    .line 558
    :goto_dd
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$800(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    if-ge v12, v13, :cond_103

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$1000(Ljavax/microedition/media/control/RecordControl;)[S

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$908(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    const/4 v14, 0x0

    aput-short v14, v12, v13

    goto :goto_dd

    .line 561
    :cond_103
    const/4 v1, 0x1

    .line 567
    :cond_104
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$900(Ljavax/microedition/media/control/RecordControl;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$800(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    if-lt v12, v13, :cond_1f4

    .line 569
    sget-boolean v12, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    if-nez v12, :cond_1f7

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$1400(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/android/core/audio/SpeexJNI;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1000(Ljavax/microedition/media/control/RecordControl;)[S

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B
    invoke-static {v14}, Ljavax/microedition/media/control/RecordControl;->access$1300(Ljavax/microedition/media/control/RecordControl;)[B

    move-result-object v14

    const/16 v15, 0x3e8

    invoke-virtual {v12, v13, v14, v15, v5}, Lcom/vlingo/client/android/core/audio/SpeexJNI;->encode([S[BII)I

    move-result v11

    .line 575
    .local v11, outLen:I
    if-lez v11, :cond_1ec

    .line 576
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    if-eqz v12, :cond_178

    .line 577
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1300(Ljavax/microedition/media/control/RecordControl;)[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-static {v12, v11}, Ljavax/microedition/media/control/RecordControl;->access$1512(Ljavax/microedition/media/control/RecordControl;I)I

    .line 582
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1600(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    if-le v12, v13, :cond_178

    .line 583
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 590
    :cond_178
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v12

    sget-object v13, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v12, v13, :cond_1ec

    const/16 v12, 0x3e0

    if-ge v11, v12, :cond_1ec

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1300(Ljavax/microedition/media/control/RecordControl;)[B

    move-result-object v13

    #calls: Ljavax/microedition/media/control/RecordControl;->convertBytesToInt([BI)I
    invoke-static {v12, v13, v11}, Ljavax/microedition/media/control/RecordControl;->access$1700(Ljavax/microedition/media/control/RecordControl;[BI)I

    move-result v7

    .line 592
    .local v7, lastSpeechSample:I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1300(Ljavax/microedition/media/control/RecordControl;)[B

    move-result-object v13

    add-int/lit8 v14, v11, 0x4

    #calls: Ljavax/microedition/media/control/RecordControl;->convertBytesToInt([BI)I
    invoke-static {v12, v13, v14}, Ljavax/microedition/media/control/RecordControl;->access$1700(Ljavax/microedition/media/control/RecordControl;[BI)I

    move-result v6

    .line 598
    .local v6, lastEnergy:I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;

    move-result-object v12

    if-eqz v12, :cond_1ec

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    const/4 v13, 0x0

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I
    invoke-static {v12, v13}, Ljavax/microedition/media/control/RecordControl;->access$1502(Ljavax/microedition/media/control/RecordControl;I)I

    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;

    move-result-object v12

    check-cast v12, Ljavax/microedition/media/Player;

    const-string v14, "RecordInfo"

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v7, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    move-object/from16 v17, v0

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I
    invoke-static/range {v17 .. v17}, Ljavax/microedition/media/control/RecordControl;->access$300(Ljavax/microedition/media/control/RecordControl;)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x2

    aput v6, v15, v16

    invoke-interface {v13, v12, v14, v15}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    .end local v6           #lastEnergy:I
    .end local v7           #lastSpeechSample:I
    .end local v11           #outLen:I
    :cond_1ec
    :goto_1ec
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    const/4 v13, 0x0

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I
    invoke-static {v12, v13}, Ljavax/microedition/media/control/RecordControl;->access$902(Ljavax/microedition/media/control/RecordControl;I)I

    .line 641
    :cond_1f4
    const/4 v1, 0x1

    goto/16 :goto_d

    .line 608
    :cond_1f7
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    if-eqz v12, :cond_1ec

    .line 611
    sget-object v12, Ljavax/microedition/media/control/RecordControl;->fakeAMR:[B

    if-eqz v12, :cond_1ec

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    sget-object v13, Ljavax/microedition/media/control/RecordControl;->fakeAMR:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I
    invoke-static {v14}, Ljavax/microedition/media/control/RecordControl;->access$1500(Ljavax/microedition/media/control/RecordControl;)I

    move-result v14

    invoke-virtual {v12, v13, v14, v8}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    invoke-static {v12, v8}, Ljavax/microedition/media/control/RecordControl;->access$1512(Ljavax/microedition/media/control/RecordControl;I)I

    .line 619
    sget v12, Ljavax/microedition/media/control/RecordControl;->fakeAMRmilliseconds:I

    if-lez v12, :cond_23b

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$1600(Ljavax/microedition/media/control/RecordControl;)I

    move-result v10

    .line 621
    .local v10, oldRecordSize:I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    sget v13, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    sget v14, Ljavax/microedition/media/control/RecordControl;->fakeAMRmilliseconds:I

    mul-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x2

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I
    invoke-static {v12, v13}, Ljavax/microedition/media/control/RecordControl;->access$1602(Ljavax/microedition/media/control/RecordControl;I)I

    .line 628
    .end local v10           #oldRecordSize:I
    :cond_23b
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    invoke-static {v12}, Ljavax/microedition/media/control/RecordControl;->access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I
    invoke-static {v13}, Ljavax/microedition/media/control/RecordControl;->access$1600(Ljavax/microedition/media/control/RecordControl;)I

    move-result v13

    if-le v12, v13, :cond_1ec

    .line 631
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    goto :goto_1ec
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 406
    sget-boolean v8, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    if-eqz v8, :cond_44

    .line 410
    invoke-direct {p0}, Ljavax/microedition/media/control/RecordControl$RecordThread;->shoveBytesIntoBuffer()V

    .line 414
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 449
    :cond_a
    :goto_a
    iget-object v9, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    monitor-enter v9

    .line 450
    :try_start_d
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_fe

    move-result-object v8

    if-eqz v8, :cond_27

    .line 452
    :try_start_15
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioRecord;->stop()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_f2

    .line 457
    :goto_1e
    :try_start_1e
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioRecord;->release()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_101

    .line 463
    :cond_27
    :goto_27
    :try_start_27
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    const/4 v10, 0x0

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;
    invoke-static {v8, v10}, Ljavax/microedition/media/control/RecordControl;->access$602(Ljavax/microedition/media/control/RecordControl;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 464
    sget-boolean v8, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    if-eqz v8, :cond_34

    .line 465
    const/4 v8, 0x0

    sput-boolean v8, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    .line 467
    :cond_34
    sget-boolean v8, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    if-eqz v8, :cond_3b

    .line 468
    const/4 v8, 0x0

    sput-boolean v8, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    .line 470
    :cond_3b
    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_fe

    .line 472
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8, v9}, Ljavax/microedition/media/control/RecordControl;->access$002(Ljavax/microedition/media/control/RecordControl;Ljavax/microedition/media/control/RecordControl$STATE;)Ljavax/microedition/media/control/RecordControl$STATE;

    .line 476
    return-void

    .line 418
    :cond_44
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v8

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    if-eq v8, v9, :cond_58

    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v8

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v8, v9, :cond_a

    .line 419
    :cond_58
    const-wide/16 v6, 0x32

    .line 420
    .local v6, timeToSleep:J
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v8

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v8, v9, :cond_66

    .line 421
    const-wide/16 v6, 0x14

    .line 424
    :cond_66
    :try_start_66
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_e6

    .line 429
    :goto_69
    invoke-direct {p0}, Ljavax/microedition/media/control/RecordControl$RecordThread;->updateSamples()V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_startRecordTime:J
    invoke-static {v10}, Ljavax/microedition/media/control/RecordControl;->access$100(Ljavax/microedition/media/control/RecordControl;)J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 431
    .local v4, millisecSinceStart:J
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_MaxAudioTime:I
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$200(Ljavax/microedition/media/control/RecordControl;)I

    move-result v8

    add-int/lit16 v8, v8, -0x1f4

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_88

    .line 432
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 433
    :cond_88
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$300(Ljavax/microedition/media/control/RecordControl;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    sget v9, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    div-int/2addr v8, v9

    int-to-long v2, v8

    .line 434
    .local v2, millisecRecorded:J
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v8

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v8, v9, :cond_44

    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_endRecordTime:J
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$400(Ljavax/microedition/media/control/RecordControl;)J

    move-result-wide v8

    iget-object v10, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_startRecordTime:J
    invoke-static {v10}, Ljavax/microedition/media/control/RecordControl;->access$100(Ljavax/microedition/media/control/RecordControl;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x32

    sub-long/2addr v8, v10

    cmp-long v8, v2, v8

    if-gez v8, :cond_c3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_endRecordTime:J
    invoke-static {v10}, Ljavax/microedition/media/control/RecordControl;->access$400(Ljavax/microedition/media/control/RecordControl;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa0

    cmp-long v8, v8, v10

    if-lez v8, :cond_44

    .line 441
    :cond_c3
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    sget-object v9, Ljavax/microedition/media/control/RecordControl$STATE;->STOPPING:Ljavax/microedition/media/control/RecordControl$STATE;

    #setter for: Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    invoke-static {v8, v9}, Ljavax/microedition/media/control/RecordControl;->access$002(Ljavax/microedition/media/control/RecordControl;Ljavax/microedition/media/control/RecordControl$STATE;)Ljavax/microedition/media/control/RecordControl$STATE;

    .line 442
    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;

    move-result-object v9

    iget-object v8, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->this$0:Ljavax/microedition/media/control/RecordControl;

    #getter for: Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;
    invoke-static {v8}, Ljavax/microedition/media/control/RecordControl;->access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;

    move-result-object v8

    check-cast v8, Ljavax/microedition/media/Player;

    const-string v10, "RecordStop"

    new-instance v11, Ljava/lang/Integer;

    iget v12, p0, Ljavax/microedition/media/control/RecordControl$RecordThread;->requestNumber:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v8, v10, v11}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 425
    .end local v2           #millisecRecorded:J
    .end local v4           #millisecSinceStart:J
    :catch_e6
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 453
    .end local v0           #e:Ljava/lang/Exception;
    .end local v6           #timeToSleep:J
    :catch_f2
    move-exception v0

    .line 454
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_f3
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 470
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_fe
    move-exception v8

    monitor-exit v9
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_fe

    throw v8

    .line 458
    :catch_101
    move-exception v1

    .line 459
    .local v1, ex:Ljava/lang/Exception;
    :try_start_102
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_102 .. :try_end_10b} :catchall_fe

    goto/16 :goto_27
.end method
