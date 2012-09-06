.class Lcom/google/common/collect/RegularImmutableList$1;
.super Ljava/lang/Object;
.source "RegularImmutableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iput p2, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    iput v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 132
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

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

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 135
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    invoke-virtual {v2, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7} :catch_f

    move-result-object v0

    .line 152
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    .line 153
    return-object v0

    .line 149
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :catch_f
    move-exception v1

    .line 150
    .local v1, rethrown:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 139
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_11

    move-result-object v0

    .line 162
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    .line 163
    return-object v0

    .line 159
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :catch_11
    move-exception v1

    .line 160
    .local v1, rethrown:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/google/common/collect/RegularImmutableList$1;,"Lcom/google/common/collect/RegularImmutableList.1;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
