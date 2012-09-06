.class public Lcom/google/googlenav/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IZI)LS/d;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->o()LS/b;

    move-result-object v0

    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, p2

    move v6, v3

    invoke-interface/range {v0 .. v6}, LS/b;->a(IZZIZZ)LS/d;

    move-result-object v0

    return-object v0
.end method
