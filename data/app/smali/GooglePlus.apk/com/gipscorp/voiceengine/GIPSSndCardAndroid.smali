.class Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;
.super Ljava/lang/Object;
.source "GIPSSndCardAndroid.java"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x3c0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 27
    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 37
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 41
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 42
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    .line 43
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    .line 45
    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    .line 46
    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 47
    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 542
    const-string v1, "GIPS Snd Card"

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->logTag:Ljava/lang/String;

    .line 52
    const/16 v1, 0x3c0

    :try_start_2e
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 54
    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_45

    .line 60
    :goto_3c
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    .line 61
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    .line 62
    return-void

    .line 56
    :catch_45
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private GIPSLog(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 545
    const-string v0, "GIPS Snd Card"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private GIPSLogErr(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 549
    const-string v0, "GIPS Snd Card"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method private GetPlayoutVolume()I
    .registers 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 501
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 504
    :cond_14
    const/4 v0, -0x1

    .line 506
    .local v0, level:I
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_20

    .line 507
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 510
    :cond_20
    return v0
.end method

.method private InitPlayback(I)I
    .registers 14
    .parameter "sampleRate"

    .prologue
    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v0, 0x2

    const/4 v10, 0x0

    .line 137
    invoke-static {p1, v0, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 143
    .local v8, minPlayBufSize:I
    move v5, v8

    .line 144
    .local v5, playBufSize:I
    const/16 v0, 0x1770

    if-ge v5, v0, :cond_f

    .line 145
    mul-int/lit8 v5, v5, 0x2

    .line 147
    :cond_f
    iput v10, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 151
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1d

    .line 153
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 158
    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    .line 159
    const/4 v3, 0x2

    .line 160
    const/4 v4, 0x2

    .line 161
    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 158
    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_33

    .line 168
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v11, :cond_3d

    move v0, v9

    .line 188
    :goto_32
    return v0

    .line 162
    :catch_33
    move-exception v7

    .line 163
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    move v0, v9

    .line 164
    goto :goto_32

    .line 176
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3d
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_51

    .line 178
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 182
    :cond_51
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_57

    move v0, v10

    .line 186
    goto :goto_32

    .line 188
    :cond_57
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_32
.end method

.method private InitRecording(II)I
    .registers 12
    .parameter "audioSource"
    .parameter "sampleRate"

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x2

    .line 69
    invoke-static {p2, v0, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 76
    .local v7, minRecBufSize:I
    mul-int/lit8 v5, v7, 0x2

    .line 77
    .local v5, recBufSize:I
    mul-int/lit8 v0, p2, 0x5

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    .line 81
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1a

    .line 83
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 88
    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/media/AudioRecord;

    .line 89
    const/4 v3, 0x2

    .line 90
    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 88
    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_30

    .line 98
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    move v0, v8

    .line 106
    :goto_2f
    return v0

    .line 92
    :catch_30
    move-exception v6

    .line 93
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    move v0, v8

    .line 94
    goto :goto_2f

    .line 106
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3a
    iget v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    goto :goto_2f
.end method

.method private PlayAudio(I)I
    .registers 9
    .parameter "lengthInBytes"

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, bufferedSamples:I
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 303
    :try_start_6
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_79

    if-nez v4, :cond_11

    .line 359
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    const/4 v4, -0x2

    .line 362
    :goto_10
    return v4

    .line 309
    :cond_11
    :try_start_11
    iget-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_79

    if-eqz v4, :cond_1d

    .line 312
    const/16 v4, -0x13

    :try_start_17
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_61

    .line 316
    :goto_1a
    const/4 v4, 0x0

    :try_start_1b
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 319
    :cond_1d
    const/4 v3, 0x0

    .line 325
    .local v3, written:I
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 326
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    .line 328
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 333
    iget v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 336
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    .line 337
    .local v2, pos:I
    iget v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    if-ge v2, v4, :cond_47

    .line 338
    const/4 v4, 0x0

    iput v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 340
    :cond_47
    iget v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    iget v5, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 341
    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 343
    iget-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v4, :cond_58

    .line 344
    iget v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_79

    .line 350
    :cond_58
    if-eq v3, p1, :cond_80

    .line 359
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 353
    const/4 v4, -0x1

    goto :goto_10

    .line 313
    .end local v2           #pos:I
    .end local v3           #written:I
    :catch_61
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/Exception;
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set play thread priority failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_62 .. :try_end_78} :catchall_79

    goto :goto_1a

    .line 356
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_79
    move-exception v4

    .line 359
    iget-object v5, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw v4

    .line 359
    .restart local v2       #pos:I
    .restart local v3       #written:I
    :cond_80
    iget-object v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v4, v0

    .line 362
    goto :goto_10
.end method

.method private RecordAudio(I)I
    .registers 7
    .parameter "lengthInBytes"

    .prologue
    .line 367
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    :try_start_5
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_53

    if-nez v2, :cond_10

    .line 412
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 374
    const/4 v2, -0x2

    .line 415
    :goto_f
    return v2

    .line 378
    :cond_10
    :try_start_10
    iget-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_53

    if-eqz v2, :cond_1c

    .line 381
    const/16 v2, -0x13

    :try_start_16
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_3b

    .line 385
    :goto_19
    const/4 v2, 0x0

    :try_start_1a
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 388
    :cond_1c
    const/4 v1, 0x0

    .line 389
    .local v1, readBytes:I
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 395
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 397
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_53

    .line 400
    if-eq v1, p1, :cond_79

    .line 412
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 403
    const/4 v2, -0x1

    goto :goto_f

    .line 382
    .end local v1           #readBytes:I
    :catch_3b
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set rec thread priority failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_53

    goto :goto_19

    .line 406
    .end local v0           #e:Ljava/lang/Exception;
    :catch_53
    move-exception v0

    .line 407
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RecordAudio try failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_72

    .line 412
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    .end local v0           #e:Ljava/lang/Exception;
    :goto_6f
    iget v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    goto :goto_f

    .line 409
    :catchall_72
    move-exception v2

    .line 412
    iget-object v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 413
    throw v2

    .line 412
    .restart local v1       #readBytes:I
    :cond_79
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6f
.end method

.method private SetAudioMode(Z)V
    .registers 6
    .parameter "startCall"

    .prologue
    .line 514
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, apiLevel:I
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v2, :cond_1a

    .line 518
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 521
    :cond_1a
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_24

    .line 523
    const-string v2, "Could not set audio mode - no audio manager"

    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    .line 540
    :cond_23
    :goto_23
    return-void

    .line 529
    :cond_24
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "Samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 530
    :cond_38
    const/16 v2, 0x8

    if-ne v2, v0, :cond_23

    .line 533
    if-eqz p1, :cond_52

    const/4 v1, 0x4

    .line 534
    .local v1, mode:I
    :goto_3f
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 535
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_23

    .line 537
    const-string v2, "Could not set audio mode for Samsung device"

    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    goto :goto_23

    .line 533
    .end local v1           #mode:I
    :cond_52
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private SetPlayoutSpeaker(Z)I
    .registers 7
    .parameter "loudspeakerOn"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 421
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v1, :cond_16

    .line 423
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 426
    :cond_16
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_21

    .line 428
    const-string v1, "Could not change audio routing - no audio manager"

    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    .line 429
    const/4 v1, -0x1

    .line 475
    :goto_20
    return v1

    .line 432
    :cond_21
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, apiLevel:I
    const/4 v1, 0x3

    if-eq v1, v0, :cond_2d

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3c

    .line 437
    :cond_2d
    if-eqz p1, :cond_36

    .line 440
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    :goto_34
    move v1, v2

    .line 475
    goto :goto_20

    .line 445
    :cond_36
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_34

    .line 451
    :cond_3c
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "Samsung"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 452
    :cond_50
    const/4 v1, 0x5

    if-eq v1, v0, :cond_59

    const/4 v1, 0x6

    if-eq v1, v0, :cond_59

    const/4 v1, 0x7

    if-ne v1, v0, :cond_71

    .line 455
    :cond_59
    if-eqz p1, :cond_66

    .line 458
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 459
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_34

    .line 464
    :cond_66
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 465
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_34

    .line 471
    :cond_71
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_34
.end method

.method private SetPlayoutVolume(I)I
    .registers 6
    .parameter "level"

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v1, :cond_15

    .line 483
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 486
    :cond_15
    const/4 v0, -0x1

    .line 488
    .local v0, retVal:I
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_20

    .line 489
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 490
    const/4 v0, 0x0

    .line 493
    :cond_20
    return v0
.end method

.method private StartPlayback()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v1, :cond_8

    .line 197
    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 202
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_d} :catch_11

    .line 210
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    .line 211
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 204
    :catch_11
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 207
    const/4 v1, -0x1

    goto :goto_10
.end method

.method private StartRecording()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    if-nez v1, :cond_8

    .line 115
    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 120
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_d} :catch_11

    .line 128
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    .line 129
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 122
    :catch_11
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 125
    const/4 v1, -0x1

    goto :goto_10
.end method

.method private StopPlayback()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 260
    :try_start_7
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 264
    :try_start_10
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_40
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_33

    .line 272
    :try_start_15
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V

    .line 276
    :cond_1a
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 277
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_40

    .line 281
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    iget-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v2, :cond_30

    .line 287
    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 290
    :cond_30
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    .line 291
    :goto_32
    return v1

    .line 265
    :catch_33
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_40

    .line 281
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    const/4 v1, -0x1

    goto :goto_32

    .line 279
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_40
    move-exception v1

    .line 281
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    throw v1
.end method

.method private StopRecording()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 221
    :try_start_7
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3b

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    .line 225
    :try_start_10
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_2e

    .line 234
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 235
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_3b

    .line 240
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    iget-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    if-nez v2, :cond_2b

    .line 246
    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 249
    :cond_2b
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    .line 250
    :goto_2d
    return v1

    .line 226
    :catch_2e
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 240
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    const/4 v1, -0x1

    goto :goto_2d

    .line 237
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_3b
    move-exception v1

    .line 240
    iput-boolean v4, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 242
    throw v1
.end method
