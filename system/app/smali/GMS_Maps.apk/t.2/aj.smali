.class public Lt/aj;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/DataInput;)I
    .registers 5

    const/16 v3, 0x80

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-ge v0, v3, :cond_9

    :cond_8
    return v0

    :cond_9
    and-int/lit8 v0, v0, 0x7f

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_8

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_8

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_8

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_8

    :goto_37
    if-lt v1, v3, :cond_8

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_37
.end method

.method public static a(Ljava/io/DataOutput;I)V
    .registers 8

    const-wide/16 v4, 0x80

    if-gez p1, :cond_33

    const-wide v0, 0x100000000L

    int-to-long v2, p1

    add-long/2addr v0, v2

    or-long v2, v0, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/4 v2, 0x7

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0xe

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0x15

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0x1c

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    :goto_32
    return-void

    :cond_33
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3b

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    :cond_3b
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_4a

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    :cond_4a
    const/high16 v0, 0x20

    if-ge p1, v0, :cond_60

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    :cond_60
    const/high16 v0, 0x1000

    if-ge p1, v0, :cond_7d

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x15

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    :cond_7d
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x1c

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32
.end method

.method public static b(Ljava/io/DataInput;)I
    .registers 3

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method
