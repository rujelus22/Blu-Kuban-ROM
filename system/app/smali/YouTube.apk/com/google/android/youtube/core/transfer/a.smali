.class public final Lcom/google/android/youtube/core/transfer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/h;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/youtube/core/transfer/i;

.field private final e:I

.field private final f:J

.field private final g:J

.field private volatile h:Z

.field private i:Ljava/lang/Object;

.field private final j:Z

.field private final k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/i;IZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/a;->c:Ljava/lang/String;

    .line 92
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    .line 93
    cmp-long v0, p3, v3

    if-ltz v0, :cond_3c

    move v0, v1

    :goto_18
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Z)V

    .line 94
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/a;->f:J

    .line 95
    cmp-long v0, p5, v3

    if-ltz v0, :cond_3e

    :goto_21
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/k;->a(Z)V

    .line 96
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/a;->g:J

    .line 97
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    .line 98
    iput p8, p0, Lcom/google/android/youtube/core/transfer/a;->e:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/a;->i:Ljava/lang/Object;

    .line 100
    iput-boolean p9, p0, Lcom/google/android/youtube/core/transfer/a;->j:Z

    .line 101
    iput-boolean p10, p0, Lcom/google/android/youtube/core/transfer/a;->k:Z

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/i;ZZ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const-wide/16 v3, 0x0

    const/high16 v8, 0x10

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/i;IZZ)V

    .line 81
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 304
    const-wide/16 v0, -0x1

    .line 306
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 309
    :try_start_f
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_8a

    move-result-wide v0

    .line 315
    :cond_13
    :goto_13
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 317
    sget-object v2, Lcom/google/android/youtube/core/transfer/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 320
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

    .line 322
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_60

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using contentLength parsed from Content-Range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    move-wide v0, v2

    .line 337
    :cond_5f
    :goto_5f
    return-wide v0

    .line 328
    :cond_60
    cmp-long v2, v0, v2

    if-nez v2, :cond_88

    move v2, v4

    :goto_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match Content-Range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_85} :catch_86

    goto :goto_5f

    :catch_86
    move-exception v2

    goto :goto_5f

    :cond_88
    const/4 v2, 0x0

    goto :goto_65

    :catch_8a
    move-exception v2

    goto :goto_13
.end method

.method private static a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2710

    .line 294
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 295
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 296
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 298
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 300
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    if-nez p0, :cond_3

    .line 397
    :goto_2
    return-void

    .line 393
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 397
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
    .line 350
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

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;)V

    .line 352
    invoke-static {p2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/nio/channels/FileChannel;)V

    .line 353
    if-eqz p3, :cond_35

    .line 354
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 356
    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    .line 357
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/a;->j:Z

    if-eqz v0, :cond_2e

    .line 401
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

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    :cond_2e
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 404
    return-void
.end method

