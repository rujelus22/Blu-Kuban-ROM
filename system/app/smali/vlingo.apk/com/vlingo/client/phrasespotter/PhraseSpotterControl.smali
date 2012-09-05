.class public Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;
.super Ljava/lang/Object;
.source "PhraseSpotterControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    }
.end annotation


# static fields
.field private static final RECORDER_BUFFER_SIZE:I = 0x9c40

.field private static final RECORDING_WAIT_TIME:I = 0x7d0

.field public static volatile SAMPLE_RATE:I

.field private static lastFakeWaveform:Ljava/lang/String;

.field private static logWaveFormCount:I

.field private static logWaveform:Z

.field private static logWaveformDOS:Ljava/io/DataOutputStream;

.field private static logWaveformData:Ljava/io/ByteArrayOutputStream;

.field private static s_processCounter:I

.field private static tonePlayWhenSpotting:Z


# instance fields
.field private m_chunkSize:J

.field private m_currentSamplesInBuffer:I

.field private m_numRead:I

.field private m_numToRead:I

.field private m_rawAudioBuffer:[S

.field private m_record:Landroid/media/AudioRecord;

.field private volatile m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

.field private volatile recordingThread:Ljava/lang/Thread;

.field private sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field private tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

.field private wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    const/16 v0, 0x3e80

    sput v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->SAMPLE_RATE:I

    .line 41
    sput v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    .line 52
    sput-boolean v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveform:Z

    .line 53
    sput-object v2, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 54
    sput-object v2, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 55
    sput v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveFormCount:I

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/phrasespotter/SensoryJNI;Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;)V
    .registers 7
    .parameter "jni"
    .parameter "player"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    .line 44
    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_rawAudioBuffer:[S

    .line 45
    iput v2, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_currentSamplesInBuffer:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_chunkSize:J

    .line 47
    sget-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    .line 70
    iput-object p1, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 71
    iput-object p2, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 72
    iput-object p3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    .line 73
    sput-boolean v2, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayWhenSpotting:Z

    .line 74
    const-string v0, "tones_when_spotting"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayWhenSpotting:Z

    .line 75
    return-void
.end method

.method public static WriteWaveform()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 257
    sget v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveFormCount:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_7

    .line 297
    :cond_6
    :goto_6
    return-void

    .line 259
    :cond_7
    sget-boolean v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveform:Z

    if-eqz v5, :cond_6

    .line 261
    :try_start_b
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 262
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_6f

    .line 267
    .local v1, e:Ljava/io/IOException;
    :goto_15
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_64

    .line 268
    const/4 v2, 0x0

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 271
    .local v4, root:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 272
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhraseSpotter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v0, audfile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4d} :catch_79

    .line 275
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_4d
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_59} :catch_a1

    move-object v2, v3

    .line 283
    .end local v0           #audfile:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_5a
    if-eqz v2, :cond_5f

    .line 285
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_74

    .line 290
    :cond_5f
    :goto_5f
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 293
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #root:Ljava/io/File;
    :cond_64
    :goto_64
    sput-object v7, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 294
    sput-object v7, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 295
    sget v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveFormCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveFormCount:I

    goto :goto_6

    .line 263
    :catch_6f
    move-exception v1

    .line 264
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 286
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #root:Ljava/io/File;
    :catch_74
    move-exception v1

    .line 287
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 280
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #root:Ljava/io/File;
    :catch_79
    move-exception v1

    .line 281
    .restart local v1       #e:Ljava/io/IOException;
    :goto_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8d

    .line 283
    if-eqz v2, :cond_82

    .line 285
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_88

    .line 290
    :cond_82
    :goto_82
    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_64

    .line 286
    :catch_88
    move-exception v1

    .line 287
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 283
    .end local v1           #e:Ljava/io/IOException;
    :catchall_8d
    move-exception v5

    :goto_8e
    if-eqz v2, :cond_93

    .line 285
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_99

    .line 290
    :cond_93
    :goto_93
    sget-object v6, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v5

    .line 286
    :catch_99
    move-exception v1

    .line 287
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    .line 283
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #audfile:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #root:Ljava/io/File;
    :catchall_9e
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_8e

    .line 280
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_a1
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_7a
.end method

