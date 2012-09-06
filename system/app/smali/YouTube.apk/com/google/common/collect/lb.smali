.class final Lcom/google/common/collect/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/kz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kz;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/common/collect/lb;->b:Lcom/google/common/collect/kz;

    iput-object p2, p0, Lcom/google/common/collect/lb;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 739
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/lb;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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
