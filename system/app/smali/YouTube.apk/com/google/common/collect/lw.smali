.class final Lcom/google/common/collect/lw;
.super Lcom/google/common/collect/cw;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/common/collect/lw;->b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/lw;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/cw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/common/collect/lw;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/lw;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/lw;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/lx;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/lx;-><init>(Lcom/google/common/collect/lw;Ljava/util/Map$Entry;)V

    return-object v1
.end method
