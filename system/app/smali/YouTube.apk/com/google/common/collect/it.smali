.class final Lcom/google/common/collect/it;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/is;


# direct methods
.method constructor <init>(Lcom/google/common/collect/is;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/common/collect/it;->b:Lcom/google/common/collect/is;

    iput-object p2, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/it;->b:Lcom/google/common/collect/is;

    iget-object v2, v2, Lcom/google/common/collect/is;->b:Lcom/google/common/collect/iq;

    invoke-interface {v2, v1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    invoke-virtual {p0}, Lcom/google/common/collect/it;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_2a
.end method
