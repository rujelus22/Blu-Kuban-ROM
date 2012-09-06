.class public Ln/aA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/DataInput;)I
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x80

    .line 21
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 22
    if-ge v0, v3, :cond_9

    .line 57
    :cond_8
    return v0

    .line 25
    :cond_9
    and-int/lit8 v0, v0, 0x7f

    .line 27
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 28
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 29
    if-lt v1, v3, :cond_8

    .line 33
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 34
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    .line 35
    if-lt v1, v3, :cond_8

    .line 39
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 40
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    .line 41
    if-lt v1, v3, :cond_8

    .line 45
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 46
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v0, v2

    .line 47
    if-lt v1, v3, :cond_8

    .line 54
    :goto_37
    if-lt v1, v3, :cond_8

    .line 55
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_37
.end method

.method public static a(Ljava/io/DataOutput;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x80

    .line 66
    if-gez p1, :cond_33

    .line 68
    const-wide v0, 0x100000000L

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 69
    or-long v2, v0, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 70
    const/4 v2, 0x7

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 71
    const/16 v2, 0xe

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 72
    const/16 v2, 0x15

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 73
    const/16 v2, 0x1c

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 95
    :goto_32
    return-void

    .line 74
    :cond_33
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3b

    .line 75
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    .line 76
    :cond_3b
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_4a

    .line 77
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 78
    shr-int/lit8 v0, p1, 0x7

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    .line 79
    :cond_4a
    const/high16 v0, 0x20

    if-ge p1, v0, :cond_60

    .line 80
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 81
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 82
    shr-int/lit8 v0, p1, 0xe

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    .line 83
    :cond_60
    const/high16 v0, 0x1000

    if-ge p1, v0, :cond_7d

    .line 84
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 85
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 86
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 87
    shr-int/lit8 v0, p1, 0x15

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32

    .line 89
    :cond_7d
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 90
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 91
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 92
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 93
    shr-int/lit8 v0, p1, 0x1c

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_32
.end method

.method public static b(Ljava/io/DataInput;)I
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 103
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method
