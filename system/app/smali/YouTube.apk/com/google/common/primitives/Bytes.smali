.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a([BBII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move v0, p2

    .line 47
    :goto_1
    if-ge v0, p3, :cond_b

    aget-byte v1, p0, v0

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

.method static synthetic b([BBII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    aget-byte v1, p0, v0

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
