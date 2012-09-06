.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/cx;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bj;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/bj;

.field transient inverse:Lcom/google/common/collect/bj;

.field final unmodifiableMap:Ljava/util/Map;

.field transient values:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Lcom/google/common/collect/bj;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/google/common/collect/cx;-><init>()V

    .line 873
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 874
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/bj;

    .line 875
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/bj;

    .line 876
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 884
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/bj;
    .registers 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/bj;

    .line 890
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/bj;

    invoke-interface {v1}, Lcom/google/common/collect/bj;->inverse()Lcom/google/common/collect/bj;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/bj;Lcom/google/common/collect/bj;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/bj;

    :cond_11
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 897
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/bj;

    invoke-interface {v0}, Lcom/google/common/collect/bj;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_10
    return-object v0
.end method
