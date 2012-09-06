.class final Lcom/google/common/collect/cK;
.super Lcom/google/common/collect/y;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/common/collect/cK;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/common/collect/cK;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/cK;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
