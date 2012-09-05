.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([CCII)I
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

    aget-char v1, p0, v0

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

.method static synthetic b([CCII)I
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

    aget-char v1, p0, v0

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
