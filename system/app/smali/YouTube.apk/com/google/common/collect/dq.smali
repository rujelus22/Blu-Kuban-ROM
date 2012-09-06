.class final Lcom/google/common/collect/dq;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ImmutableMultimap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/common/collect/dq;->b:Lcom/google/common/collect/ImmutableMultimap$Values;

    iput-object p2, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
