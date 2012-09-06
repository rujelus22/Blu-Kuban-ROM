.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private eventData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private eventType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private tileType_:Ljava/lang/Object;

.field private tileVersion_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5016
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 5017
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->initFields()V

    .line 5018
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4262
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4421
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedIsInitialized:B

    .line 4453
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedSerializedSize:I

    .line 4263
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4264
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4421
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedIsInitialized:B

    .line 4453
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedSerializedSize:I

    .line 4264
    return-void
.end method

.method static synthetic access$5702(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I

    return p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4257
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4297
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    .line 4298
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4299
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4301
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    .line 4304
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 1

    .prologue
    .line 4268
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method private getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4371
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    .line 4372
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4373
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4375
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    .line 4378
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getTileTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4329
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    .line 4330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    .line 4336
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    .line 4415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    .line 4416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I

    .line 4417
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    .line 4418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    .line 4419
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4420
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 1

    .prologue
    .line 4561
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->access$5500()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4564
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4283
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    .line 4284
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4285
    check-cast v1, Ljava/lang/String;

    .line 4293
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4287
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4289
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4290
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4291
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4293
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4257
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 4272
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getEventData(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 4396
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method public getEventDataCount()I
    .registers 2

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method public getEventDataOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;

    return-object v0
.end method

.method public getEventDataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4357
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    .line 4358
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4359
    check-cast v1, Ljava/lang/String;

    .line 4367
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4361
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4363
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4364
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4365
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4367
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4455
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedSerializedSize:I

    .line 4456
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 4484
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 4458
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 4459
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 4460
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4463
    :cond_1a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 4464
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getTileTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4467
    :cond_29
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 4468
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4471
    :cond_37
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_48

    .line 4472
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4475
    :cond_48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_49
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 4476
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4475
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 4479
    :cond_62
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_72

    .line 4480
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4483
    :cond_72
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 4484
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTileType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4315
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    .line 4316
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4317
    check-cast v1, Ljava/lang/String;

    .line 4325
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4319
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4321
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4322
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4323
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4325
    goto :goto_8
.end method

.method public getTileVersion()I
    .registers 2

    .prologue
    .line 4347
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I

    return v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4280
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEventType()Z
    .registers 3

    .prologue
    .line 4354
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 4407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTileType()Z
    .registers 3

    .prologue
    .line 4312
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTileVersion()Z
    .registers 3

    .prologue
    .line 4344
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4423
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedIsInitialized:B

    .line 4424
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4427
    :goto_8
    return v1

    .line 4424
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4426
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4257
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4562
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4257
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4566
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 4491
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4432
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getSerializedSize()I

    .line 4433
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 4434
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4436
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 4437
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getTileTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4439
    :cond_20
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 4440
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4442
    :cond_2c
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3b

    .line 4443
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4445
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 4446
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4445
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 4448
    :cond_53
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_61

    .line 4449
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4451
    :cond_61
    return-void
.end method
