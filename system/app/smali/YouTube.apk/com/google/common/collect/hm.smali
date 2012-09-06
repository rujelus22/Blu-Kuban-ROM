.class final Lcom/google/common/collect/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Lcom/google/common/collect/hl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hl;)V
    .registers 2
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/common/collect/hm;->a:Lcom/google/common/collect/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 1216
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/hm;->a:Lcom/google/common/collect/hl;

    iget-object v1, v1, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    iget-object v1, v1, Lcom/google/common/collect/hk;->b:Lcom/google/common/collect/he;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/he;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
