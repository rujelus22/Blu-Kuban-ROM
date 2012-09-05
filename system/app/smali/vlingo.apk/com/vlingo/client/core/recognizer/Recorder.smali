.class public Lcom/vlingo/client/core/recognizer/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Ljavax/microedition/media/PlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/Recorder$1;,
        Lcom/vlingo/client/core/recognizer/Recorder$STATE;
    }
.end annotation


# static fields
.field private static final ACTION_START:Ljava/lang/Integer; = null

.field private static final ACTION_STOP:Ljava/lang/Integer; = null

.field private static final AUDIO_DURATION_LOWER:I = 0x1f4

.field private static final AUDIO_DURATION_MAX_UPPER:I = 0xc350

.field private static final AUDIO_DURATION_MIN_UPPER:I = 0x7d0

.field private static MIN_AUDIO_SEGMENT_SIZE:I = 0x0

.field public static MIN_STREAMING_CHECK_INTERVAL:I = 0x0

.field private static final RECORD_BUFFER_BYTES:I = 0x13c68

.field private static final RECORD_BYTES_PER_SEC:I = 0x654


# instance fields
.field private m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

.field private m_Data:[B

.field private m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

.field private m_MaxAudioDuration:I

.field private m_Offset:I

.field private m_Player:Ljavax/microedition/media/Player;

.field private m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

.field private m_Recorder:Ljavax/microedition/media/control/RecordControl;

.field private m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

.field private m_Time:J

.field private m_requestNumber:I

.field private m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_STOP:Ljava/lang/Integer;

    .line 35
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_START:Ljava/lang/Integer;

    .line 41
    const/16 v0, 0x1f4

    sput v0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_AUDIO_SEGMENT_SIZE:I

    .line 43
    sget v0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_AUDIO_SEGMENT_SIZE:I

    int-to-float v0, v0

    const v1, 0x44ca8000

    div-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_STREAMING_CHECK_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/recognizer/RecorderListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const v0, 0xc350

    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 65
    const v0, 0x13c68

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Data:[B

    .line 66
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/Queue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 67
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    .line 68
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_requestNumber:I

    .line 70
    return-void
.end method

.method public static debugSetAudioStreamingSize(IF)V
    .registers 4
    .parameter "size"
    .parameter "checkIntervalMultiplier"

    .prologue
    .line 60
    sput p0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_AUDIO_SEGMENT_SIZE:I

    .line 61
    sget v0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_AUDIO_SEGMENT_SIZE:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const v1, 0x44ca8000

    div-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_STREAMING_CHECK_INTERVAL:I

    .line 62
    return-void
.end method

.method private declared-synchronized enterStarted()V
    .registers 4

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Time:J

    .line 261
    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 263
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v1, :cond_16

    .line 264
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v2, "STARTED"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 267
    :cond_16
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordStarted()V

    .line 270
    :cond_1b
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, action:Ljava/lang/Integer;
    if-eqz v0, :cond_30

    .line 271
    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_STOP:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1b

    .line 272
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v1, v0}, Lcom/vlingo/client/core/recognizer/RecorderListener;->queueAction(Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_34

    .line 279
    :goto_2e
    monitor-exit p0

    return-void

    .line 278
    :cond_30
    const/4 v1, 0x0

    :try_start_31
    iput v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_34

    goto :goto_2e

    .line 260
    .end local v0           #action:Ljava/lang/Integer;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enterStarting()V
    .registers 6

    .prologue
    .line 158
    sget-object v2, Lcom/vlingo/client/core/recognizer/Recorder$1;->$SwitchMap$com$vlingo$client$core$recognizer$Recorder$STATE:[I

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    .line 170
    :try_start_d
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v2, :cond_18

    .line 171
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v3, "STRB"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 174
    :cond_18
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    if-nez v2, :cond_6a

    .line 176
    const-string v2, "capture://audio"

    invoke-static {v2}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    .line 177
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2, p0}, Ljavax/microedition/media/Player;->addPlayerListener(Ljavax/microedition/media/PlayerListener;)V

    .line 178
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2}, Ljavax/microedition/media/Player;->realize()V

    .line 179
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2}, Ljavax/microedition/media/Player;->prefetch()V

    .line 181
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioDevice;->getInstanceShared()Lcom/vlingo/client/core/audio/AudioDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/audio/AudioDevice;->setBestAudioPath(Ljavax/microedition/media/Player;)I

    .line 183
    new-instance v2, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Data:[B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;-><init>([BI)V

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 185
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    const-string v3, "RecordControl"

    invoke-virtual {v2, v3}, Ljavax/microedition/media/Player;->getControl(Ljava/lang/String;)Ljavax/microedition/media/control/Control;

    move-result-object v2

    check-cast v2, Ljavax/microedition/media/control/RecordControl;

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    .line 186
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v2, v3}, Ljavax/microedition/media/control/RecordControl;->setRecordStream(Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;)V

    .line 187
    iget v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    shl-int/lit8 v1, v2, 0x1

    .line 188
    .local v1, maxRecordSize:I
    const v2, 0x13c68

    if-le v1, v2, :cond_65

    .line 191
    const v1, 0x13c68

    .line 193
    :cond_65
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v2, v1}, Ljavax/microedition/media/control/RecordControl;->setRecordSizeLimit(I)V

    .line 195
    .end local v1           #maxRecordSize:I
    :cond_6a
    sget-object v2, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 196
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordStarting()V

    .line 198
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isInCarMode()Z

    move-result v3

    iget v4, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_requestNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_requestNumber:I

    invoke-virtual {v2, v3, v4}, Ljavax/microedition/media/control/RecordControl;->startRecord(ZI)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 199
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2}, Ljavax/microedition/media/Player;->start()V

    .line 200
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v2, :cond_95

    .line 201
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v3, "STRE"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_95} :catch_a2

    .line 212
    :cond_95
    :goto_95
    :pswitch_95
    return-void

    .line 165
    :pswitch_96
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    sget-object v3, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_START:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    goto :goto_95

    .line 204
    :cond_9e
    :try_start_9e
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->handleStartError()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_95

    .line 207
    :catch_a2
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->handleStartError()V

    goto :goto_95

    .line 158
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_95
        :pswitch_95
        :pswitch_96
    .end packed-switch
