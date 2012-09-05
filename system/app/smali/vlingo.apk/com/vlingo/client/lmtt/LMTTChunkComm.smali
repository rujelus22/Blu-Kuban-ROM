.class public Lcom/vlingo/client/lmtt/LMTTChunkComm;
.super Ljava/lang/Object;
.source "LMTTChunkComm.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createLMTTRequest(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLcom/vlingo/client/core/http/HttpCallback;)Ljava/util/Stack;
    .registers 19
    .parameter "lmttUpdateType"
    .parameter
    .parameter "doWhole"
    .parameter "doEmpty"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;ZZ",
            "Lcom/vlingo/client/core/http/HttpCallback;",
            ")",
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/vlingo/client/core/http/HttpRequest;",
            "Lcom/vlingo/client/lmtt/ChunkStackEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, itemsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 44
    .local v11, requests:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/util/Pair<Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/lmtt/ChunkStackEntry;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, chunk:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    const/4 v6, 0x0

    .line 46
    .local v6, firstHttpRequest:Lcom/vlingo/client/core/http/HttpRequest;
    const/4 v5, 0x0

    .line 47
    .local v5, firstChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    const/4 v4, 0x1

    .line 48
    .local v4, first:Z
    const/4 v3, 0x0

    .line 61
    .local v3, chunkCounter:I
    if-nez p3, :cond_5e

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vlingo/client/lmtt/LMTTItem;

    .line 63
    .local v8, item:Lcom/vlingo/client/lmtt/LMTTItem;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v13, 0x9c4

    if-lt v12, v13, :cond_14

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 70
    if-eqz v4, :cond_54

    if-eqz p2, :cond_54

    const/4 v12, 0x1

    :goto_32
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v2, v12, v0, v1}, Lcom/vlingo/client/lmtt/LMTTComm;->createLMTTRequest(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v10

    .line 71
    .local v10, newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    new-instance v9, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    sget-object v12, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->START_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-direct {v9, v12}, Lcom/vlingo/client/lmtt/ChunkStackEntry;-><init>(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    .line 72
    .local v9, newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    const/16 v12, 0x9c4

    invoke-virtual {v9, v12}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setSize(I)V

    .line 73
    invoke-virtual {v9, v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setItemList(Ljava/util/ArrayList;)V

    .line 74
    if-eqz v4, :cond_56

    .line 77
    move-object v6, v10

    .line 78
    move-object v5, v9

    .line 82
    :goto_4d
    const/4 v4, 0x0

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #chunk:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #chunk:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    goto :goto_14

    .line 70
    .end local v9           #newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    .end local v10           #newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :cond_54
    const/4 v12, 0x0

    goto :goto_32

    .line 80
    .restart local v9       #newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    .restart local v10       #newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :cond_56
    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 88
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v9           #newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    .end local v10           #newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_69

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_90

    .line 89
    :cond_69
    add-int/lit8 v3, v3, 0x1

    .line 95
    if-eqz v4, :cond_9a

    if-eqz p2, :cond_9a

    const/4 v12, 0x1

    :goto_70
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v2, v12, v0, v1}, Lcom/vlingo/client/lmtt/LMTTComm;->createLMTTRequest(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v10

    .line 96
    .restart local v10       #newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    new-instance v9, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    sget-object v12, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->START_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    invoke-direct {v9, v12}, Lcom/vlingo/client/lmtt/ChunkStackEntry;-><init>(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    .line 97
    .restart local v9       #newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setSize(I)V

    .line 98
    invoke-virtual {v9, v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setItemList(Ljava/util/ArrayList;)V

    .line 99
    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v9           #newChunk:Lcom/vlingo/client/lmtt/ChunkStackEntry;
    .end local v10           #newRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :cond_90
    if-eqz v6, :cond_99

    .line 104
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_99
    return-object v11

    .line 95
    :cond_9a
    const/4 v12, 0x0

    goto :goto_70
.end method
