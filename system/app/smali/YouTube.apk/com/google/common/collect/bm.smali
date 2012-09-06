.class final Lcom/google/common/collect/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/collect/bk;)Lcom/google/common/collect/bl;
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/common/collect/bn;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bn;-><init>(Lcom/google/common/collect/bk;)V

    return-object v0
.end method
