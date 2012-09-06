.class public final Lab;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lab;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lab;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a([CII)I
    .registers 7

    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    add-int v1, p2, p1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    :cond_5e
    return v0
.end method

.method public static final a([CIIZ)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_e

    sget-object v0, Lab;->a:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_11

    move v0, v1

    :goto_d
    return v0

    :cond_e
    sget-object v0, Lab;->b:Ljava/lang/String;

    goto :goto_6

    :cond_11
    if-le p2, v4, :cond_15

    move v0, v2

    goto :goto_d

    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v4, :cond_27

    add-int v5, p1, v3

    aget-char v5, p0, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v5, v6, :cond_24

    move v0, v2

    goto :goto_d

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_27
    move v0, v1

    goto :goto_d
.end method

.method public static final b([CII)J
    .registers 8

    add-int/lit8 v0, p2, -0x9

    invoke-static {p0, p1, v0}, Lab;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr v0, p1

    const/16 v3, 0x9

    invoke-static {p0, v0, v3}, Lab;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method
