.class Lcom/google/common/collect/bM;
.super Lcom/google/common/collect/dB;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/bK;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bK;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/common/collect/bM;->a:Lcom/google/common/collect/bK;

    invoke-direct {p0, p2}, Lcom/google/common/collect/dB;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 534
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 531
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/bM;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
