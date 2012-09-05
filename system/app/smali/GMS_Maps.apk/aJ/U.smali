.class public LaJ/U;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaJ/U;->a:[B

    return-void
.end method

.method private static a(I[BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    return v1
.end method

.method private static a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/io/DataInput;II)LaJ/U;
    .registers 9

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    add-int/lit8 v3, p1, -0x2

    invoke-interface {p0, v3}, Ljava/io/DataInput;->skipBytes(I)I

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    :goto_20
    if-ge v0, v3, :cond_43

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-static {v2, v4, v1}, LaJ/U;->a(I[BI)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-static {v2, v4, v1}, LaJ/U;->a(I[BI)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, p2, -0x5

    invoke-interface {p0, v2}, Ljava/io/DataInput;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_43
    new-instance v0, LaJ/U;

    invoke-direct {v0, v4}, LaJ/U;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, LaJ/U;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public a(I)I
    .registers 4

    iget-object v0, p0, LaJ/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, LaJ/U;->a([BI)I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, LaJ/U;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public b(I)I
    .registers 4

    iget-object v0, p0, LaJ/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, LaJ/U;->a([BI)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, LaJ/U;->a:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c(I)I
    .registers 4

    iget-object v0, p0, LaJ/U;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
