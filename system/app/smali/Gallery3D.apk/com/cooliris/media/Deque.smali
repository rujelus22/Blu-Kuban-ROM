.class public final Lcom/cooliris/media/Deque;
.super Ljava/lang/Object;
.source "Deque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 26
    iput v0, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private expand()V
    .registers 8

    .prologue
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    const/4 v6, 0x0

    .line 120
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 121
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v2, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 122
    .local v2, head:I
    array-length v1, v0

    .line 123
    .local v1, capacity:I
    sub-int v5, v1, v2

    .line 124
    .local v5, rightSize:I
    shl-int/lit8 v4, v1, 0x1

    .line 125
    .local v4, newCapacity:I
    new-array v3, v4, [Ljava/lang/Object;

    .line 126
    .local v3, newArray:[Ljava/lang/Object;
    invoke-static {v0, v2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-static {v0, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    check-cast v3, [Ljava/lang/Object;

    .end local v3           #newArray:[Ljava/lang/Object;
    iput-object v3, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 129
    iput v6, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 130
    iput v1, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 131
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 74
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v2, p0, Lcom/cooliris/media/Deque;->mHead:I

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 75
    .local v1, head:I
    iput v1, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 76
    aput-object p1, v0, v1

    .line 77
    iget v2, p0, Lcom/cooliris/media/Deque;->mTail:I

    if-ne v1, v2, :cond_16

    .line 78
    invoke-direct {p0}, Lcom/cooliris/media/Deque;->expand()V

    .line 80
    :cond_16
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 84
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v1, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 85
    .local v1, tail:I
    aput-object p1, v0, v1

    .line 86
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 87
    iput v1, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 88
    iget v2, p0, Lcom/cooliris/media/Deque;->mHead:I

    if-ne v2, v1, :cond_16

    .line 89
    invoke-direct {p0}, Lcom/cooliris/media/Deque;->expand()V

    .line 91
    :cond_16
    return-void
.end method

.method public clear()V
    .registers 7

    .prologue
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    const/4 v5, 0x0

    .line 50
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 51
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v1, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 52
    .local v1, head:I
    iget v3, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 53
    .local v3, tail:I
    if-eq v1, v3, :cond_19

    .line 54
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .line 56
    .local v2, mask:I
    :cond_c
    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 57
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 58
    if-ne v1, v3, :cond_c

    .line 59
    iput v5, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 60
    iput v5, p0, Lcom/cooliris/media/Deque;->mTail:I

    .line 62
    .end local v2           #mask:I
    :cond_19
    return-void
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 95
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v1, p0, Lcom/cooliris/media/Deque;->mHead:I

    .line 96
    .local v1, head:I
    aget-object v2, v0, v1

    .line 97
    .local v2, result:Ljava/lang/Object;,"TE;"
    if-nez v2, :cond_b

    move-object v2, v3

    .line 102
    .end local v2           #result:Ljava/lang/Object;,"TE;"
    :goto_a
    return-object v2

    .line 100
    .restart local v2       #result:Ljava/lang/Object;,"TE;"
    :cond_b
    aput-object v3, v0, v1

    .line 101
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/cooliris/media/Deque;->mHead:I

    goto :goto_a
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    .line 107
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    iget v4, p0, Lcom/cooliris/media/Deque;->mTail:I

    add-int/lit8 v4, v4, -0x1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 108
    .local v2, tail:I
    aget-object v1, v0, v2

    .line 109
    .local v1, result:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_12

    move-object v1, v3

    .line 114
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :goto_11
    return-object v1

    .line 112
    .restart local v1       #result:Ljava/lang/Object;,"TE;"
    :cond_12
    aput-object v3, v0, v2

    .line 113
    iput v2, p0, Lcom/cooliris/media/Deque;->mTail:I

    goto :goto_11
.end method

.method public size()I
    .registers 3

    .prologue
    .line 44
    .local p0, this:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<TE;>;"
    iget v0, p0, Lcom/cooliris/media/Deque;->mTail:I

    iget v1, p0, Lcom/cooliris/media/Deque;->mHead:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cooliris/media/Deque;->mArray:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method
