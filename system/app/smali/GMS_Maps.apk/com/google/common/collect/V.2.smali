.class Lcom/google/common/collect/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/T;


# direct methods
.method constructor <init>(Lcom/google/common/collect/T;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/common/collect/V;->b:Lcom/google/common/collect/T;

    iput-object p2, p0, Lcom/google/common/collect/V;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/common/collect/V;->b:Lcom/google/common/collect/T;

    iget-object v0, v0, Lcom/google/common/collect/T;->b:Lcom/google/common/base/Q;

    invoke-interface {v0, p1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/V;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
