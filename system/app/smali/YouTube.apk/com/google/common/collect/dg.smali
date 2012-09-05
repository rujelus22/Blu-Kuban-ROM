.class final Lcom/google/common/collect/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/df;


# direct methods
.method constructor <init>(Lcom/google/common/collect/df;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/common/collect/dg;->b:Lcom/google/common/collect/df;

    iput-object p2, p0, Lcom/google/common/collect/dg;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/common/collect/dg;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/common/collect/dg;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    new-instance v1, Lcom/google/common/collect/dh;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dh;-><init>(Lcom/google/common/collect/dg;Lcom/google/common/collect/ds;)V

    return-object v1
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/common/collect/dg;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 800
    return-void
.end method
