.class public Lcom/google/android/youtube/core/transfer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/m;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/youtube/core/transfer/n;

.field private final e:I

.field private final f:J

.field private final g:J

.field private volatile h:Z

.field private i:Ljava/lang/Object;

.field private final j:Z

.field private final k:Z

.field private l:J

.field private final m:Lcom/google/android/youtube/core/transfer/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/n;IZZLcom/google/android/youtube/core/transfer/e;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/b;->c:Ljava/lang/String;

    .line 97
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3f

    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 99
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/b;->f:J

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_41

    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 101
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/b;->g:J

    .line 102
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/n;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    .line 103
    iput p8, p0, Lcom/google/android/youtube/core/transfer/b;->e:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/b;->i:Ljava/lang/Object;

    .line 105
    iput-boolean p9, p0, Lcom/google/android/youtube/core/transfer/b;->j:Z

    .line 106
    iput-boolean p10, p0, Lcom/google/android/youtube/core/transfer/b;->k:Z

    .line 107
    iput-object p11, p0, Lcom/google/android/youtube/core/transfer/b;->m:Lcom/google/android/youtube/core/transfer/e;

    .line 108
    return-void

    .line 98
    :cond_3f
    const/4 v0, 0x0

    goto :goto_16

    .line 100
    :cond_41
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/n;ZZLcom/google/android/youtube/core/transfer/e;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const-wide/16 v3, 0x0

    const/high16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/core/transfer/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/n;IZZLcom/google/android/youtube/core/transfer/e;)V

    .line 85
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 313
    const-wide/16 v0, -0x1

    .line 315
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 318
    :try_start_f
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_82

    move-result-wide v0

    .line 324
    :cond_13
    :goto_13
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 326
    sget-object v2, Lcom/google/android/youtube/core/transfer/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 329
    const/4 v3, 0x2

    :try_start_2c
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v7, v2

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    .line 331
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_5c

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using contentLength parsed from Content-Range "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    move-wide v0, v2

    .line 346
    :cond_5b
    :goto_5b
    return-wide v0

    .line 337
    :cond_5c
    cmp-long v2, v0, v2

    if-nez v2, :cond_80

    move v2, v4

    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match Content-Range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_7d} :catch_7e

    goto :goto_5b

    :catch_7e
    move-exception v2

    goto :goto_5b

    :cond_80
    const/4 v2, 0x0

    goto :goto_61

    :catch_82
    move-exception v2

    goto :goto_13
.end method

.method private static a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2710

    .line 303
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 304
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 305
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 307
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 309
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    if-nez p0, :cond_3

    .line 410
    :goto_2
    return-void

    .line 406
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 410
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download error ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;)V

    .line 365
    invoke-static {p2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/nio/channels/FileChannel;)V

    .line 366
    if-eqz p3, :cond_31

    .line 367
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 369
    :cond_31
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    .line 370
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/b;->j:Z

    if-eqz v0, :cond_2e

    .line 414
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

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    :cond_2e
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 417
    return-void
.end method

