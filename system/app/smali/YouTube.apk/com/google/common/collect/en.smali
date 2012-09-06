.class final Lcom/google/common/collect/en;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Queue;

.field final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1292
    iput-object p2, p0, Lcom/google/common/collect/en;->b:Ljava/util/Comparator;

    .line 1296
    new-instance v0, Lcom/google/common/collect/eo;

    invoke-direct {v0, p0}, Lcom/google/common/collect/eo;-><init>(Lcom/google/common/collect/en;)V

    .line 1304
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/common/collect/en;->a:Ljava/util/Queue;

    .line 1306
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 1307
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1308
    iget-object v2, p0, Lcom/google/common/collect/en;->a:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/collect/ee;->f(Ljava/util/Iterator;)Lcom/google/common/collect/jh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1311
    :cond_32
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/en;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1316
    invoke-virtual {p0}, Lcom/google/common/collect/en;->b()Ljava/lang/Object;

    move-result-object v0

    .line 1326
    :goto_c
    return-object v0

    .line 1319
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/en;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jh;

    .line 1320
    invoke-interface {v0}, Lcom/google/common/collect/jh;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1322
    invoke-interface {v0}, Lcom/google/common/collect/jh;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1323
    iget-object v2, p0, Lcom/google/common/collect/en;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_24
    move-object v0, v1

    .line 1326
    goto :goto_c
.end method
