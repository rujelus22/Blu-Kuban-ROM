.class public Ljcifs/util/g;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/util/g;->a([BII)V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .registers 11

    const/16 v6, 0x100

    const/4 v5, 0x0

    new-array v0, v6, [B

    iput-object v0, p0, Ljcifs/util/g;->a:[B

    iput v5, p0, Ljcifs/util/g;->b:I

    :goto_9
    iget v0, p0, Ljcifs/util/g;->b:I

    if-ge v0, v6, :cond_1d

    iget-object v0, p0, Ljcifs/util/g;->a:[B

    iget v1, p0, Ljcifs/util/g;->b:I

    iget v2, p0, Ljcifs/util/g;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Ljcifs/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/util/g;->b:I

    goto :goto_9

    :cond_1d
    iput v5, p0, Ljcifs/util/g;->c:I

    iput v5, p0, Ljcifs/util/g;->b:I

    :goto_21
    iget v0, p0, Ljcifs/util/g;->b:I

    if-ge v0, v6, :cond_58

    iget v0, p0, Ljcifs/util/g;->c:I

    iget v1, p0, Ljcifs/util/g;->b:I

    rem-int/2addr v1, p3

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v2, p0, Ljcifs/util/g;->b:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/g;->c:I

    iget-object v0, p0, Ljcifs/util/g;->a:[B

    iget v1, p0, Ljcifs/util/g;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v2, p0, Ljcifs/util/g;->b:I

    iget-object v3, p0, Ljcifs/util/g;->a:[B

    iget v4, p0, Ljcifs/util/g;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v2, p0, Ljcifs/util/g;->c:I

    aput-byte v0, v1, v2

    iget v0, p0, Ljcifs/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/util/g;->b:I

    goto :goto_21

    :cond_58
    iput v5, p0, Ljcifs/util/g;->c:I

    iput v5, p0, Ljcifs/util/g;->b:I

    return-void
.end method

.method public a([BII[BI)V
    .registers 14

    add-int v2, p2, p3

    :goto_2
    if-ge p2, v2, :cond_51

    iget v0, p0, Ljcifs/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/g;->b:I

    iget v0, p0, Ljcifs/util/g;->c:I

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v3, p0, Ljcifs/util/g;->b:I

    aget-byte v1, v1, v3

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/g;->c:I

    iget-object v0, p0, Ljcifs/util/g;->a:[B

    iget v1, p0, Ljcifs/util/g;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v3, p0, Ljcifs/util/g;->b:I

    iget-object v4, p0, Ljcifs/util/g;->a:[B

    iget v5, p0, Ljcifs/util/g;->c:I

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    iget-object v1, p0, Ljcifs/util/g;->a:[B

    iget v3, p0, Ljcifs/util/g;->c:I

    aput-byte v0, v1, v3

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    iget-object v4, p0, Ljcifs/util/g;->a:[B

    iget-object v5, p0, Ljcifs/util/g;->a:[B

    iget v6, p0, Ljcifs/util/g;->b:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Ljcifs/util/g;->a:[B

    iget v7, p0, Ljcifs/util/g;->c:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    move p5, v0

    move p2, v1

    goto :goto_2

    :cond_51
    return-void
.end method
