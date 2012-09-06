.class final Lcom/google/common/collect/iz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/google/common/collect/iq;

.field private final b:Ljava/util/Iterator;

.field private c:Lcom/google/common/collect/ir;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/iq;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lcom/google/common/collect/iz;->a:Lcom/google/common/collect/iq;

    .line 895
    iput-object p2, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Iterator;

    .line 896
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 900
    iget v0, p0, Lcom/google/common/collect/iz;->d:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Iterator;

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

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/google/common/collect/iz;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 906
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 908
    :cond_c
    iget v0, p0, Lcom/google/common/collect/iz;->d:I

    if-nez v0, :cond_24

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    iput-object v0, p0, Lcom/google/common/collect/iz;->c:Lcom/google/common/collect/ir;

    .line 910
    iget-object v0, p0, Lcom/google/common/collect/iz;->c:Lcom/google/common/collect/ir;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/iz;->d:I

    iput v0, p0, Lcom/google/common/collect/iz;->e:I

    .line 912
    :cond_24
    iget v0, p0, Lcom/google/common/collect/iz;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/iz;->d:I

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/iz;->f:Z

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/iz;->c:Lcom/google/common/collect/ir;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/common/collect/iz;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 921
    iget v0, p0, Lcom/google/common/collect/iz;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 922
    iget-object v0, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 926
    :goto_11
    iget v0, p0, Lcom/google/common/collect/iz;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/iz;->e:I

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/iz;->f:Z

    .line 928
    return-void

    .line 924
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/iz;->a:Lcom/google/common/collect/iq;

    iget-object v1, p0, Lcom/google/common/collect/iz;->c:Lcom/google/common/collect/ir;

    invoke-interface {v1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;)Z

    goto :goto_11
.end method