.method private static a(Ljava/nio/channels/FileChannel;)V
    .registers 3
    .parameter

    .prologue
    .line 369
    if-nez p0, :cond_3

    .line 385
    :goto_2
    return-void

    .line 373
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 374
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_17

    .line 381
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2

    .line 385
    :catch_e
    move-exception v0

    goto :goto_2

    :catch_10
    move-exception v0

    .line 381
    :try_start_11
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2

    .line 385
    :catch_15
    move-exception v0

    goto :goto_2

    :catch_17
    move-exception v0

    .line 381
    :try_start_18
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 385
    :catch_1c
    move-exception v0

    goto :goto_2

    .line 380
    :catchall_1e
    move-exception v0

    .line 381
    :try_start_1f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 384
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
    .line 360
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
.method public final a()V
    .registers 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/a;->h:Z

    .line 107
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .registers 25

    .prologue
    .line 115
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    :try_start_5
    const-string v2, "download starting"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening output "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_d2

    :try_start_2f
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_3f
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_a5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    :goto_78
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_7b} :catch_c2

    move-result-object v8

    :try_start_7c
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/youtube/core/transfer/a;->g:J

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-lez v4, :cond_e5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/youtube/core/transfer/a;->g:J

    cmp-long v4, v5, v9

    if-nez v4, :cond_e5

    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/nio/channels/FileChannel;)V

    const-string v2, "download already completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a4} :catch_d2

    .line 121
    :goto_a4
    return-void

    .line 117
    :cond_a5
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appending from "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c1} :catch_c2

    goto :goto_78

    :catch_c2
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_c6
    new-instance v6, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d1} :catch_d2

    goto :goto_a4

    .line 118
    :catch_d2
    move-exception v2

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_a4

    .line 117
    :cond_e5
    :try_start_e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opening input "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/transfer/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fe} :catch_d2

    :try_start_fe
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/transfer/a;->c:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-static {v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "responseCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " contentLength="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/youtube/core/transfer/a;->g:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_18e

    const/16 v12, 0x1a0

    if-ne v9, v12, :cond_18e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const-wide/16 v12, 0x1

    sub-long v12, v5, v12

    invoke-static {v4, v12, v13}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/youtube/core/transfer/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_18e

    const-string v2, "download already completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_17d} :catch_17f

    goto/16 :goto_a4

    :catch_17f
    move-exception v2

    :goto_180
    const/4 v4, 0x0

    :try_start_181
    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v3, v5}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18c} :catch_d2

    goto/16 :goto_a4

    :cond_18e
    move-object v4, v3

    :try_start_18f
    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_1c4

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http status "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v2, v9, 0x64

    const/4 v7, 0x4

    if-ne v2, v7, :cond_1c2

    const/16 v2, 0x198

    if-eq v9, v2, :cond_1c2

    const/4 v2, 0x1

    :goto_1b5
    invoke-direct {v5, v6, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v5}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_a4

    :catch_1bf
    move-exception v2

    move-object v3, v4

    goto :goto_180

    :cond_1c2
    const/4 v2, 0x0

    goto :goto_1b5

    :cond_1c4
    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-gez v3, :cond_1eb

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v4, v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_a4

    :cond_1eb
    const-wide/16 v12, 0x0

    cmp-long v3, v5, v12

    if-lez v3, :cond_23b

    const-string v3, "Content-Range"

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_212

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23b

    :cond_212
    const/4 v9, 0x0

    new-instance v12, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Range "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", not "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v4, v12}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    :cond_23b
    add-long v9, v5, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size is "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/youtube/core/transfer/a;->g:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-lez v3, :cond_285

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/youtube/core/transfer/a;->g:J

    cmp-long v3, v9, v11

    if-eqz v3, :cond_290

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v4, v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_a4

    :cond_285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-interface {v3, v11, v9, v10}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;J)V

    :cond_290
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/youtube/core/transfer/a;->k:Z

    if-eqz v3, :cond_299

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_299
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_29c} :catch_1bf

    move-result-object v11

    const/high16 v2, 0x1

    :try_start_29f
    new-array v12, v2, [B

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v2, 0x0

    move/from16 v23, v2

    move-wide v2, v5

    move/from16 v5, v23

    :goto_2ab
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/youtube/core/transfer/a;->h:Z
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2af} :catch_d2

    if-nez v6, :cond_2c7

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2c7

    const/4 v5, 0x0

    const/high16 v6, 0x1

    :try_start_2b7
    invoke-virtual {v11, v12, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2ba} :catch_2df

    move-result v6

    :try_start_2bb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/transfer/a;->i:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2c0} :catch_d2

    :try_start_2c0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/youtube/core/transfer/a;->h:Z

    if-eqz v5, :cond_2ed

    monitor-exit v14
    :try_end_2c7
    .catchall {:try_start_2c0 .. :try_end_2c7} :catchall_35b

    :cond_2c7
    :try_start_2c7
    invoke-static {v11}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;)V

    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/youtube/core/transfer/a;->h:Z

    if-eqz v2, :cond_405

    const-string v2, "download canceled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/lang/String;)V

    goto/16 :goto_a4

    :catch_2df
    move-exception v2

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v4, v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2eb} :catch_d2

    goto/16 :goto_a4

    :cond_2ed
    :try_start_2ed
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/youtube/core/transfer/a;->k:Z
    :try_end_2f1
    .catchall {:try_start_2ed .. :try_end_2f1} :catchall_35b

    if-nez v5, :cond_36d

    :try_start_2f3
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    cmp-long v5, v15, v2

    if-nez v5, :cond_30f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v5, v19, v21

    if-nez v5, :cond_36d

    cmp-long v5, v17, v2

    if-eqz v5, :cond_36d

    :cond_30f
    new-instance v5, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent filechannel status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/a;->f:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v5, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v4, v5}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_358
    .catchall {:try_start_2f3 .. :try_end_358} :catchall_35b
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_358} :catch_35e

    :try_start_358
    monitor-exit v14
    :try_end_359
    .catchall {:try_start_358 .. :try_end_359} :catchall_35b

    goto/16 :goto_a4

    :catchall_35b
    move-exception v2

    :try_start_35c
    monitor-exit v14

    throw v2
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_35e} :catch_d2

    :catch_35e
    move-exception v2

    :try_start_35f
    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v4, v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    monitor-exit v14
    :try_end_36b
    .catchall {:try_start_35f .. :try_end_36b} :catchall_35b

    goto/16 :goto_a4

    :cond_36d
    if-lez v6, :cond_3a1

    const/4 v5, 0x0

    :try_start_370
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v15

    if-ne v15, v6, :cond_3f2

    const/4 v5, 0x1

    :goto_37d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "wrote "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " != "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V
    :try_end_39f
    .catchall {:try_start_370 .. :try_end_39f} :catchall_35b
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_39f} :catch_3f4

    int-to-long v15, v6

    add-long/2addr v2, v15

    :cond_3a1
    const/4 v5, -0x1

    if-ne v6, v5, :cond_403

    const/4 v5, 0x1

    :goto_3a5
    :try_start_3a5
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/youtube/core/transfer/a;->l:J

    sub-long v15, v2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/transfer/a;->e:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gtz v15, :cond_3bc

    if-eqz v5, :cond_3ee

    :cond_3bc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "progress "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    invoke-interface {v5, v15, v2, v3}, Lcom/google/android/youtube/core/transfer/i;->b(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/youtube/core/transfer/a;->l:J

    :cond_3ee
    monitor-exit v14

    move v5, v6

    goto/16 :goto_2ab

    :cond_3f2
    const/4 v5, 0x0

    goto :goto_37d

    :catch_3f4
    move-exception v2

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v4, v3}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    monitor-exit v14
    :try_end_401
    .catchall {:try_start_3a5 .. :try_end_401} :catchall_35b

    goto/16 :goto_a4

    :cond_403
    const/4 v5, 0x0

    goto :goto_3a5

    :cond_405
    :try_start_405
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_43b

    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download completed with unexpected size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " expecting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v4, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_a4

    :cond_43b
    const-string v2, "download completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/transfer/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/a;->d:Lcom/google/android/youtube/core/transfer/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    :try_end_44e
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_44e} :catch_d2

    goto/16 :goto_a4
.end method
