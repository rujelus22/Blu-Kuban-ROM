.class final Lcom/google/common/collect/cS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/google/common/collect/cM;

.field private final b:Ljava/util/Iterator;

.field private c:Lcom/google/common/collect/cN;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/cM;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/google/common/collect/cS;->a:Lcom/google/common/collect/cM;

    .line 656
    iput-object p2, p0, Lcom/google/common/collect/cS;->b:Ljava/util/Iterator;

    .line 657
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 661
    iget v0, p0, Lcom/google/common/collect/cS;->d:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/cS;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/google/common/collect/cS;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 667
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 669
    :cond_c
    iget v0, p0, Lcom/google/common/collect/cS;->d:I

    if-nez v0, :cond_24

    .line 670
    iget-object v0, p0, Lcom/google/common/collect/cS;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    iput-object v0, p0, Lcom/google/common/collect/cS;->c:Lcom/google/common/collect/cN;

    .line 671
    iget-object v0, p0, Lcom/google/common/collect/cS;->c:Lcom/google/common/collect/cN;

    invoke-interface {v0}, Lcom/google/common/collect/cN;->b()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/cS;->d:I

    iput v0, p0, Lcom/google/common/collect/cS;->e:I

    .line 673
    :cond_24
    iget v0, p0, Lcom/google/common/collect/cS;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/cS;->d:I

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/cS;->f:Z

    .line 675
    iget-object v0, p0, Lcom/google/common/collect/cS;->c:Lcom/google/common/collect/cN;

    invoke-interface {v0}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/common/collect/cS;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 682
    iget v0, p0, Lcom/google/common/collect/cS;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 683
    iget-object v0, p0, Lcom/google/common/collect/cS;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 687
    :goto_11
    iget v0, p0, Lcom/google/common/collect/cS;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/cS;->e:I

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/cS;->f:Z

    .line 689
    return-void

    .line 685
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/cS;->a:Lcom/google/common/collect/cM;

    iget-object v1, p0, Lcom/google/common/collect/cS;->c:Lcom/google/common/collect/cN;

    invoke-interface {v1}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/cM;->remove(Ljava/lang/Object;)Z

    goto :goto_11
.end method
