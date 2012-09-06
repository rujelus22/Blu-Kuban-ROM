.class final Lcom/google/common/collect/fz;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fx;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fx;Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/google/common/collect/fz;->a:Lcom/google/common/collect/fx;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3263
    check-cast p1, Lcom/google/common/collect/gg;

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNextEvictable()Lcom/google/common/collect/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/fz;->a:Lcom/google/common/collect/fx;

    iget-object v1, v1, Lcom/google/common/collect/fx;->a:Lcom/google/common/collect/gg;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
