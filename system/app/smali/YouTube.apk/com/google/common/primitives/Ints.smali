.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(J)I
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    long-to-int v3, p0

    .line 84
    int-to-long v4, v3

    cmp-long v0, v4, p0

    if-nez v0, :cond_17

    move v0, v1

    :goto_9
    const-string v4, "Out of range: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v3

    :cond_17
    move v0, v2

    .line 84
    goto :goto_9
.end method

.method static synthetic a([IIII)I
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

    aget v1, p0, v0

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

.method public static b(J)I
    .registers 4
    .parameter

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_a
    return v0

    .line 100
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 101
    const/high16 v0, -0x8000

    goto :goto_a

    .line 103
    :cond_15
    long-to-int v0, p0

    goto :goto_a
.end method

.method static synthetic b([IIII)I
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

    aget v1, p0, v0

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
