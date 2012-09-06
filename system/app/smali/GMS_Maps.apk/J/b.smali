.class public final LJ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 74
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method
