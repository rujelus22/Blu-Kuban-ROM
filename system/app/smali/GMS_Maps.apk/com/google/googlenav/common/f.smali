.class public Lcom/google/googlenav/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    .line 52
    return-void
.end method

.method public static a([B)Lcom/google/googlenav/common/f;
    .registers 7
    .parameter

    .prologue
    .line 463
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 464
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer length not divisible by 8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_d
    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    .line 467
    new-instance v2, Lcom/google/googlenav/common/f;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/f;-><init>(I)V

    .line 468
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 469
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 470
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_2c

    .line 471
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/googlenav/common/f;->a(J)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 473
    :cond_2c
    return-object v2
.end method


# virtual methods
.method public a(I)J
    .registers 4
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    if-lt p1, v0, :cond_a

    .line 108
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 110
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(J)V
    .registers 6
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/f;->b(I)V

    .line 62
    iget-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    iget v1, p0, Lcom/google/googlenav/common/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/f;->b:I

    aput-wide p1, v0, v1

    .line 63
    return-void
.end method

.method public a(JI)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 331
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    if-lt p3, v0, :cond_a

    .line 332
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    aput-wide p1, v0, p3

    .line 335
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()I
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    return v0
.end method

.method public b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    array-length v0, v0

    if-le p1, v0, :cond_18

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    .line 123
    if-ge v0, p1, :cond_19

    .line 126
    :goto_d
    new-array v0, p1, [J

    .line 127
    iget-object v1, p0, Lcom/google/googlenav/common/f;->a:[J

    iget v2, p0, Lcom/google/googlenav/common/f;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v0, p0, Lcom/google/googlenav/common/f;->a:[J

    .line 130
    :cond_18
    return-void

    :cond_19
    move p1, v0

    goto :goto_d
.end method

.method public b(J)Z
    .registers 6
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_13

    .line 83
    iget-object v1, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_f
    return v0

    .line 82
    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 87
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c(J)I
    .registers 6
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/googlenav/common/f;->b:I

    if-ge v0, v1, :cond_11

    .line 154
    iget-object v1, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_e

    .line 158
    :goto_d
    return v0

    .line 153
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public c()[B
    .registers 6

    .prologue
    .line 447
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v0, p0, Lcom/google/googlenav/common/f;->b:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 448
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 449
    const/4 v0, 0x0

    :goto_f
    iget v3, p0, Lcom/google/googlenav/common/f;->b:I

    if-ge v0, v3, :cond_1d

    .line 450
    iget-object v3, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 452
    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public d(J)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 292
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/googlenav/common/f;->b:I

    if-ge v0, v2, :cond_21

    .line 293
    iget-object v2, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_22

    .line 294
    iget v1, p0, Lcom/google/googlenav/common/f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/googlenav/common/f;->b:I

    .line 295
    iget-object v1, p0, Lcom/google/googlenav/common/f;->a:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/common/f;->a:[J

    iget v4, p0, Lcom/google/googlenav/common/f;->b:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const/4 v1, 0x1

    .line 299
    :cond_21
    return v1

    .line 292
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    const/4 v0, 0x0

    :goto_b
    iget v2, p0, Lcom/google/googlenav/common/f;->b:I

    if-ge v0, v2, :cond_24

    .line 375
    iget-object v2, p0, Lcom/google/googlenav/common/f;->a:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    iget v2, p0, Lcom/google/googlenav/common/f;->b:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_21

    .line 377
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 380
    :cond_24
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