.end method

.method private enterStopped()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 345
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    if-ne v0, v1, :cond_9

    .line 374
    :goto_8
    return-void

    .line 349
    :cond_9
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    .line 350
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Time:J

    sub-long/2addr v0, v2

    long-to-int v8, v0

    .line 353
    .local v8, recordTime:I
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 356
    :cond_19
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, action:Ljava/lang/Integer;
    if-eqz v6, :cond_2d

    .line 357
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_START:Ljava/lang/Integer;

    if-ne v6, v0, :cond_19

    .line 358
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v0, v6}, Lcom/vlingo/client/core/recognizer/RecorderListener;->queueAction(Ljava/lang/Integer;)V

    goto :goto_8

    .line 364
    :cond_2d
    const/16 v0, 0x1f4

    if-ge v8, v0, :cond_40

    .line 365
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordError(I)V

    .line 373
    :goto_37
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    goto :goto_8

    .line 367
    :cond_40
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v7

    .line 370
    .local v7, dataCount:I
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    sub-int v3, v7, v3

    const v5, 0x13c68

    sub-int/2addr v5, v7

    const/16 v9, 0xa2

    if-ge v5, v9, :cond_61

    move v5, v4

    :goto_5d
    invoke-interface/range {v0 .. v5}, Lcom/vlingo/client/core/recognizer/RecorderListener;->audioDataAvailable([BIIZZ)V

    goto :goto_37

    :cond_61
    const/4 v5, 0x0

    goto :goto_5d
.end method

.method private enterStopping()V
    .registers 3

    .prologue
    .line 302
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$1;->$SwitchMap$com$vlingo$client$core$recognizer$Recorder$STATE:[I

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 317
    :pswitch_d
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPING:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 318
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v0}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordStopping()V

    .line 320
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    if-eqz v0, :cond_1f

    .line 324
    :try_start_1a
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v0}, Ljavax/microedition/media/control/RecordControl;->commit()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1f} :catch_33

    .line 331
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    if-eqz v0, :cond_28

    .line 333
    :try_start_23
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_31

    .line 339
    :cond_28
    :goto_28
    :pswitch_28
    return-void

    .line 313
    :pswitch_29
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_STOP:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    goto :goto_28

    .line 334
    :catch_31
    move-exception v0

    goto :goto_28

    .line 325
    :catch_33
    move-exception v0

    goto :goto_1f

    .line 302
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_d
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private handleStartError()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STOPPED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Time:J

    .line 220
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    if-eqz v0, :cond_12

    .line 222
    :try_start_d
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v0}, Ljavax/microedition/media/control/RecordControl;->commit()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_26

    .line 229
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    if-eqz v0, :cond_1b

    .line 230
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->close()V

    .line 233
    :cond_1b
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    .line 234
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    .line 235
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    const/4 v1, -0x5

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordError(I)V

    .line 236
    return-void

    .line 223
    :catch_26
    move-exception v0

    goto :goto_12
