.class public final LJ/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)I
    .registers 4
    .parameter

    .prologue
    .line 87
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 88
    const v0, 0x7fffffff

    .line 93
    :goto_a
    return v0

    .line 90
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 91
    const/high16 v0, -0x8000

    goto :goto_a

    .line 93
    :cond_15
    long-to-int v0, p0

    goto :goto_a
.end method
