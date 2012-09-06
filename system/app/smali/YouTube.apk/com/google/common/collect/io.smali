.class abstract Lcom/google/common/collect/io;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2007
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/hu;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/google/common/collect/io;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->clear()V

    .line 2038
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/google/common/collect/io;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/google/common/collect/io;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2013
    new-instance v1, Lcom/google/common/collect/ip;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ip;-><init>(Lcom/google/common/collect/io;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/common/collect/io;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->size()I

    move-result v0

    return v0
.end method