.method private declared-synchronized getState()Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processAudio()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 300
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    sget-object v4, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-ne v3, v4, :cond_53

    .line 301
    iget-wide v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_chunkSize:J

    long-to-int v3, v3

    iput v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numToRead:I

    .line 302
    iget v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numToRead:I

    if-lez v3, :cond_53

    .line 303
    iput v7, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    .line 304
    monitor-enter p0

    .line 306
    :try_start_13
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    if-eqz v3, :cond_52

    .line 307
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_rawAudioBuffer:[S

    const/4 v5, 0x0

    iget v6, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numToRead:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    iput v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_54

    .line 314
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_57

    .line 317
    iget v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    if-lez v3, :cond_53

    .line 319
    sget-boolean v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveform:Z

    if-eqz v3, :cond_6c

    .line 321
    sget-object v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    if-nez v3, :cond_41

    .line 322
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 323
    new-instance v3, Ljava/io/DataOutputStream;

    sget-object v4, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 326
    :cond_41
    const/4 v2, 0x0

    .local v2, i:I
    :goto_42
    iget v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    if-ge v2, v3, :cond_5f

    .line 328
    :try_start_46
    sget-object v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_rawAudioBuffer:[S

    aget-short v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_5a

    .line 326
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 309
    .end local v2           #i:I
    :cond_52
    :try_start_52
    monitor-exit p0

    .line 382
    :cond_53
    :goto_53
    return-void

    .line 311
    :catch_54
    move-exception v1

    .line 312
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit p0

    goto :goto_53

    .line 314
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_57
    move-exception v3

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw v3

    .line 329
    .restart local v2       #i:I
    :catch_5a
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 335
    .end local v0           #e:Ljava/io/IOException;
    :cond_5f
    sget v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    rem-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_6c

    sget v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    if-eqz v3, :cond_6c

    .line 337
    invoke-static {}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->WriteWaveform()V

    .line 340
    .end local v2           #i:I
    :cond_6c
    iget v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_currentSamplesInBuffer:I

    iget v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_currentSamplesInBuffer:I

    .line 364
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_rawAudioBuffer:[S

    iget v5, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v3

    if-eqz v3, :cond_84

    .line 367
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    invoke-interface {v3}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;->onPhraseSpotted()Z

    .line 369
    :cond_84
    sget-boolean v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayWhenSpotting:Z

    if-eqz v3, :cond_9b

    .line 370
    sget v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    rem-int/lit8 v3, v3, 0x32

    if-nez v3, :cond_9b

    sget v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    if-eqz v3, :cond_9b

    .line 372
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    if-eqz v3, :cond_9b

    .line 373
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    invoke-virtual {v3}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playSnoreTone()V

    .line 377
    :cond_9b
    sget v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->s_processCounter:I

    .line 378
    iput v7, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_currentSamplesInBuffer:I

    goto :goto_53
.end method

.method public static setTonePlayWhenSpotting(Z)V
    .registers 1
    .parameter "play"

    .prologue
    .line 84
    sput-boolean p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->tonePlayWhenSpotting:Z

    .line 85
    return-void
.end method

.method private stopAudioRecording()V
    .registers 2

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_12

    .line 229
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_18
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_1b

    .line 234
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    .line 239
    :cond_12
    sget-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    .line 240
    monitor-exit p0

    .line 242
    return-void

    .line 240
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0

    .line 230
    :catch_1b
    move-exception v0

    goto :goto_a
.end method

.method private waitForRecordToStop()V
    .registers 8

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->getState()Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    move-result-object v3

    sget-object v4, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-eq v3, v4, :cond_33

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 129
    .local v1, start:J
    invoke-virtual {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->stopRecord()V

    .line 130
    :goto_f
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->getState()Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    move-result-object v3

    sget-object v4, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-eq v3, v4, :cond_33

    const-wide/16 v3, 0x7d0

    add-long/2addr v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_33

    .line 131
    const-wide/16 v3, 0x64

    :try_start_24
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_f

    :catch_28
    move-exception v0

    .line 132
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 136
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #start:J
    :cond_33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->recordingThread:Ljava/lang/Thread;

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 98
    .local v1, thisThread:Ljava/lang/Thread;
    :try_start_4
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_9} :catch_22

    .line 104
    :goto_9
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    sget-object v5, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-ne v4, v5, :cond_3c

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->recordingThread:Ljava/lang/Thread;

    if-ne v1, v4, :cond_3c

    .line 105
    iget v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numRead:I

    iget v5, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_numToRead:I

    if-eq v4, v5, :cond_1e

    .line 106
    const-wide/16 v2, 0x32

    .line 108
    .local v2, timeToSleep:J
    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_31

    .line 113
    .end local v2           #timeToSleep:J
    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->processAudio()V

    goto :goto_9

    .line 99
    :catch_22
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    iput-object v4, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    .line 101
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 109
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #timeToSleep:J
    :catch_31
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #timeToSleep:J
    :cond_3c
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->stopAudioRecording()V

    .line 120
    return-void
.end method

.method public startRecord()Z
    .registers 15

    .prologue
    const v4, 0x9c40

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 144
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->waitForRecordToStop()V

    .line 146
    monitor-enter p0

    .line 147
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    sget-object v2, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->IDLE:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-eq v0, v2, :cond_11

    .line 150
    monitor-exit p0

    .line 220
    :goto_10
    return v10

    .line 152
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_68

    .line 153
    const/16 v8, 0x640

    .line 155
    .local v8, newChunkSize:I
    int-to-long v2, v8

    iget-wide v12, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_chunkSize:J

    cmp-long v0, v2, v12

    if-eqz v0, :cond_25

    .line 156
    int-to-long v2, v8

    iput-wide v2, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_chunkSize:J

    .line 157
    iget-wide v2, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_chunkSize:J

    long-to-int v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_rawAudioBuffer:[S

    .line 160
    :cond_25
    const/4 v6, 0x2

    .line 161
    .local v6, channelConfig:I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_6b

    const/4 v1, 0x6

    .line 165
    .local v1, source:I
    :goto_2c
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_66

    .line 166
    const/4 v0, 0x0

    :try_start_2e
    iput v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_currentSamplesInBuffer:I

    .line 179
    sget v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->SAMPLE_RATE:I

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 185
    .local v5, bufsize:I
    if-ge v5, v4, :cond_48

    .line 186
    const v0, 0x9c40

    div-int v2, v0, v5

    const v0, 0x9c40

    rem-int/2addr v0, v5

    if-lez v0, :cond_6d

    move v0, v11

    :goto_46
    add-int/2addr v0, v2

    mul-int/2addr v5, v0

    .line 191
    :cond_48
    new-instance v0, Landroid/media/AudioRecord;

    sget v2, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->SAMPLE_RATE:I

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    .line 194
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v9

    .line 197
    .local v9, state:I
    if-eq v9, v11, :cond_6f

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "AudioRecord constructed but in uninitialized state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    .end local v5           #bufsize:I
    .end local v9           #state:I
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_2e .. :try_end_65} :catchall_63

    :try_start_65
    throw v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 216
    :catch_66
    move-exception v7

    .line 217
    .local v7, e:Ljava/lang/Exception;
    goto :goto_10

    .line 152
    .end local v1           #source:I
    .end local v6           #channelConfig:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #newChunkSize:I
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .restart local v6       #channelConfig:I
    .restart local v8       #newChunkSize:I
    :cond_6b
    move v1, v10

    .line 161
    goto :goto_2c

    .restart local v1       #source:I
    .restart local v5       #bufsize:I
    :cond_6d
    move v0, v10

    .line 186
    goto :goto_46

    .line 206
    .restart local v9       #state:I
    :cond_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_63

    .line 210
    :try_start_70
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->recordingThread:Ljava/lang/Thread;

    .line 211
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->recordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    sget-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_66

    move v10, v11

    .line 220
    goto :goto_10
.end method

.method public stopRecord()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    sget-object v1, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->RECORDING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    if-ne v0, v1, :cond_a

    .line 249
    sget-object v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;->STOPPING:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->m_state:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl$STATE;

    .line 251
    :cond_a
    return-void
.end method
