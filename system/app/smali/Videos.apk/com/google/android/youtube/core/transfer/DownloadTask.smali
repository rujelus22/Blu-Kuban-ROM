.class public Lcom/google/android/youtube/core/transfer/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;


# instance fields
.field private cancelLock:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final debug:Z

.field private final expectedSize:J

.field private final filePath:Ljava/lang/String;

.field private lastReportedProgress:J

.field private final listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

.field private final networkUri:Ljava/lang/String;

.field private final offset:J

.field private final preAllocate:Z

.field private final progressGranularity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;IZZ)V
    .registers 16
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "offset"
    .parameter "expectedSize"
    .parameter "listener"
    .parameter "progressGranularity"
    .parameter "debug"
    .parameter "preAllocate"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    .line 92
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    .line 93
    cmp-long v0, p3, v3

    if-ltz v0, :cond_3c

    move v0, v1

    :goto_18
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 94
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    .line 95
    cmp-long v0, p5, v3

    if-ltz v0, :cond_3e

    :goto_21
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 96
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    .line 97
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    .line 98
    iput p8, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->progressGranularity:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->cancelLock:Ljava/lang/Object;

    .line 100
    iput-boolean p9, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug:Z

    .line 101
    iput-boolean p10, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->preAllocate:Z

    .line 102
    return-void

    :cond_3c
    move v0, v2

    .line 93
    goto :goto_18

    :cond_3e
    move v1, v2

    .line 95
    goto :goto_21
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/TransferTask$Listener;ZZ)V
    .registers 19
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "expectedSize"
    .parameter "listener"
    .parameter "debug"
    .parameter "preAllocate"

    .prologue
    .line 73
    const-wide/16 v3, 0x0

    const/high16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;IZZ)V

    .line 81
    return-void
.end method

