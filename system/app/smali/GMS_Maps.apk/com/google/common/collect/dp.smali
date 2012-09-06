.class Lcom/google/common/collect/dp;
.super Lcom/google/common/collect/dF;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/google/common/collect/do;


# direct methods
.method constructor <init>(Lcom/google/common/collect/do;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/collect/dp;->c:Lcom/google/common/collect/do;

    iput p2, p0, Lcom/google/common/collect/dp;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/dF;-><init>()V

    .line 66
    iget v0, p0, Lcom/google/common/collect/dp;->b:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    if-nez v0, :cond_a

    .line 78
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 80
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/dp;->c:Lcom/google/common/collect/do;

    iget-object v0, v0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    if-eqz v0, :cond_a

    .line 90
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 92
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/dp;->c:Lcom/google/common/collect/do;

    iget-object v0, v0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/common/collect/dp;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