.end method


# virtual methods
.method declared-synchronized cleanUp()V
    .registers 3

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder$1;->$SwitchMap$com$vlingo$client$core$recognizer$Recorder$STATE:[I

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    packed-switch v0, :pswitch_data_36

    .line 405
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 388
    :pswitch_10
    :try_start_10
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 389
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopping()V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1c

    goto :goto_e

    .line 385
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :pswitch_1f
    :try_start_1f
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    if-eqz v0, :cond_28

    .line 395
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v0}, Ljavax/microedition/media/control/RecordControl;->cleanUp()V

    .line 397
    :cond_28
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopped()V

    goto :goto_e

    .line 401
    :goto_2c
    :pswitch_2c
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_2c

    .line 385
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_1f
        :pswitch_2c
    .end packed-switch
.end method

.method public getMaxAudioDuration()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    return v0
.end method

.method declared-synchronized notify(Ljava/lang/Integer;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_STOP:Ljava/lang/Integer;

    if-ne p1, v0, :cond_a

    .line 283
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopping()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    .line 287
    :goto_8
    monitor-exit p0

    return-void

    .line 285
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStarting()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_8

    .line 282
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .parameter "player"
    .parameter "event"
    .parameter "eventData"

    .prologue
    .line 430
    if-eqz p3, :cond_12

    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_12

    move-object v0, p3

    .line 431
    check-cast v0, Ljava/lang/Integer;

    .line 432
    .local v0, i:Ljava/lang/Integer;
    iget v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_requestNumber:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 460
    .end local v0           #i:Ljava/lang/Integer;
    .end local p3
    :cond_11
    :goto_11
    return-void

    .line 439
    .restart local p3
    :cond_12
    const-string v2, "RecordInfo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 440
    check-cast p3, [I

    .end local p3
    move-object v1, p3

    check-cast v1, [I

    .line 441
    .local v1, recordInfo:[I
    if-eqz v1, :cond_11

    .line 442
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_11

    .line 443
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isInCarMode()Z

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordInfo(IIIZ)V

    goto :goto_11

    .line 447
    .end local v1           #recordInfo:[I
    .restart local p3
    :cond_38
    const-string v2, "RecordStart"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 450
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStarted()V

    goto :goto_11

    .line 452
    :cond_44
    const-string v2, "RecordStop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 453
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordStopped()V

    .line 454
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopped()V

    goto :goto_11

    .line 455
    :cond_55
    const-string v2, "RecordError"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 456
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    const/4 v3, -0x5

    invoke-interface {v2, v3}, Lcom/vlingo/client/core/recognizer/RecorderListener;->recordError(I)V

    goto :goto_11

    .line 457
    :cond_64
    const-string v2, "net.rim.device.internal.media.recordCommitted"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 458
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopped()V

    goto :goto_11
.end method

.method declared-synchronized prepareRecord(Z)V
    .registers 7
    .parameter "useBluetoothIfAvailable"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v2, :cond_c

    .line 108
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v3, "PPRS"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 113
    :cond_c
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    if-nez v2, :cond_74

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_7b

    if-nez v2, :cond_74

    .line 118
    :try_start_14
    const-string v2, "capture://audio"

    invoke-static {v2}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    .line 119
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2, p0}, Ljavax/microedition/media/Player;->addPlayerListener(Ljavax/microedition/media/PlayerListener;)V

    .line 120
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2}, Ljavax/microedition/media/Player;->realize()V

    .line 121
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2}, Ljavax/microedition/media/Player;->prefetch()V

    .line 124
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioDevice;->getInstanceShared()Lcom/vlingo/client/core/audio/AudioDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/audio/AudioDevice;->setBestAudioPath(Ljavax/microedition/media/Player;)I

    .line 126
    new-instance v2, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Data:[B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;-><init>([BI)V

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 128
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    const-string v3, "RecordControl"

    invoke-virtual {v2, v3}, Ljavax/microedition/media/Player;->getControl(Ljava/lang/String;)Ljavax/microedition/media/control/Control;

    move-result-object v2

    check-cast v2, Ljavax/microedition/media/control/RecordControl;

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    .line 129
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v2, v3}, Ljavax/microedition/media/control/RecordControl;->setRecordStream(Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;)V

    .line 131
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    invoke-virtual {v2, v3}, Ljavax/microedition/media/control/RecordControl;->setRecordTimeLimit(I)V

    .line 134
    iget v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    shl-int/lit8 v1, v2, 0x1

    .line 135
    .local v1, maxRecordSize:I
    const v2, 0x13c68

    if-le v1, v2, :cond_64

    .line 138
    const v1, 0x13c68

    .line 140
    :cond_64
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v2, v1}, Ljavax/microedition/media/control/RecordControl;->setRecordSizeLimit(I)V

    .line 141
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v2, :cond_74

    .line 142
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v3, "PPRE"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_14 .. :try_end_74} :catchall_7b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_74} :catch_76

    .line 151
    .end local v1           #maxRecordSize:I
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    .line 145
    :catch_76
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Throwable;
    :try_start_77
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->handleStartError()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_74

    .line 107
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_7b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized rebuildRecorder()V
    .registers 4

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-eqz v1, :cond_a

    .line 244
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    invoke-virtual {v1}, Ljavax/microedition/media/control/RecordControl;->commit()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_26
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_1b

    .line 249
    :cond_a
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    if-eqz v1, :cond_13

    .line 250
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;

    invoke-virtual {v1}, Ljavax/microedition/media/Player;->close()V

    .line 252
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Recorder:Ljavax/microedition/media/control/RecordControl;

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Player:Ljavax/microedition/media/Player;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_26

    .line 254
    monitor-exit p0

    return-void

    .line 245
    :catch_1b
    move-exception v0

    .line 246
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1c
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_a

    .line 242
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMaxAudioDuration(I)V
    .registers 4
    .parameter "max"

    .prologue
    const v1, 0xc350

    const/16 v0, 0x7d0

    .line 81
    if-ge p1, v0, :cond_a

    .line 82
    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    .line 88
    :goto_9
    return-void

    .line 83
    :cond_a
    if-le p1, v1, :cond_f

    .line 84
    iput v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    goto :goto_9

    .line 86
    :cond_f
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_MaxAudioDuration:I

    goto :goto_9
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 74
    return-void
