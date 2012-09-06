.class final Lcom/google/common/collect/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/kx;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kx;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/common/collect/ky;->b:Lcom/google/common/collect/kx;

    iput-object p2, p0, Lcom/google/common/collect/ky;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 681
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/ky;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
