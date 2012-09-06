.class final Lcom/google/common/collect/ha;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/google/common/collect/ha;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/common/collect/ha;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/common/collect/ha;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
