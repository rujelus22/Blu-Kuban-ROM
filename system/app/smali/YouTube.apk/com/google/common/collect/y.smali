.class final Lcom/google/common/collect/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field d:Ljava/util/Iterator;

.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/google/common/collect/y;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Iterator;

    .line 1116
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1117
    invoke-direct {p0}, Lcom/google/common/collect/y;->a()V

    .line 1121
    :goto_1e
    return-void

    .line 1119
    :cond_1f
    invoke-static {}, Lcom/google/common/collect/ee;->b()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    goto :goto_1e
.end method

.method private a()V
    .registers 3

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/y;->b:Ljava/lang/Object;

    .line 1126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/y;->c:Ljava/util/Collection;

    .line 1127
    iget-object v0, p0, Lcom/google/common/collect/y;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    .line 1128
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/common/collect/y;->a()V

    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/y;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/common/collect/y;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1146
    iget-object v0, p0, Lcom/google/common/collect/y;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1147
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1149
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/y;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 1150
    return-void
.end method
