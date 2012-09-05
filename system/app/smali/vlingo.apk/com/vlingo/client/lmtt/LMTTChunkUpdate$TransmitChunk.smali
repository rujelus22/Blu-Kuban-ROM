.class Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;
.super Ljava/lang/Object;
.source "LMTTChunkUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/vlingo/client/core/http/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransmitChunk"
.end annotation


# instance fields
.field private accumulateReceivedEntries:I

.field private activeLmttChunkRequest:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Lcom/vlingo/client/core/http/HttpRequest;",
            "Lcom/vlingo/client/lmtt/ChunkStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private callBack:Lcom/vlingo/client/core/http/HttpCallback;

.field private lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

.field final synthetic this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

.field private transmissionErroredOut:Z


# direct methods
.method public constructor <init>(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Lcom/vlingo/client/core/http/HttpCallback;)V
    .registers 5
    .parameter
    .parameter "updateType"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    .line 159
    iput-object p3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->callBack:Lcom/vlingo/client/core/http/HttpCallback;

    .line 160
    iput v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->accumulateReceivedEntries:I

    .line 161
    iput-boolean v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->transmissionErroredOut:Z

    .line 162
    return-void
.end method

.method private genFailResponse()Lcom/vlingo/client/core/http/HttpResponse;
    .registers 4

    .prologue
    .line 322
    new-instance v0, Lcom/vlingo/client/core/http/HttpResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/http/HttpResponse;-><init>(I[B)V

    return-object v0
.end method

.method private genSuccessResponse()Lcom/vlingo/client/core/http/HttpResponse;
    .registers 8

    .prologue
    .line 291
    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v4, v5, :cond_72

    .line 292
    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 293
    .local v0, contactCount:Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v5}, Lcom/vlingo/client/lmtt/LMTTComm;->mapClientType2ServerType(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, responseString:Ljava/lang/String;
    if-eqz v0, :cond_5e

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .end local v0           #contactCount:Ljava/lang/Integer;
    :goto_52
    new-instance v4, Lcom/vlingo/client/core/http/HttpResponse;

    const/16 v5, 0xc8

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vlingo/client/core/http/HttpResponse;-><init>(I[B)V

    return-object v4

    .line 297
    .restart local v0       #contactCount:Ljava/lang/Integer;
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count=\"0\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 300
    .end local v0           #contactCount:Ljava/lang/Integer;
    .end local v2           #responseString:Ljava/lang/String;
    :cond_72
    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 301
    .local v3, songCount:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 302
    .local v1, playListCount:Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v5}, Lcom/vlingo/client/lmtt/LMTTComm;->mapClientType2ServerType(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2       #responseString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v5}, Lcom/vlingo/client/lmtt/LMTTComm;->mapClientType2ServerType(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    if-eqz v3, :cond_13c

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    :goto_fd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_52

    .line 309
    :cond_13c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count=\"0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fd
.end method

.method private popNextOrSendResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 329
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 330
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iput-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    .line 331
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getChunk()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setSize(I)V

    .line 338
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/vlingo/client/core/http/HttpRequest;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getLMTTChunkUpdateState()Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->getDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/vlingo/client/core/http/HttpRequest;->schedule(JZZ)V

    .line 356
    :goto_49
    return-void

    .line 342
    :cond_4a
    iget-boolean v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->transmissionErroredOut:Z

    if-eqz v1, :cond_54

    .line 346
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->callBack:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v1, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V

    goto :goto_49

    .line 348
    :cond_54
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->genSuccessResponse()Lcom/vlingo/client/core/http/HttpResponse;

    move-result-object v0

    .line 353
    .local v0, successResponse:Lcom/vlingo/client/core/http/HttpResponse;
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->callBack:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v1, p1, v0}, Lcom/vlingo/client/core/http/HttpCallback;->onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V

    goto :goto_49
.end method


# virtual methods
.method public onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 272
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-chunk-transmission-cancelled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 7
    .parameter "request"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getLMTTChunkUpdateState()Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->getNextState(Lcom/vlingo/client/core/http/HttpResponse;I)Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v0

    .line 248
    .local v0, nextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "lmtt-chunk-transmission-failed"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 251
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-eq v0, v2, :cond_39

    .line 252
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setLMTTChunkUpdateState(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    .line 253
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v2}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_31
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->genFailResponse()Lcom/vlingo/client/core/http/HttpResponse;

    move-result-object v1

    .line 265
    .local v1, response:Lcom/vlingo/client/core/http/HttpResponse;
    invoke-direct {p0, p1, v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->popNextOrSendResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V

    .line 266
    return-void

    .line 257
    .end local v1           #response:Lcom/vlingo/client/core/http/HttpResponse;
    :cond_39
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->transmissionErroredOut:Z

    .line 260
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "lmtt-chunk-transmission-errored-out"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, countsMustMatch:Z
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, p2, v4, v0}, Lcom/vlingo/client/lmtt/LMTTComm;->handleLMTTResponse(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Lcom/vlingo/client/core/http/HttpResponse;Ljava/util/HashMap;Z)I

    move-result v1

    .line 198
    .local v1, lmttResponseCode:I
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v3}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getLMTTChunkUpdateState()Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->getNextState(Lcom/vlingo/client/core/http/HttpResponse;I)Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v2

    .line 204
    .local v2, nextState:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    sget-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-eq v2, v3, :cond_3b

    sget-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-eq v2, v3, :cond_3b

    .line 210
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v3, v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setLMTTChunkUpdateState(Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;)V

    .line 211
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_37
    :goto_37
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->popNextOrSendResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V

    .line 230
    return-void

    .line 212
    :cond_3b
    sget-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->FINISHED_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-ne v2, v3, :cond_5c

    .line 213
    iget v4, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->accumulateReceivedEntries:I

    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v3}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getSize()I

    move-result v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->accumulateReceivedEntries:I

    .line 214
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v3}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getChunk()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->updateSynchedItems(Ljava/util/ArrayList;)Z

    goto :goto_37

    .line 220
    :cond_5c
    sget-object v3, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->ERRORED_OUT_STATE:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    if-ne v2, v3, :cond_37

    .line 221
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->transmissionErroredOut:Z

    .line 226
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "lmtt-chunk-transmission-errored-out"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 277
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 177
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->this$0:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iput-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    .line 178
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/vlingo/client/core/http/HttpRequest;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getLMTTChunkUpdateState()Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;->getDelay()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vlingo/client/core/http/HttpRequest;->schedule(JZZ)V

    .line 179
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;->activeLmttChunkRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/lmtt/ChunkStackEntry;

    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/lmtt/ChunkStackEntry;->setSize(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 188
    :cond_46
    :goto_46
    return-void

    .line 185
    :catch_47
    move-exception v0

    .line 186
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
