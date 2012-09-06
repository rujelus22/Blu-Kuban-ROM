.class final Lcom/google/common/collect/gc;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ga;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ga;Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/common/collect/gc;->a:Lcom/google/common/collect/ga;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3399
    check-cast p1, Lcom/google/common/collect/gg;

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gc;->a:Lcom/google/common/collect/ga;

    iget-object v1, v1, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
