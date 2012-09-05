.class public Lcom/vlingo/client/lmtt/ChunkStackEntry;
.super Ljava/lang/Object;
.source "ChunkStackEntry.java"


# instance fields
.field private chunk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;"
        }
    .end annotation
.end field

.field private chunkUpdateState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

.field private size:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunkUpdateState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 14
    return-void
.end method


# virtual methods
.method public getChunk()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunk:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunk:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLMTTChunkUpdateState()Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunkUpdateState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->size:I

    return v0
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, chunk:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    iput-object p1, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunk:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public setLMTTChunkUpdateState(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->chunkUpdateState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    .line 28
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 35
    iput p1, p0, Lcom/vlingo/client/lmtt/ChunkStackEntry;->size:I

    .line 36
    return-void
.end method
