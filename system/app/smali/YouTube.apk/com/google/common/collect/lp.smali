.class final Lcom/google/common/collect/lp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/lo;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lo;)V
    .registers 3
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/common/collect/lp;->b:Lcom/google/common/collect/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iget-object v0, p0, Lcom/google/common/collect/lp;->b:Lcom/google/common/collect/lo;

    iget-object v0, v0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableEntry;

    iget-object v2, p0, Lcom/google/common/collect/lp;->b:Lcom/google/common/collect/lo;

    iget-object v2, v2, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1006
    return-void
.end method