.method private static a(Ljava/nio/channels/FileChannel;)V
    .registers 3
    .parameter

    .prologue
    .line 382
    if-nez p0, :cond_3

    .line 398
    :goto_2
    return-void

    .line 386
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 387
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_17

    .line 394
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2

    .line 398
    :catch_e
    move-exception v0

    goto :goto_2

    :catch_10
    move-exception v0

    .line 394
    :try_start_11
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2

    .line 398
    :catch_15
    move-exception v0

    goto :goto_2

    :catch_17
    move-exception v0

    .line 394
    :try_start_18
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 398
    :catch_1c
    move-exception v0

    goto :goto_2

    .line 393
    :catchall_1e
    move-exception v0

    .line 394
    :try_start_1f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 397
    :goto_22
    throw v0

    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 373
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/b;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/b;->h:Z

    .line 113
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 25

    .prologue
    .line 121
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    :try_start_5
    const-string v2, "download starting"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "opening output "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_c7

    :try_start_2c
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_3c
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    const-string v6, "rw"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_9e

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writing from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    :goto_71
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_74} :catch_b7

    move-result-object v9

    :try_start_75
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/youtube/core/transfer/b;->g:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_da

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/youtube/core/transfer/b;->g:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_da

    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/nio/channels/FileChannel;)V

    const-string v2, "download already completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_9d} :catch_c7

    .line 127
    :goto_9d
    return-void

    .line 123
    :cond_9e
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "appending from "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b6} :catch_b7

    goto :goto_71

    :catch_b7
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_bb
    new-instance v6, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c6} :catch_c7

    goto :goto_9d

    .line 124
    :catch_c7
    move-exception v2

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_9d

    .line 123
    :cond_da
    :try_start_da
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "opening input "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/transfer/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ef} :catch_c7

    :try_start_ef
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/transfer/b;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-static {v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "responseCode="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " contentLength="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/youtube/core/transfer/b;->g:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_17a

    const/16 v13, 0x1a0

    if-ne v10, v13, :cond_17a

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const-wide/16 v13, 0x1

    sub-long v13, v6, v13

    invoke-static {v5, v13, v14}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/youtube/core/transfer/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_17a

    const-string v2, "download already completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_16a} :catch_16c

    goto/16 :goto_9d

    :catch_16c
    move-exception v2

    :goto_16d
    :try_start_16d
    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v4, v5}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_178} :catch_c7

    goto/16 :goto_9d

    :cond_17a
    move-object v5, v4

    :try_start_17b
    invoke-static {v10}, Lcom/google/android/youtube/core/transfer/b;->a(I)Z

    move-result v4

    if-nez v4, :cond_1ac

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "http status "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v2, v10, 0x64

    const/4 v8, 0x4

    if-ne v2, v8, :cond_1aa

    const/16 v2, 0x198

    if-eq v10, v2, :cond_1aa

    const/4 v2, 0x1

    :goto_19d
    invoke-direct {v6, v7, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v6}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_9d

    :catch_1a7
    move-exception v2

    move-object v4, v5

    goto :goto_16d

    :cond_1aa
    const/4 v2, 0x0

    goto :goto_19d

    :cond_1ac
    const-wide/16 v13, 0x1

    cmp-long v4, v11, v13

    if-gez v4, :cond_1cf

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_9d

    :cond_1cf
    const-wide/16 v13, 0x0

    cmp-long v4, v6, v13

    if-lez v4, :cond_21b

    const-string v4, "Content-Range"

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "-"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_21b

    :cond_1f6
    const/4 v10, 0x0

    new-instance v13, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Content-Range "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", not "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v5, v13}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    :cond_21b
    add-long v10, v6, v11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "size is "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/youtube/core/transfer/b;->g:J

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_25d

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/youtube/core/transfer/b;->g:J

    cmp-long v4, v10, v12

    if-eqz v4, :cond_268

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_9d

    :cond_25d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-interface {v4, v12, v10, v11}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;J)V

    :cond_268
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/core/transfer/b;->k:Z

    if-eqz v4, :cond_271

    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_271
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->m:Lcom/google/android/youtube/core/transfer/e;

    if-eqz v2, :cond_429

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/b;->m:Lcom/google/android/youtube/core/transfer/e;

    new-instance v2, Lcom/google/android/youtube/core/transfer/f;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/f;-><init>(Ljava/io/InputStream;Lcom/google/android/youtube/core/transfer/e;)V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_284} :catch_1a7

    :goto_284
    const/high16 v3, 0x1

    :try_start_286
    new-array v12, v3, [B

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v3, 0x0

    move/from16 v23, v3

    move-wide v3, v6

    move/from16 v6, v23

    :goto_292
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/youtube/core/transfer/b;->h:Z
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_296} :catch_c7

    if-nez v7, :cond_2ae

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2ae

    const/4 v6, 0x0

    const/high16 v7, 0x1

    :try_start_29e
    invoke-virtual {v2, v12, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2a1} :catch_2c6

    move-result v7

    :try_start_2a2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/transfer/b;->i:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2a7} :catch_c7

    :try_start_2a7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/youtube/core/transfer/b;->h:Z

    if-eqz v6, :cond_2d4

    monitor-exit v14
    :try_end_2ae
    .catchall {:try_start_2a7 .. :try_end_2ae} :catchall_33e

    :cond_2ae
    :try_start_2ae
    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;)V

    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/youtube/core/transfer/b;->h:Z

    if-eqz v3, :cond_3e2

    const-string v2, "download canceled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)V

    goto/16 :goto_9d

    :catch_2c6
    move-exception v3

    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2d2} :catch_c7

    goto/16 :goto_9d

    :cond_2d4
    :try_start_2d4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/youtube/core/transfer/b;->k:Z
    :try_end_2d8
    .catchall {:try_start_2d4 .. :try_end_2d8} :catchall_33e

    if-nez v6, :cond_350

    :try_start_2da
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    cmp-long v6, v15, v3

    if-nez v6, :cond_2f6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v6, v19, v21

    if-nez v6, :cond_350

    cmp-long v6, v17, v3

    if-eqz v6, :cond_350

    :cond_2f6
    new-instance v6, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Inconsistent filechannel status ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/youtube/core/transfer/b;->f:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v6, v3, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v6}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_33b
    .catchall {:try_start_2da .. :try_end_33b} :catchall_33e
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_33b} :catch_341

    :try_start_33b
    monitor-exit v14
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33e

    goto/16 :goto_9d

    :catchall_33e
    move-exception v2

    :try_start_33f
    monitor-exit v14

    throw v2
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_341} :catch_c7

    :catch_341
    move-exception v3

    :try_start_342
    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    monitor-exit v14
    :try_end_34e
    .catchall {:try_start_342 .. :try_end_34e} :catchall_33e

    goto/16 :goto_9d

    :cond_350
    if-lez v7, :cond_382

    const/4 v6, 0x0

    :try_start_353
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)I

    move-result v15

    if-ne v15, v7, :cond_3cf

    const/4 v6, 0x1

    :goto_362
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "wrote "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " != "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V
    :try_end_380
    .catchall {:try_start_353 .. :try_end_380} :catchall_33e
    .catch Ljava/lang/Exception; {:try_start_353 .. :try_end_380} :catch_3d1

    int-to-long v15, v7

    add-long/2addr v3, v15

    :cond_382
    const/4 v6, -0x1

    if-ne v7, v6, :cond_3e0

    const/4 v6, 0x1

    :goto_386
    :try_start_386
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/youtube/core/transfer/b;->l:J

    sub-long v15, v3, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/transfer/b;->e:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gtz v15, :cond_39d

    if-eqz v6, :cond_3cb

    :cond_39d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "progress "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    invoke-interface {v6, v15, v3, v4}, Lcom/google/android/youtube/core/transfer/n;->b(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/youtube/core/transfer/b;->l:J

    :cond_3cb
    monitor-exit v14

    move v6, v7

    goto/16 :goto_292

    :cond_3cf
    const/4 v6, 0x0

    goto :goto_362

    :catch_3d1
    move-exception v3

    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    monitor-exit v14
    :try_end_3de
    .catchall {:try_start_386 .. :try_end_3de} :catchall_33e

    goto/16 :goto_9d

    :cond_3e0
    const/4 v6, 0x0

    goto :goto_386

    :cond_3e2
    :try_start_3e2
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-eqz v3, :cond_414

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "download completed with unexpected size "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " expecting "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5, v3}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_9d

    :cond_414
    const-string v2, "download completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/b;->d:Lcom/google/android/youtube/core/transfer/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_427} :catch_c7

    goto/16 :goto_9d

    :cond_429
    move-object v2, v3

    goto/16 :goto_284
.end method
