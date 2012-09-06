.class public abstract Ljcifs/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[B

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Ljcifs/a/a;->a:[B

    sget-object v0, Ljcifs/a;->b:Ljava/lang/String;

    sput-object v0, Ljcifs/a/a;->b:Ljava/lang/String;

    return-void

    :array_e
    .array-data 0x1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static a([BII)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static a([BII[B)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    array-length v0, p3

    :goto_4
    if-nez v0, :cond_9

    :goto_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_9
    invoke-static {p0, p1, v0}, Ljcifs/a/a;->b([BII)V

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v0}, Ljcifs/a/a;->b([BII)V

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2, p2}, Ljcifs/a/a;->a([BII)V

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method static b([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static b([BII)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static c([BI)[B
    .registers 6

    invoke-static {p0, p1}, Ljcifs/a/a;->b([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Ljcifs/a/a;->a([BI)I

    move-result v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Ljcifs/a/a;->c:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Ljcifs/a/a;->c:I

    return-void
.end method
