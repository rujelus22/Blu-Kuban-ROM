.class public Lt/H;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)F
    .registers 3

    int-to-float v0, p0

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    goto :goto_3
.end method

.method public static a(Lt/A;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lt/A;->d()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lt/L;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lt/L;->l()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lt/Y;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lt/Y;->f()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lt/Z;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lt/Z;->m()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lt/m;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lt/m;->e()I

    move-result v0

    goto :goto_3
.end method

.method public static a(I[BI)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static a(II)Z
    .registers 3

    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_9

    if-ltz p0, :cond_9

    array-length v0, p1

    if-ge p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b(I)F
    .registers 3

    int-to-float v0, p0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public static c(I)F
    .registers 3

    int-to-float v0, p0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(I)F
    .registers 3

    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method
