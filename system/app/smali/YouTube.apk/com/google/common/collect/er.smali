.class final Lcom/google/common/collect/er;
.super Lcom/google/common/collect/bt;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/eq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/eq;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/eq;

    iput-object p2, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/bt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/eq;

    invoke-virtual {v0}, Lcom/google/common/collect/eq;->isEmpty()Z

    move-result v0

    return v0
.end method
