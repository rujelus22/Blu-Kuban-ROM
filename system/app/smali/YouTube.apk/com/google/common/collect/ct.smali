.class final Lcom/google/common/collect/ct;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field final a:I

.field b:I

.field final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/common/collect/ct;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    .line 827
    iget-object v0, p0, Lcom/google/common/collect/ct;->c:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/google/common/collect/ct;->a:I

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ct;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 830
    iget v0, p0, Lcom/google/common/collect/ct;->b:I

    iget v1, p0, Lcom/google/common/collect/ct;->a:I

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
    .line 833
    iget v0, p0, Lcom/google/common/collect/ct;->b:I

    iget v1, p0, Lcom/google/common/collect/ct;->a:I

    if-ge v0, v1, :cond_11

    .line 834
    iget-object v0, p0, Lcom/google/common/collect/ct;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ct;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ct;->b:I

    aget-object v0, v0, v1

    return-object v0

    .line 836
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
