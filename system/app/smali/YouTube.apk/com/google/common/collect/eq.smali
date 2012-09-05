.class abstract Lcom/google/common/collect/eq;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field private transient a:Ljava/util/Set;

.field private transient b:Ljava/util/Set;

.field private transient c:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1264
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Set;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/common/collect/eq;->a:Ljava/util/Set;

    .line 1278
    if-nez v0, :cond_a

    .line 1279
    invoke-virtual {p0}, Lcom/google/common/collect/eq;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/eq;->a:Ljava/util/Set;

    .line 1281
    :cond_a
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/google/common/collect/eq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/google/common/collect/eq;->b:Ljava/util/Set;

    .line 1288
    if-nez v0, :cond_f

    .line 1289
    invoke-super {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1290
    new-instance v0, Lcom/google/common/collect/er;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/er;-><init>(Lcom/google/common/collect/eq;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/eq;->b:Ljava/util/Set;

    .line 1300
    :cond_f
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/common/collect/eq;->c:Ljava/util/Collection;

    .line 1307
    if-nez v0, :cond_f

    .line 1308
    invoke-super {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1309
    new-instance v0, Lcom/google/common/collect/es;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/es;-><init>(Lcom/google/common/collect/eq;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/eq;->c:Ljava/util/Collection;

    .line 1319
    :cond_f
    return-object v0
.end method
