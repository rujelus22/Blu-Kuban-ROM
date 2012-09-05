.class final Lcom/google/common/collect/cu;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(II[Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 867
    iput p1, p0, Lcom/google/common/collect/cu;->b:I

    iput p2, p0, Lcom/google/common/collect/cu;->c:I

    iput-object p3, p0, Lcom/google/common/collect/cu;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    .line 868
    iget v0, p0, Lcom/google/common/collect/cu;->b:I

    iput v0, p0, Lcom/google/common/collect/cu;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 870
    iget v0, p0, Lcom/google/common/collect/cu;->a:I

    iget v1, p0, Lcom/google/common/collect/cu;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/google/common/collect/cu;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 874
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 876
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/cu;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/cu;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/cu;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
