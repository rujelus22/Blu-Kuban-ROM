.class final Lcom/google/common/collect/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# instance fields
.field final a:Lcom/google/common/collect/ee;

.field final b:Lcom/google/common/collect/ee;

.field final synthetic c:Lcom/google/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/common/collect/ej;->c:Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/ee;

    .line 645
    iput-object p3, p0, Lcom/google/common/collect/ej;->b:Lcom/google/common/collect/ee;

    .line 646
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/common/collect/ej;->c:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/bj;

    iget-object v1, p0, Lcom/google/common/collect/ej;->b:Lcom/google/common/collect/ee;

    invoke-interface {v0, v1}, Lcom/google/common/collect/bj;->removeEntry(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 5
    .parameter

    .prologue
    .line 662
    new-instance v0, Lcom/google/common/collect/ej;

    iget-object v1, p0, Lcom/google/common/collect/ej;->c:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/ee;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/ej;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)V

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/ee;

    invoke-interface {v0}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/em;->get()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    move-result-object v0

    .line 655
    return-object v0

    :catchall_b
    move-exception v0

    .line 656
    invoke-direct {p0}, Lcom/google/common/collect/ej;->b()V

    throw v0
.end method

.method public final n_()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ej;->c:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/ee;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/google/common/collect/ee;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_9

    move-result-object v0

    .line 673
    return-object v0

    :catchall_9
    move-exception v0

    .line 674
    invoke-direct {p0}, Lcom/google/common/collect/ej;->b()V

    throw v0
.end method
