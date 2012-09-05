.class public Lg/g;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([F)Lg/h;
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v4, p0

    move v1, v0

    move v3, v2

    :goto_5
    if-ge v1, v4, :cond_d

    aget v5, p0, v1

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    int-to-float v1, v4

    div-float/2addr v3, v1

    move v1, v2

    :goto_10
    if-ge v0, v4, :cond_1a

    aget v5, p0, v0

    sub-float/2addr v5, v3

    mul-float/2addr v5, v5

    add-float/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1a
    const/4 v0, 0x1

    if-ne v4, v0, :cond_23

    new-instance v0, Lg/h;

    invoke-direct {v0, v3, v2}, Lg/h;-><init>(FF)V

    :goto_22
    return-object v0

    :cond_23
    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    new-instance v0, Lg/h;

    invoke-direct {v0, v3, v1}, Lg/h;-><init>(FF)V

    goto :goto_22
.end method
