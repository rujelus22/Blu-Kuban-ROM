.class final Lcom/google/common/collect/cc;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/util/Iterator;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$EntryCollection;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/common/collect/cc;->d:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    iput-object p2, p0, Lcom/google/common/collect/cc;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/cc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/cc;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/cc;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/common/collect/cc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/cc;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/cc;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/cc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cc;->b:Ljava/util/Iterator;

    :cond_26
    iget-object v0, p0, Lcom/google/common/collect/cc;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/cc;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
