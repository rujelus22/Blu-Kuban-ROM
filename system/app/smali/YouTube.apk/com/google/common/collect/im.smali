.class final Lcom/google/common/collect/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/il;


# direct methods
.method constructor <init>(Lcom/google/common/collect/il;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/common/collect/im;->b:Lcom/google/common/collect/il;

    iput-object p2, p0, Lcom/google/common/collect/im;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/common/collect/im;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/common/collect/im;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
