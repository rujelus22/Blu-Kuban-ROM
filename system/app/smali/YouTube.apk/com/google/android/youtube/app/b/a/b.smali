.class final Lcom/google/android/youtube/app/b/a/b;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J

.field private final c:J

.field private final d:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJLjava/security/Key;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 41
    const-string v0, "file cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/b;->a:Ljava/io/File;

    .line 42
    cmp-long v0, p3, p5

    if-gtz v0, :cond_27

    const/4 v0, 0x1

    :goto_12
    const-string v1, "begin must be less than or equal to end"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 43
    iput-wide p3, p0, Lcom/google/android/youtube/app/b/a/b;->b:J

    .line 44
    iput-wide p5, p0, Lcom/google/android/youtube/app/b/a/b;->c:J

    .line 45
    iput-object p7, p0, Lcom/google/android/youtube/app/b/a/b;->d:Ljava/security/Key;

    .line 46
    const-string v0, "contentType cannot be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/b/a/b;->setContentType(Ljava/lang/String;)V

    .line 47
    return-void

    .line 42
    :cond_27
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 8

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/b;->d:Ljava/security/Key;

    if-eqz v0, :cond_12

    .line 81
    new-instance v0, Lcom/google/android/youtube/app/b/a/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/b;->a:Ljava/io/File;

    iget-wide v2, p0, Lcom/google/android/youtube/app/b/a/b;->b:J

    iget-wide v4, p0, Lcom/google/android/youtube/app/b/a/b;->c:J

    iget-object v6, p0, Lcom/google/android/youtube/app/b/a/b;->d:Ljava/security/Key;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/b/a/a;-><init>(Ljava/io/File;JJLjava/security/Key;)V

    .line 83
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/google/android/youtube/app/b/a/c;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/b;->a:Ljava/io/File;

    iget-wide v2, p0, Lcom/google/android/youtube/app/b/a/b;->b:J

    iget-wide v4, p0, Lcom/google/android/youtube/app/b/a/b;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/b/a/c;-><init>(Ljava/io/File;JJ)V

    goto :goto_11
.end method

.method public final getContentLength()J
    .registers 5

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/b;->c:J

    iget-wide v2, p0, Lcom/google/android/youtube/app/b/a/b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final isRepeatable()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x800

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/a/b;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 63
    new-array v2, v2, [B

    .line 67
    :cond_9
    :goto_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_22

    .line 68
    const/4 v0, 0x0

    const/16 v3, 0x800

    :try_start_f
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 69
    if-lez v0, :cond_9

    .line 70
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1d

    goto :goto_9

    .line 75
    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 76
    return-void
.end method
