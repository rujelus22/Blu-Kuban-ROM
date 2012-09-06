.class final Lcom/google/common/collect/el;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/base/ah;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/ah;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/common/collect/el;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/el;->b:Lcom/google/common/base/ah;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 647
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/el;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 648
    iget-object v0, p0, Lcom/google/common/collect/el;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/google/common/collect/el;->b:Lcom/google/common/base/ah;

    invoke-interface {v1, v0}, Lcom/google/common/base/ah;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/el;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_16
.end method