.end method

.method declared-synchronized start()V
    .registers 3

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStarting()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 98
    :goto_c
    monitor-exit p0

    return-void

    .line 96
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_START:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    .line 93
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .registers 3

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 293
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recorder;->enterStopping()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 297
    :goto_c
    monitor-exit p0

    return-void

    .line 295
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Queue:Lcom/vlingo/client/core/recognizer/Queue;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder;->ACTION_STOP:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    .line 292
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized streamAudioData()V
    .registers 8

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_State:Lcom/vlingo/client/core/recognizer/Recorder$STATE;

    sget-object v1, Lcom/vlingo/client/core/recognizer/Recorder$STATE;->STARTED:Lcom/vlingo/client/core/recognizer/Recorder$STATE;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eq v0, v1, :cond_9

    .line 420
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 415
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v6

    .line 416
    .local v6, dataCount:I
    iget v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    sub-int v0, v6, v0

    sget v1, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_AUDIO_SEGMENT_SIZE:I

    if-lt v0, v1, :cond_7

    .line 417
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Listener:Lcom/vlingo/client/core/recognizer/RecorderListener;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I

    sub-int v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/vlingo/client/core/recognizer/RecorderListener;->audioDataAvailable([BIIZZ)V

    .line 418
    iput v6, p0, Lcom/vlingo/client/core/recognizer/Recorder;->m_Offset:I
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2d

    goto :goto_7

    .line 408
    .end local v6           #dataCount:I
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
