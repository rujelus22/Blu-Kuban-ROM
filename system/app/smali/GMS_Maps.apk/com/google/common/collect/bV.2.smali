.class final Lcom/google/common/collect/bV;
.super Lcom/google/common/collect/dE;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/common/collect/bV;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/dE;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/bV;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/common/collect/bV;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/common/collect/bV;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
