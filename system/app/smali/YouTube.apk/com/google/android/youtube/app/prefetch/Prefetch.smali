.class public final Lcom/google/android/youtube/app/prefetch/Prefetch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

.field public final e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/app/prefetch/Prefetch$Source;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "filePath can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    .line 41
    const-string v0, "networkUri can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->b:Ljava/lang/String;

    .line 42
    const-string v0, "source can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->d:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 43
    iput p6, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_32

    const/4 v0, 0x1

    :goto_2a
    const-string v1, "sizeInBytes can\'t be <= 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 46
    iput-wide p3, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    .line 47
    return-void

    .line 45
    :cond_32
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static a(Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/app/prefetch/Prefetch;
    .registers 10
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "size"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v6, "source"

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v7, "index"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/prefetch/Prefetch;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/app/prefetch/Prefetch$Source;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/app/prefetch/Prefetch$Source;I)Lcom/google/android/youtube/app/prefetch/Prefetch;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/prefetch/Prefetch;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/app/prefetch/Prefetch$Source;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 100
    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v1, v2, v4

    const-wide v3, 0x9a7ec800L

    cmp-long v1, v1, v3

    if-lez v1, :cond_c

    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lcom/google/android/youtube/app/prefetch/Prefetch;

    if-nez v1, :cond_6

    .line 79
    :cond_5
    :goto_5
    return v0

    .line 78
    :cond_6
    check-cast p1, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    iget-wide v3, p1, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 7

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    iget-wide v3, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Prefetch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/Prefetch;->d:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
