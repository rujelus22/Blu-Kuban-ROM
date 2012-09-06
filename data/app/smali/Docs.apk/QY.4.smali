.class public LQY;
.super Ljava/lang/Object;
.source "FileExposers.java"


# direct methods
.method private static a(LRd;Z)LQW;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {}, LRt;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 26
    new-instance v0, LRt;

    invoke-direct {v0, p0}, LRt;-><init>(LRd;)V

    .line 30
    :goto_d
    return-object v0

    .line 28
    :cond_e
    new-instance v0, LRw;

    invoke-static {}, LRz;->a()LRy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LRw;-><init>(LRd;LRy;)V

    goto :goto_d
.end method

.method public static a(LZJ;LRd;)LQW;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-interface {p0}, LZJ;->c()Z

    move-result v0

    invoke-static {p1, v0}, LQY;->a(LRd;Z)LQW;

    move-result-object v0

    return-object v0
.end method
