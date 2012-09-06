.class final Lcom/google/common/collect/id;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/google/common/collect/id;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iput-object p2, p0, Lcom/google/common/collect/id;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1065
    new-instance v0, Lcom/google/common/collect/ie;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ie;-><init>(Lcom/google/common/collect/id;)V

    return-object v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/google/common/collect/id;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/id;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
