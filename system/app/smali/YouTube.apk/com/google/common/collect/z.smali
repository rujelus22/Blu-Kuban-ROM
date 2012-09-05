.class final Lcom/google/common/collect/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 1072
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/google/common/collect/z;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1072
    new-instance v1, Lcom/google/common/collect/y;

    iget-object v2, p0, Lcom/google/common/collect/z;->b:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1084
    return-void
.end method
