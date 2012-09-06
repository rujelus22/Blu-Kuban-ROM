.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZZ)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method static synthetic a([ZZII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move v0, p2

    .line 44
    :goto_1
    if-ge v0, p3, :cond_b

    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_8

    :goto_7
    return v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method static synthetic b([ZZII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_9

    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method
