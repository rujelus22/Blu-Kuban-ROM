.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventRequestOrBuilder;"
    }
.end annotation


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

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private tileType_:Ljava/lang/Object;

.field private tileVersion_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4970
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4574
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4575
    return-void
.end method

.method static synthetic access$5500()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 1

    .prologue
    .line 4568
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 1

    .prologue
    .line 4580
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventDataIsMutable()V
    .registers 3

    .prologue
    .line 4884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 4885
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4886
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4888
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4578
    return-void
.end method


# virtual methods
.method public addAllEventData(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 4951
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$KeyValue;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4952
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4954
    return-object p0
.end method

.method public addEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4944
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4945
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4947
    return-object p0
.end method

.method public addEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4927
    if-nez p2, :cond_8

    .line 4928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4930
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4931
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4933
    return-object p0
.end method

.method public addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4937
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4938
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4940
    return-object p0
.end method

.method public addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4917
    if-nez p1, :cond_8

    .line 4918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4920
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4921
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4923
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 3

    .prologue
    .line 4609
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    .line 4610
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4611
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4613
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 6

    .prologue
    .line 4627
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 4628
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4629
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4630
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4631
    or-int/lit8 v2, v2, 0x1

    .line 4633
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$5702(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4634
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4635
    or-int/lit8 v2, v2, 0x2

    .line 4637
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$5802(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4638
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4639
    or-int/lit8 v2, v2, 0x4

    .line 4641
    :cond_28
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->tileVersion_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$5902(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;I)I

    .line 4642
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4643
    or-int/lit8 v2, v2, 0x8

    .line 4645
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6002(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4646
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 4647
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4648
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4650
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6102(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Ljava/util/List;)Ljava/util/List;

    .line 4651
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 4652
    or-int/lit8 v2, v2, 0x10

    .line 4654
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6202(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4655
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6302(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;I)I

    .line 4656
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4584
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4588
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    .line 4590
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4592
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4594
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4595
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4596
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4597
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4777
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4779
    return-object p0
.end method

.method public clearEventData()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4957
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4960
    return-object p0
.end method

.method public clearEventType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4870
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4872
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 5006
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 5008
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 5009
    return-object p0
.end method

.method public clearTileType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4812
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4813
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getTileType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4815
    return-object p0
.end method

.method public clearTileVersion()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 2

    .prologue
    .line 4838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4839
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    .line 4841
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3

    .prologue
    .line 4601
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4758
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4759
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4760
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4763
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 4605
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEventData(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 4897
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method public getEventDataCount()I
    .registers 2

    .prologue
    .line 4894
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

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
    .line 4891
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4851
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4852
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4853
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4856
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTileType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4793
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4794
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4795
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4796
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4799
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTileVersion()I
    .registers 2

    .prologue
    .line 4829
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    return v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4754
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

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
    .line 4847
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

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
    .line 4972
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 4790
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

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
    .line 4826
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4568
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4568
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4698
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4699
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_6e

    .line 4704
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4706
    :sswitch_d
    return-object p0

    .line 4711
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4712
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 4716
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    goto :goto_0

    .line 4721
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    goto :goto_0

    .line 4726
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    goto :goto_0

    .line 4731
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    .line 4732
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4733
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    goto :goto_0

    .line 4737
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 4738
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 4739
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 4741
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4742
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    goto :goto_0

    .line 4699
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4660
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4686
    :cond_6
    :goto_6
    return-object p0

    .line 4661
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4662
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 4664
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->hasTileType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4665
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getTileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setTileType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 4667
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->hasTileVersion()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4668
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getTileVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setTileVersion(I)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 4670
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4671
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setEventType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 4673
    :cond_3b
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6100(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 4674
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 4675
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6100(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    .line 4676
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4683
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4684
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    goto :goto_6

    .line 4678
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4679
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->access$6100(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4996
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 5002
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 5003
    return-object p0

    .line 4999
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4767
    if-nez p1, :cond_8

    .line 4768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4770
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4771
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 4773
    return-object p0
.end method

.method public setEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4911
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4912
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4914
    return-object p0
.end method

.method public setEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4901
    if-nez p2, :cond_8

    .line 4902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4904
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->ensureEventDataIsMutable()V

    .line 4905
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4907
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4860
    if-nez p1, :cond_8

    .line 4861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4863
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4864
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->eventType_:Ljava/lang/Object;

    .line 4866
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4988
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4991
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4978
    if-nez p1, :cond_8

    .line 4979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4981
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 4983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4984
    return-object p0
.end method

.method public setTileType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4803
    if-nez p1, :cond_8

    .line 4804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4806
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4807
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileType_:Ljava/lang/Object;

    .line 4809
    return-object p0
.end method

.method public setTileVersion(I)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4832
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->bitField0_:I

    .line 4833
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->tileVersion_:I

    .line 4835
    return-object p0
.end method
