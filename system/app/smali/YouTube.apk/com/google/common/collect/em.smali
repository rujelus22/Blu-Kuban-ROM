.class final Lcom/google/common/collect/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/common/collect/em;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/em;->b:Lcom/google/common/base/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/common/collect/em;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/common/collect/em;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/google/common/collect/em;->b:Lcom/google/common/base/v;

    invoke-interface {v1, v0}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/common/collect/em;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 817
    return-void
.end method
