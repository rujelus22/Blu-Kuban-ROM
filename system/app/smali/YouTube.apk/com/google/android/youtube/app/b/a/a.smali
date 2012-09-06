.class public final Lcom/google/android/youtube/app/b/a/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/RandomAccessFile;

.field private b:J

.field private c:J

.field private final d:[B

.field private final e:Ljava/security/Key;

.field private final f:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method public constructor <init>(Ljava/io/File;JJLjava/security/Key;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    const-string v0, "file cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    cmp-long v0, p2, p4

    if-gtz v0, :cond_40

    move v0, v1

    :goto_e
    const-string v2, "begin must be less than or equal to end"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 42
    const-string v0, "key cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    .line 44
    iput-wide p2, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    .line 45
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->a:Ljava/io/RandomAccessFile;

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    iput-object p6, p0, Lcom/google/android/youtube/app/b/a/a;->e:Ljava/security/Key;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->f:Ljavax/crypto/spec/IvParameterSpec;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->d:[B

    .line 50
    return-void

    .line 41
    :cond_40
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final close()V
    .registers 6

    .prologue
    .line 91
    const-string v0, "Stream closed with %d bytes left unread"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 93
    return-void
.end method

.method public final read()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x1

    const/4 v0, -0x1

    const/4 v7, 0x0

    .line 54
    iget-wide v1, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 55
    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 56
    if-eq v1, v0, :cond_34

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->d:[B

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 59
    :try_start_19
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->d:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/app/b/a/a;->e:Ljava/security/Key;

    iget-object v4, p0, Lcom/google/android/youtube/app/b/a/a;->f:Ljavax/crypto/spec/IvParameterSpec;

    iget-wide v5, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/core/utils/f;->b([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;J)V
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_19 .. :try_end_26} :catch_35

    .line 63
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    .line 64
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->d:[B

    aget-byte v0, v0, v7

    .line 68
    :cond_34
    return v0

    .line 60
    :catch_35
    move-exception v0

    .line 61
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final read([BII)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3b

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/a;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p3

    iget-wide v3, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 75
    if-lez v2, :cond_2f

    .line 77
    :try_start_18
    iget-object v3, p0, Lcom/google/android/youtube/app/b/a/a;->e:Ljava/security/Key;

    iget-object v4, p0, Lcom/google/android/youtube/app/b/a/a;->f:Ljavax/crypto/spec/IvParameterSpec;

    iget-wide v5, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/core/utils/f;->b([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;J)V
    :try_end_23
    .catch Ljava/security/GeneralSecurityException; {:try_start_18 .. :try_end_23} :catch_30

    .line 81
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    int-to-long v3, v2

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->c:J

    .line 82
    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/a/a;->b:J

    .line 86
    :cond_2f
    :goto_2f
    return v2

    .line 78
    :catch_30
    move-exception v0

    .line 79
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_3b
    const/4 v2, -0x1

    goto :goto_2f
.end method
