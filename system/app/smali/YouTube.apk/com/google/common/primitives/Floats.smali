.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a([FFII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move v0, p2

    .line 45
    :goto_1
    if-ge v0, p3, :cond_d

    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method static synthetic b([FFII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_e

    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method
