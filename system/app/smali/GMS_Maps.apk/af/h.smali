.class public Laf/h;
.super Ljava/lang/Object;


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Laf/h;->a:[J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Laf/h;->a:[J

    return-void
.end method

.method public static a([B)Laf/h;
    .registers 7

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer length not divisible by 8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    new-instance v2, Laf/h;

    invoke-direct {v2, v1}, Laf/h;-><init>(I)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_2c

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Laf/h;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2c
    return-object v2
.end method


# virtual methods
.method public a(I)J
    .registers 4

    iget v0, p0, Laf/h;->b:I

    if-lt p1, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Laf/h;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    iget v0, p0, Laf/h;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Laf/h;->b(I)V

    iget-object v0, p0, Laf/h;->a:[J

    iget v1, p0, Laf/h;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Laf/h;->b:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public a(JI)V
    .registers 5

    iget v0, p0, Laf/h;->b:I

    if-lt p3, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Laf/h;->a:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Laf/h;->b:I

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

    iget v0, p0, Laf/h;->b:I

    return v0
.end method

.method public b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Laf/h;->a:[J

    array-length v0, v0

    if-le p1, v0, :cond_18

    iget-object v0, p0, Laf/h;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    if-ge v0, p1, :cond_19

    :goto_d
    new-array v0, p1, [J

    iget-object v1, p0, Laf/h;->a:[J

    iget v2, p0, Laf/h;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Laf/h;->a:[J

    :cond_18
    return-void

    :cond_19
    move p1, v0

    goto :goto_d
.end method

.method public b(J)Z
    .registers 6

    iget v0, p0, Laf/h;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_13

    iget-object v1, p0, Laf/h;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c(J)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Laf/h;->b:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Laf/h;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public c()[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v0, p0, Laf/h;->b:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_f
    iget v3, p0, Laf/h;->b:I

    if-ge v0, v3, :cond_1d

    iget-object v3, p0, Laf/h;->a:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public d(J)Z
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Laf/h;->b:I

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Laf/h;->a:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_22

    iget v1, p0, Laf/h;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laf/h;->b:I

    iget-object v1, p0, Laf/h;->a:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Laf/h;->a:[J

    iget v4, p0, Laf/h;->b:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_b
    iget v2, p0, Laf/h;->b:I

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Laf/h;->a:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v2, p0, Laf/h;->b:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_21

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
