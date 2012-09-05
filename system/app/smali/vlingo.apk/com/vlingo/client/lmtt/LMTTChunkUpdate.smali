.class public Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
.super Ljava/lang/Object;
.source "LMTTChunkUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;,
        Lcom/vlingo/client/lmtt/LMTTChunkUpdate$LMTTChunkUpdateState;
    }
.end annotation


# static fields
.field protected static final ROW_UPDATE_MAX:I = 0x9c4


# instance fields
.field private chunkStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/vlingo/client/core/http/HttpRequest;",
            "Lcom/vlingo/client/lmtt/ChunkStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private deviceItemCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transmitChunk:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLjava/util/HashMap;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    .registers 8
    .parameter "lmttUpdateType"
    .parameter
    .parameter "doWhole"
    .parameter "doEmpty"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;ZZ",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vlingo/client/core/http/HttpCallback;",
            ")",
            "Lcom/vlingo/client/lmtt/LMTTChunkUpdate;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, itemsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    .local p4, deviceItemCounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    invoke-direct {v0}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;-><init>()V

    .line 59
    .local v0, instance:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    new-instance v1, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0, p5}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;-><init>(Lcom/vlingo/client/lmtt/LMTTChunkUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Lcom/vlingo/client/core/http/HttpCallback;)V

    iput-object v1, v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->transmitChunk:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;

    .line 60
    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->transmitChunk:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/vlingo/client/lmtt/LMTTChunkComm;->createLMTTRequest(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLcom/vlingo/client/core/http/HttpCallback;)Ljava/util/Stack;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->chunkStack:Ljava/util/Stack;

    .line 61
    iput-object p4, v0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->deviceItemCounts:Ljava/util/HashMap;

    .line 62
    return-object v0
.end method


# virtual methods
.method public transmitChunk()V
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->transmitChunk:Lcom/vlingo/client/lmtt/LMTTChunkUpdate$TransmitChunk;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method
