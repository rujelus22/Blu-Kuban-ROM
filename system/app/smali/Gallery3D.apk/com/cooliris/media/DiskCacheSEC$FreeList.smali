.class Lcom/cooliris/media/DiskCacheSEC$FreeList;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCacheSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeList"
.end annotation


# instance fields
.field private mChunkFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/cooliris/media/DiskCacheSEC$ChunkFile;",
            ">;"
        }
    .end annotation
.end field

.field private mMax:I

.field final synthetic this$0:Lcom/cooliris/media/DiskCacheSEC;


# direct methods
.method constructor <init>(Lcom/cooliris/media/DiskCacheSEC;)V
    .registers 3
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mMax:I

    .line 236
    return-void
.end method


# virtual methods
.method add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    .registers 6
    .parameter "chunk"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 240
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct {v2, v3, p1}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;-><init>(Lcom/cooliris/media/DiskCacheSEC;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mMax:I

    if-le p1, v0, :cond_22

    .line 243
    iput p1, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mMax:I

    .line 246
    :cond_22
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    return-object v0
.end method

.method alloc(I)Lcom/cooliris/media/DiskCacheSEC$Chunk;
    .registers 10
    .parameter "size"

    .prologue
    const/4 v7, 0x0

    .line 270
    add-int/lit16 v5, p1, 0x400

    add-int/lit8 v5, v5, -0x1

    div-int/lit16 v1, v5, 0x400

    .line 273
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v5, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-ge v2, v5, :cond_28

    .line 274
    invoke-virtual {p0, v2}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v0

    .line 275
    .local v0, chunk:Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->searchFree(I)I

    move-result v4

    .line 277
    .local v4, offset:I
    if-ltz v4, :cond_25

    .line 278
    invoke-virtual {v0, v4, v1}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->setAlloc(II)V

    .line 279
    new-instance v5, Lcom/cooliris/media/DiskCacheSEC$Chunk;

    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct {v5, v6, v2, v4, v1}, Lcom/cooliris/media/DiskCacheSEC$Chunk;-><init>(Lcom/cooliris/media/DiskCacheSEC;III)V

    .line 288
    .end local v4           #offset:I
    :goto_24
    return-object v5

    .line 273
    .restart local v4       #offset:I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 284
    .end local v0           #chunk:Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    .end local v4           #offset:I
    :cond_28
    iget v5, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mMax:I

    add-int/lit8 v3, v5, 0x1

    .line 285
    .local v3, newChunkIndex:I
    invoke-virtual {p0, v3}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v0

    .line 286
    .restart local v0       #chunk:Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    invoke-virtual {v0, v7, v1}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->setAlloc(II)V

    .line 288
    new-instance v5, Lcom/cooliris/media/DiskCacheSEC$Chunk;

    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct {v5, v6, v3, v7, v1}, Lcom/cooliris/media/DiskCacheSEC$Chunk;-><init>(Lcom/cooliris/media/DiskCacheSEC;III)V

    goto :goto_24
.end method

.method free(III)V
    .registers 7
    .parameter "chunk"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v2

    .line 263
    .local v2, chunkFile:Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    div-int/lit16 v1, p2, 0x400

    .line 264
    .local v1, blockOffset:I
    div-int/lit16 v0, p3, 0x400

    .line 266
    .local v0, blockCount:I
    invoke-virtual {v2, v1, v0}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->setFree(II)V

    .line 267
    return-void
.end method

.method getChunkFile(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    .registers 3
    .parameter "i"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v0

    return-object v0
.end method

.method setAlloc(III)V
    .registers 7
    .parameter "chunk"
    .parameter "offset"
    .parameter "sizeOnDisk"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->add(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v0

    .line 257
    .local v0, chunkFile:Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
    div-int/lit16 v1, p2, 0x400

    div-int/lit16 v2, p3, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->setAlloc(II)V

    .line 258
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$FreeList;->mChunkFiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
