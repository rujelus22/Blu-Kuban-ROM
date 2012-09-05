.class final Lcom/google/common/collect/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/ds;

.field c:Lcom/google/common/collect/ds;

.field final synthetic d:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/dm;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/common/collect/dm;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/common/collect/dm;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/Set;

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/dm;->d:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    .line 305
    iget-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    iget-object v1, v1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    .line 308
    iget-object v0, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/dm;->b:Lcom/google/common/collect/ds;

    iget-object v1, v1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/dm;->d:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    iget-object v1, v1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/dm;->c:Lcom/google/common/collect/ds;

    .line 315
    return-void

    .line 312
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method
