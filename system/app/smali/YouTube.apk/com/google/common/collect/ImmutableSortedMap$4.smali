.class Lcom/google/common/collect/ImmutableSortedMap$4;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 716
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$4;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 719
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
