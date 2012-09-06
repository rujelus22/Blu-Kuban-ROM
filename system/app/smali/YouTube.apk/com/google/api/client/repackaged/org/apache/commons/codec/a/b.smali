.class public abstract Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field protected final b:B

.field protected final c:I

.field protected d:[B

.field protected e:I

.field protected f:Z

.field protected g:I

.field protected h:I

.field private final i:I

.field private final j:I

.field private k:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->b:B

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a:I

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->i:I

    .line 139
    if-lez p3, :cond_1a

    if-lez p4, :cond_1a

    div-int/lit8 v0, p3, 0x4

    mul-int/lit8 v0, v0, 0x4

    :goto_15
    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->c:I

    .line 140
    iput p4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->j:I

    .line 141
    return-void

    .line 139
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected final a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1b

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    if-nez v0, :cond_1c

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    iput v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    .line 192
    :cond_1b
    :goto_1b
    return-void

    .line 190
    :cond_1c
    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    iget-object v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    goto :goto_1b
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method public final b([B)[B
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 336
    iput-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->g:I

    iput v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->h:I

    iput-boolean v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->f:Z

    .line 337
    if-eqz p1, :cond_13

    array-length v0, p1

    if-nez v0, :cond_14

    .line 344
    :cond_13
    :goto_13
    return-object p1

    .line 340
    :cond_14
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a([BII)V

    .line 341
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a([BII)V

    .line 342
    iget v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    sub-int/2addr v0, v2

    new-array p1, v0, [B

    .line 343
    array-length v2, p1

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    sub-int/2addr v0, v3

    :goto_31
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    iget v3, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    iget v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->k:I

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->e:I

    if-lt v0, v1, :cond_13

    iput-object v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->d:[B

    goto :goto_13

    :cond_4a
    move v0, v1

    goto :goto_31

    :cond_4c
    iget-boolean v0, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->f:Z

    if-eqz v0, :cond_13

    goto :goto_13
.end method

.method protected final c([B)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 415
    if-nez p1, :cond_4

    .line 423
    :cond_3
    :goto_3
    return v0

    .line 418
    :cond_4
    array-length v2, p1

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_3

    aget-byte v3, p1, v1

    .line 419
    const/16 v4, 0x3d

    if-eq v4, v3, :cond_14

    invoke-virtual {p0, v3}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a(B)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 420
    :cond_14
    const/4 v0, 0x1

    goto :goto_3

    .line 418
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public final d([B)J
    .registers 8
    .parameter

    .prologue
    .line 437
    array-length v0, p1

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->a:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->i:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 438
    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->c:I

    if-lez v2, :cond_22

    .line 440
    iget v2, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/b;->j:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 442
    :cond_22
    return-wide v0
.end method
