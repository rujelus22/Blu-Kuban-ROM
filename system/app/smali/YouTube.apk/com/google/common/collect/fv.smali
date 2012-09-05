.class final Lcom/google/common/collect/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/common/collect/fv;->c:Lcom/google/common/collect/RegularImmutableList;

    iput p2, p0, Lcom/google/common/collect/fv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget v0, p0, Lcom/google/common/collect/fv;->b:I

    iput v0, p0, Lcom/google/common/collect/fv;->a:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/common/collect/fv;->a:I

    iget-object v1, p0, Lcom/google/common/collect/fv;->c:Lcom/google/common/collect/RegularImmutableList;

    #getter for: Lcom/google/common/collect/RegularImmutableList;->size:I
    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->access$000(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/common/collect/fv;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/fv;->c:Lcom/google/common/collect/RegularImmutableList;

    iget v1, p0, Lcom/google/common/collect/fv;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7} :catch_f

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/google/common/collect/fv;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/fv;->a:I

    .line 153
    return-object v0

    .line 150
    :catch_f
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/google/common/collect/fv;->a:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/fv;->c:Lcom/google/common/collect/RegularImmutableList;

    iget v1, p0, Lcom/google/common/collect/fv;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_11

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/google/common/collect/fv;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/fv;->a:I

    .line 163
    return-object v0

    .line 160
    :catch_11
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/google/common/collect/fv;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
