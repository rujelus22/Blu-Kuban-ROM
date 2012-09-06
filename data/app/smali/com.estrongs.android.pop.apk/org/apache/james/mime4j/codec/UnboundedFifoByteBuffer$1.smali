.class Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field final synthetic this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v0, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public next()Ljava/lang/Byte;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    #calls: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->increment(I)I
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$000(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    if-ne v0, v5, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->remove()B

    iput v5, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_20
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v2, :cond_4e

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3d

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v0

    move v0, v1

    goto :goto_20

    :cond_3d
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v4, v4, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4e
    iput v5, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    #calls: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v2, v3}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v2

    iput v2, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    #calls: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    goto :goto_1b
.end method
