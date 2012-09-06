.class final Lcom/google/common/collect/fa;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/fa;->a:Ljava/util/Set;

    .line 1044
    if-nez v0, :cond_e

    .line 1045
    new-instance v0, Lcom/google/common/collect/fb;

    iget-object v1, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/fb;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    iput-object v0, p0, Lcom/google/common/collect/fa;->a:Ljava/util/Set;

    .line 1047
    :cond_e
    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
