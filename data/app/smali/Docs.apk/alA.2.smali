.class public final LalA;
.super Ljava/lang/Object;
.source "Ints.java"


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
