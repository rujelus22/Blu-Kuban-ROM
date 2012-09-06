.class final Lcom/google/common/collect/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/fk;

.field c:Lcom/google/common/collect/fk;

.field final synthetic d:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/common/collect/fe;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/fe;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/fe;->d:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/common/collect/fe;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

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
    .line 375
    iget-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    iget-object v1, v1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fe;->b:Lcom/google/common/collect/fk;

    iget-object v1, v1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 381
    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/fe;->d:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    iget-object v1, v1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fe;->c:Lcom/google/common/collect/fk;

    .line 388
    return-void

    .line 385
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method
