.class public final Lcom/google/android/youtube/app/b/a/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/RandomAccessFile;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/File;JJ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    const-string v0, "file cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    cmp-long v0, p2, p4

    if-gtz v0, :cond_28

    const/4 v0, 0x1

    :goto_d
    const-string v1, "begin must be less than or equal to end"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 31
    sub-long v0, p4, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    .line 32
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/c;->a:Ljava/io/RandomAccessFile;

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/c;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    return-void

    .line 30
    :cond_28
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final close()V
    .registers 6

    .prologue
    .line 63
    const-string v0, "Stream closed with %d bytes left unread"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/c;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 65
    return-void
.end method

.method public final read()I
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 38
    iget-wide v2, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_19

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/c;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 40
    if-eq v0, v1, :cond_19

    .line 41
    iget-wide v1, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    .line 45
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public final read([BII)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/c;->a:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 52
    if-lez v0, :cond_1f

    .line 53
    iget-wide v1, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/youtube/app/b/a/c;->b:J

    .line 57
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, -0x1

    goto :goto_1f
.end method
