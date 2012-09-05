.class final Lcom/google/common/collect/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/ds;

.field b:Lcom/google/common/collect/ds;

.field final synthetic c:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/common/collect/dt;->c:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/google/common/collect/dt;->c:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/dt;->b:Lcom/google/common/collect/ds;

    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/ds;

    iget-object v0, p0, Lcom/google/common/collect/dt;->b:Lcom/google/common/collect/ds;

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/dt;->b:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/dt;->c:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/dt;->b:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/ds;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ds;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/dt;->b:Lcom/google/common/collect/ds;

    .line 290
    return-void

    .line 287
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
