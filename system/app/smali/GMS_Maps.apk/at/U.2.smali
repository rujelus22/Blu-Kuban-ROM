.class public Lat/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lat/U;->a:[B

    .line 52
    return-void
.end method

.method private static a(I[BI)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 144
    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 145
    return v1
.end method

.method private static a([BI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 149
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/io/DataInput;II)Lat/U;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 110
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 111
    add-int/lit8 v3, p1, -0x2

    invoke-interface {p0, v3}, Ljava/io/DataInput;->skipBytes(I)I

    .line 114
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 115
    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    .line 120
    const/4 v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 121
    const/4 v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 123
    :goto_20
    if-ge v0, v3, :cond_43

    .line 126
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-static {v2, v4, v1}, Lat/U;->a(I[BI)I

    move-result v1

    .line 129
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-static {v2, v4, v1}, Lat/U;->a(I[BI)I

    move-result v2

    .line 132
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 135
    add-int/lit8 v2, p2, -0x5

    invoke-interface {p0, v2}, Ljava/io/DataInput;->skipBytes(I)I

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 139
    :cond_43
    new-instance v0, Lat/U;

    invoke-direct {v0, v4}, Lat/U;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lat/U;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lat/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lat/U;->a([BI)I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lat/U;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lat/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lat/U;->a([BI)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lat/U;->a:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lat/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
