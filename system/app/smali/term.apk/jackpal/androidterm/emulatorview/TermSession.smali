.class public Ljackpal/androidterm/emulatorview/TermSession;
.super Ljava/lang/Object;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;
    }
.end annotation


# static fields
.field private static final FINISH:I = 0x3

.field private static final NEW_INPUT:I = 0x1

.field private static final NEW_OUTPUT:I = 0x2

.field private static final TRANSCRIPT_ROWS:I = 0x2710


# instance fields
.field private mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

.field private mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

.field private mDefaultUTF8Mode:Z

.field private mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

.field private mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

.field private mIsRunning:Z

.field private mMsgHandler:Landroid/os/Handler;

.field private mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mReaderThread:Ljava/lang/Thread;

.field private mReceiveBuffer:[B

.field private mTermIn:Ljava/io/InputStream;

.field private mTermOut:Ljava/io/OutputStream;

.field private mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

.field private mWriteByteBuffer:Ljava/nio/ByteBuffer;

.field private mWriteCharBuffer:Ljava/nio/CharBuffer;

.field private mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

.field private mWriterHandler:Landroid/os/Handler;

.field private mWriterThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x1000

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 106
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$1;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    .line 119
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 120
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 121
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 122
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 123
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    .line 126
    new-instance v0, Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    .line 127
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$2;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    const-string v1, "TermSession input reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    .line 151
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$3;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    .line 199
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    const-string v1, "TermSession output writer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/emulatorview/TermSession;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession;->readFromProcess()V

    return-void
.end method

.method static synthetic access$200(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Ljackpal/androidterm/emulatorview/TermSession;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$800(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private notifyNewOutput()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    .line 290
    .local v0, writerHandler:Landroid/os/Handler;
    if-nez v0, :cond_5

    .line 295
    :goto_4
    return-void

    .line 294
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private readFromProcess()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 403
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v0

    .line 404
    .local v0, bytesAvailable:I
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 405
    .local v2, bytesToRead:I
    const/4 v1, 0x0

    .line 407
    .local v1, bytesRead:I
    :try_start_f
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;->read([BII)I
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_21

    move-result v1

    .line 413
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    invoke-virtual {p0, v4, v7, v1}, Ljackpal/androidterm/emulatorview/TermSession;->processInput([BII)V

    .line 414
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyUpdate()V

    .line 415
    :goto_20
    return-void

    .line 408
    :catch_21
    move-exception v3

    .line 409
    .local v3, e:Ljava/lang/InterruptedException;
    goto :goto_20
.end method


# virtual methods
.method protected final appendToEmulator([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 444
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 445
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 534
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->finish()V

    .line 537
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    :try_start_e
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 540
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_22

    .line 545
    :goto_18
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    if-eqz v0, :cond_21

    .line 546
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    invoke-interface {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;->onSessionFinish(Ljackpal/androidterm/emulatorview/TermSession;)V

    .line 548
    :cond_21
    return-void

    .line 541
    :catch_22
    move-exception v0

    goto :goto_18
.end method

.method getEmulator()Ljackpal/androidterm/emulatorview/TerminalEmulator;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method public getTermIn()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTermOut()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method getTranscriptScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    return-object v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8Mode()Z
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 491
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 493
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getUTF8Mode()Z

    move-result v0

    goto :goto_6
.end method

.method public initializeEmulator(II)V
    .registers 9
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 209
    new-instance v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;

    const/16 v1, 0x2710

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    invoke-direct {v0, p1, v1, p2, v2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;-><init>(IIILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 210
    new-instance v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;-><init>(Ljackpal/androidterm/emulatorview/TermSession;Ljackpal/androidterm/emulatorview/Screen;IILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    .line 211
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget-boolean v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 214
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method protected notifyUpdate()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 366
    :cond_9
    return-void
.end method

.method protected processInput([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 431
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 432
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->reset()V

    .line 514
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyUpdate()V

    .line 515
    return-void
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 3
    .parameter "scheme"

    .prologue
    .line 454
    if-nez p1, :cond_4

    .line 455
    sget-object p1, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 457
    :cond_4
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 458
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_b

    .line 463
    :goto_a
    return-void

    .line 461
    :cond_b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 462
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    goto :goto_a
.end method

.method public setDefaultUTF8Mode(Z)V
    .registers 3
    .parameter "utf8ByDefault"

    .prologue
    .line 477
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 478
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 482
    :goto_6
    return-void

    .line 481
    :cond_7
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    goto :goto_6
.end method

.method public setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 524
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    .line 525
    return-void
.end method

.method public setTermIn(Ljava/io/InputStream;)V
    .registers 2
    .parameter "termIn"

    .prologue
    .line 330
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    .line 331
    return-void
.end method

.method public setTermOut(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "termOut"

    .prologue
    .line 312
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    .line 313
    return-void
.end method

.method public setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .parameter "utf8ModeNotify"

    .prologue
    .line 504
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-eqz v0, :cond_9

    .line 505
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 507
    :cond_9
    return-void
.end method

.method public setUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 2
    .parameter "notify"

    .prologue
    .line 355
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 356
    return-void
.end method

.method public updateSize(II)V
    .registers 4
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 382
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_8

    .line 383
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 387
    :goto_7
    return-void

    .line 385
    :cond_8
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->updateSize(II)V

    goto :goto_7
.end method

.method public write(I)V
    .registers 8
    .parameter "codePoint"

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 275
    .local v1, charBuf:Ljava/nio/CharBuffer;
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 276
    .local v0, byteBuf:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 278
    .local v2, encoder:Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 279
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 280
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-static {p1, v3, v5}, Ljava/lang/Character;->toChars(I[CI)I

    .line 281
    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 282
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 283
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v5, v4}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    .line 285
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 255
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 256
    .local v0, bytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 259
    .end local v0           #bytes:[B
    :goto_b
    return-void

    .line 257
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public write([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/ByteQueue;->write([BII)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_9

    .line 239
    :goto_5
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyNewOutput()V

    .line 240
    return-void

    .line 237
    :catch_9
    move-exception v0

    goto :goto_5
.end method
