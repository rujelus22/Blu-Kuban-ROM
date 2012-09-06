.class public Lcom/google/googlenav/common/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .registers 2

    .prologue
    .line 25
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit or feature test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_e
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a debug build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_e
    return-void
.end method
