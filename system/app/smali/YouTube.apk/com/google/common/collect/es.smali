.class final Lcom/google/common/collect/es;
.super Lcom/google/common/collect/bm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/eq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/eq;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/common/collect/es;->b:Lcom/google/common/collect/eq;

    iput-object p2, p0, Lcom/google/common/collect/es;->a:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/google/common/collect/bm;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/google/common/collect/es;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/common/collect/es;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/es;->b:Lcom/google/common/collect/eq;

    invoke-virtual {v0}, Lcom/google/common/collect/eq;->isEmpty()Z

    move-result v0

    return v0
.end method
