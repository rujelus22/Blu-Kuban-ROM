.class final Lcom/google/common/collect/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/cz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cz;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/common/collect/da;->c:Lcom/google/common/collect/cz;

    iput-object p2, p0, Lcom/google/common/collect/da;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/common/collect/da;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/common/collect/da;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/da;->a:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/google/common/collect/da;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/common/collect/da;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/da;->c:Lcom/google/common/collect/cz;

    iget-object v0, v0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/da;->c:Lcom/google/common/collect/cz;

    iget-object v2, p0, Lcom/google/common/collect/da;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/cz;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method
