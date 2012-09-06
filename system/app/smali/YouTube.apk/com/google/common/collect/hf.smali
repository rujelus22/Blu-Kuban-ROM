.class abstract Lcom/google/common/collect/hf;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1924
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Set;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/common/collect/hf;->a:Ljava/util/Set;

    .line 1936
    if-nez v0, :cond_a

    .line 1937
    invoke-virtual {p0}, Lcom/google/common/collect/hf;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hf;->a:Ljava/util/Set;

    .line 1939
    :cond_a
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Lcom/google/common/collect/hf;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/google/common/collect/hf;->b:Ljava/util/Set;

    .line 1946
    if-nez v0, :cond_b

    .line 1947
    new-instance v0, Lcom/google/common/collect/hg;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hg;-><init>(Lcom/google/common/collect/hf;)V

    iput-object v0, p0, Lcom/google/common/collect/hf;->b:Ljava/util/Set;

    .line 1953
    :cond_b
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/google/common/collect/hf;->c:Ljava/util/Collection;

    .line 1960
    if-nez v0, :cond_b

    .line 1961
    new-instance v0, Lcom/google/common/collect/hh;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hh;-><init>(Lcom/google/common/collect/hf;)V

    iput-object v0, p0, Lcom/google/common/collect/hf;->c:Ljava/util/Collection;

    .line 1967
    :cond_b
    return-object v0
.end method