.method private close(Ljava/io/InputStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 392
    if-nez p1, :cond_3

    .line 400
    :goto_2
    return-void

    .line 396
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 397
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private close(Ljava/nio/channels/FileChannel;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 372
    if-nez p1, :cond_3

    .line 389
    :goto_2
    return-void

    .line 376
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 377
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_17

    .line 384
    :try_start_a
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2

    .line 385
    :catch_e
    move-exception v0

    goto :goto_2

    .line 378
    :catch_10
    move-exception v0

    .line 384
    :try_start_11
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2

    .line 385
    :catch_15
    move-exception v0

    goto :goto_2

    .line 380
    :catch_17
    move-exception v0

    .line 384
    :try_start_18
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 385
    :catch_1c
    move-exception v0

    goto :goto_2

    .line 383
    :catchall_1e
    move-exception v0

    .line 384
    :try_start_1f
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 387
    :goto_22
    throw v0

    .line 385
    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method private debug(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug:Z

    if-eqz v0, :cond_2f

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    :cond_2f
    invoke-static {p1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 7
    .parameter "is"
    .parameter "fc"
    .parameter "connection"
    .parameter "e"

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/io/InputStream;)V

    .line 355
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 356
    if-eqz p3, :cond_35

    .line 357
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 359
    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    .line 360
    return-void
.end method

.method private doProgress(JZ)V
    .registers 8
    .parameter "downloaded"
    .parameter "last"

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->lastReportedProgress:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->progressGranularity:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    if-eqz p3, :cond_38

    .line 345
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 347
    iput-wide p1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->lastReportedProgress:J

    .line 349
    :cond_38
    return-void
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 14
    .parameter "connection"

    .prologue
    const/4 v7, 0x1

    .line 307
    const-wide/16 v0, -0x1

    .line 309
    .local v0, contentLength:J
    const-string v8, "Content-Length"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, contentLengthHeader:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 312
    :try_start_f
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_89

    move-result-wide v0

    .line 318
    :cond_13
    :goto_13
    const-string v8, "Content-Range"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, contentRangeHeader:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 320
    sget-object v8, Lcom/google/android/youtube/core/transfer/DownloadTask;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 321
    .local v6, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 323
    const/4 v8, 0x2

    :try_start_2c
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 325
    .local v2, contentLengthFromRange:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_60

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using contentLength parsed from Content-Range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 329
    move-wide v0, v2

    .line 340
    .end local v2           #contentLengthFromRange:J
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :cond_5f
    :goto_5f
    return-wide v0

    .line 331
    .restart local v2       #contentLengthFromRange:J
    .restart local v6       #matcher:Ljava/util/regex/Matcher;
    :cond_60
    cmp-long v8, v0, v2

    if-nez v8, :cond_87

    :goto_64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match Content-Range "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_84} :catch_85

    goto :goto_5f

    .line 334
    .end local v2           #contentLengthFromRange:J
    :catch_85
    move-exception v7

    goto :goto_5f

    .line 331
    .restart local v2       #contentLengthFromRange:J
    :cond_87
    const/4 v7, 0x0

    goto :goto_64

    .line 313
    .end local v2           #contentLengthFromRange:J
    .end local v5           #contentRangeHeader:Ljava/lang/String;
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :catch_89
    move-exception v8

    goto :goto_13
.end method

.method private is2xxStatusCode(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 363
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isFatalStatusCode(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 368
    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/16 v0, 0x198

    if-eq p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .registers 8
    .parameter "url"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2710

    .line 297
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 298
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 299
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 301
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 303
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected download()V
    .registers 34

    .prologue
    .line 124
    const-string v29, "download starting"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug(Ljava/lang/String;)V

    .line 126
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v18, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 128
    .local v6, connection:Ljava/net/HttpURLConnection;
    const/16 v19, 0x0

    .line 129
    .local v19, is:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 130
    .local v21, raf:Ljava/io/RandomAccessFile;
    const/4 v13, 0x0

    .line 131
    .local v13, fc:Ljava/nio/channels/FileChannel;
    const-wide/16 v25, 0x0

    .line 132
    .local v25, size:J
    const-wide/16 v10, 0x0

    .line 134
    .local v10, downloaded:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "opening output "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 136
    :try_start_3e
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_4e

    .line 137
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 138
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 140
    :cond_4e
    new-instance v22, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "rw"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_546

    .line 141
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .local v22, raf:Ljava/io/RandomAccessFile;
    :try_start_61
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_d6

    .line 142
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "writing from "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v29, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    .line 150
    :goto_9a
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_9d} :catch_f8

    move-result-object v13

    .line 156
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_110

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v29, v0

    cmp-long v29, v10, v29

    if-nez v29, :cond_110

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 159
    const-string v29, "download already completed"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v21, v22

    .line 294
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :goto_d5
    return-void

    .line 146
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_d6
    :try_start_d6
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    .line 147
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 148
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "appending from "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f7} :catch_f8

    goto :goto_9a

    .line 151
    :catch_f8
    move-exception v12

    move-object/from16 v21, v22

    .line 152
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .local v12, e:Ljava/lang/Exception;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :goto_fb
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_d5

    .line 164
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_110
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "opening input "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 166
    :try_start_12c
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v27, url:Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/youtube/core/transfer/DownloadTask;->makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 168
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    .line 169
    .local v24, responseCode:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/youtube/core/transfer/DownloadTask;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v7

    .line 170
    .local v7, contentLength:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "responseCode="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " contentLength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_1e3

    const/16 v29, 0x1a0

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e3

    .line 176
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    const-wide/16 v29, 0x1

    sub-long v29, v10, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/DownloadTask;->makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 179
    .local v20, newResponseCode:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->is2xxStatusCode(I)Z

    move-result v29

    if-eqz v29, :cond_1e3

    .line 180
    const-string v29, "download already completed"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 182
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v21, v22

    .line 185
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 189
    .end local v20           #newResponseCode:I
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_1e3
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->is2xxStatusCode(I)Z

    move-result v29

    if-nez v29, :cond_21e

    .line 190
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "http status "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->isFatalStatusCode(I)Z

    move-result v31

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 192
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 193
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_21e
    const-wide/16 v29, 0x1

    cmp-long v29, v7, v29

    if-gez v29, :cond_24d

    .line 194
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "content length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 195
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 198
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_24d
    const-wide/16 v29, 0x0

    cmp-long v29, v10, v29

    if-lez v29, :cond_2ab

    .line 199
    const-string v29, "Content-Range"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, contentRangeHeader:Ljava/lang/String;
    if-eqz v9, :cond_27a

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_2ab

    .line 201
    :cond_27a
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Range "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", not "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    .line 206
    .end local v9           #contentRangeHeader:Ljava/lang/String;
    :cond_2ab
    add-long v25, v10, v7

    .line 207
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "size is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_308

    .line 209
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v29, v0

    cmp-long v29, v25, v29

    if-eqz v29, :cond_31d

    .line 210
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unexpected size "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 211
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 214
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 217
    :cond_31d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->preAllocate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_32c

    .line 218
    move-object/from16 v0, v22

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 221
    :cond_32c
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_32f} :catch_395

    move-result-object v19

    .line 227
    const/high16 v29, 0x1

    move/from16 v0, v29

    new-array v4, v0, [B

    .line 228
    .local v4, byteArray:[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 229
    .local v5, byteBuffer:Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    .line 230
    .local v23, read:I
    :goto_33c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v29, v0

    if-nez v29, :cond_362

    const/16 v29, -0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_362

    .line 233
    const/16 v29, 0x0

    const/high16 v30, 0x1

    :try_start_350
    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_359
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_359} :catch_3ae

    move-result v23

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3c7

    .line 280
    :cond_362
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/io/InputStream;)V

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 282
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4eb

    .line 285
    const-string v29, "download canceled"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCanceled(Ljava/lang/String;)V

    :goto_391
    move-object/from16 v21, v22

    .line 294
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 222
    .end local v4           #byteArray:[B
    .end local v5           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v7           #contentLength:J
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .end local v23           #read:I
    .end local v24           #responseCode:I
    .end local v27           #url:Ljava/net/URL;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :catch_395
    move-exception v12

    .line 223
    .restart local v12       #e:Ljava/lang/Exception;
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 224
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 234
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #byteArray:[B
    .restart local v5       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v7       #contentLength:J
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    .restart local v23       #read:I
    .restart local v24       #responseCode:I
    .restart local v27       #url:Ljava/net/URL;
    :catch_3ae
    move-exception v12

    .line 235
    .restart local v12       #e:Ljava/lang/Exception;
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 236
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 243
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_3c7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->preAllocate:Z

    move/from16 v29, v0

    if-nez v29, :cond_45d

    .line 245
    :try_start_3cf
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v14

    .line 246
    .local v14, fcPosition:J
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    .line 247
    .local v16, fcSize:J
    cmp-long v29, v14, v10

    if-nez v29, :cond_3eb

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_45d

    cmp-long v29, v16, v10

    if-eqz v29, :cond_45d

    .line 248
    :cond_3eb
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Inconsistent filechannel status ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_3cf .. :try_end_440} :catch_444

    move-object/from16 v21, v22

    .line 251
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 253
    .end local v14           #fcPosition:J
    .end local v16           #fcSize:J
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :catch_444
    move-exception v12

    .line 254
    .restart local v12       #e:Ljava/lang/Exception;
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 255
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 261
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_45d
    if-lez v23, :cond_4a6

    .line 262
    const/16 v29, 0x0

    :try_start_461
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 264
    invoke-virtual {v13, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v28

    .line 265
    .local v28, wrote:I
    move/from16 v0, v28

    move/from16 v1, v23

    if-ne v0, v1, :cond_4cc

    const/16 v29, 0x1

    :goto_477
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "wrote "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " != "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_49f
    .catch Ljava/lang/Exception; {:try_start_461 .. :try_end_49f} :catch_4cf

    .line 266
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v10, v10, v29

    .line 273
    .end local v28           #wrote:I
    :cond_4a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->cancelLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 274
    :try_start_4ad
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v29, v0

    if-nez v29, :cond_4c6

    .line 275
    const/16 v29, -0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_4e8

    const/16 v29, 0x1

    :goto_4bf
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v10, v11, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doProgress(JZ)V

    .line 277
    :cond_4c6
    monitor-exit v30

    goto/16 :goto_33c

    :catchall_4c9
    move-exception v29

    monitor-exit v30
    :try_end_4cb
    .catchall {:try_start_4ad .. :try_end_4cb} :catchall_4c9

    throw v29

    .line 265
    .restart local v28       #wrote:I
    :cond_4cc
    const/16 v29, 0x0

    goto :goto_477

    .line 268
    .end local v28           #wrote:I
    :catch_4cf
    move-exception v12

    .line 269
    .restart local v12       #e:Ljava/lang/Exception;
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    move-object/from16 v21, v22

    .line 270
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_d5

    .line 275
    .end local v12           #e:Ljava/lang/Exception;
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_4e8
    const/16 v29, 0x0

    goto :goto_4bf

    .line 287
    :cond_4eb
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v29

    cmp-long v29, v29, v25

    if-eqz v29, :cond_52a

    .line 288
    new-instance v29, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "download completed with unexpected size "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " expecting "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_391

    .line 291
    :cond_52a
    const-string v29, "download completed"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->debug(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_391

    .line 151
    .end local v4           #byteArray:[B
    .end local v5           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v7           #contentLength:J
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .end local v23           #read:I
    .end local v24           #responseCode:I
    .end local v27           #url:Ljava/net/URL;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :catch_546
    move-exception v12

    goto/16 :goto_fb
.end method

.method protected isCanceled()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 115
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/DownloadTask;->download()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 121
    :goto_8
    return-void

    .line 118
    :catch_9
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_8
.end method
