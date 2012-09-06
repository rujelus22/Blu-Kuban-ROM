.class public abstract Ljcifs/netbios/l;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method public b([BI)I
    .registers 4

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/l;->a([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/l;->b:I

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/l;->c([BI)I

    iget v0, p0, Ljcifs/netbios/l;->b:I

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method c([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljcifs/netbios/l;->a:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    iget v1, p0, Ljcifs/netbios/l;->b:I

    const v2, 0xffff

    if-le v1, v2, :cond_11

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljcifs/netbios/l;->b:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/l;->a(I[BI)V

    const/4 v0, 0x4

    return v0
.end method
