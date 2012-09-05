.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEvent;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventOrBuilder;"
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

.field private tileType_:Ljava/lang/Object;

.field private tileVersion_:I

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5809
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 6041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 6098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 6134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 5810
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->maybeForceBuilderInitialization()V

    .line 5811
    return-void
.end method

.method static synthetic access$7200()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 1

    .prologue
    .line 5804
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 1

    .prologue
    .line 5816
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventDataIsMutable()V
    .registers 3

    .prologue
    .line 6137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 6138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 6139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6141
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5814
    return-void
.end method


# virtual methods
.method public addAllEventData(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 6204
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$KeyValue;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6205
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6207
    return-object p0
.end method

.method public addEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6197
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6198
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6200
    return-object p0
.end method

.method public addEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6180
    if-nez p2, :cond_8

    .line 6181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6183
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6186
    return-object p0
.end method

.method public addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 6190
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6191
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6193
    return-object p0
.end method

.method public addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6170
    if-nez p1, :cond_8

    .line 6171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6173
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6174
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6176
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 3

    .prologue
    .line 5845
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    .line 5846
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5847
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5849
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 6

    .prologue
    .line 5863
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 5864
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5865
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5866
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5867
    or-int/lit8 v2, v2, 0x1

    .line 5869
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7402(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5870
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5871
    or-int/lit8 v2, v2, 0x2

    .line 5873
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7502(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;J)J

    .line 5874
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5875
    or-int/lit8 v2, v2, 0x4

    .line 5877
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7602(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5878
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 5879
    or-int/lit8 v2, v2, 0x8

    .line 5881
    :cond_35
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7702(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;I)I

    .line 5882
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 5883
    or-int/lit8 v2, v2, 0x10

    .line 5885
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7802(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5886
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 5887
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 5888
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5890
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7902(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/util/List;)Ljava/util/List;

    .line 5891
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$8002(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;I)I

    .line 5892
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3

    .prologue
    .line 5820
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 5822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5823
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    .line 5824
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 5826
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5827
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    .line 5828
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 5830
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 5832
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5833
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 6008
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6009
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 6011
    return-object p0
.end method

.method public clearEventData()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 6210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 6211
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6213
    return-object p0
.end method

.method public clearEventType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 6122
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6123
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 6125
    return-object p0
.end method

.method public clearTileType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 6065
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6066
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 6068
    return-object p0
.end method

.method public clearTileVersion()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 6091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6092
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    .line 6094
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3

    .prologue
    .line 6034
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6035
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    .line 6037
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3

    .prologue
    .line 5837
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

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
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 5990
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5991
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5992
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 5995
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
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 5841
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventData(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method public getEventDataCount()I
    .registers 2

    .prologue
    .line 6147
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

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
    .line 6144
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6103
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 6104
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6105
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6106
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 6109
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

.method public getTileType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6046
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 6047
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6048
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6049
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 6052
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
    .line 6082
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 6025
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5986
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

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
    .line 6100
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

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
    .line 6043
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

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

.method public hasTileVersion()Z
    .registers 3

    .prologue
    .line 6079
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 6022
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

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
    .line 5804
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

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
    .line 5804
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5934
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5935
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 5940
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5942
    :sswitch_d
    return-object p0

    .line 5947
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 5952
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    goto :goto_0

    .line 5957
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5958
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    goto :goto_0

    .line 5962
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5963
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    goto :goto_0

    .line 5967
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 5968
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    goto :goto_0

    .line 5972
    :sswitch_4f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    .line 5973
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5974
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    goto :goto_0

    .line 5935
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5896
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5922
    :cond_6
    :goto_6
    return-object p0

    .line 5897
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5898
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 5900
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5901
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 5903
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->hasTileType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5904
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->setTileType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 5906
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->hasTileVersion()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5907
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->setTileVersion(I)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 5909
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5910
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->setEventType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 5912
    :cond_48
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7900(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5913
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 5914
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7900(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    .line 5915
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    goto :goto_6

    .line 5917
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 5918
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->access$7900(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5999
    if-nez p1, :cond_8

    .line 6000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6002
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6003
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->conversationId_:Ljava/lang/Object;

    .line 6005
    return-object p0
.end method

.method public setEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6164
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6165
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6167
    return-object p0
.end method

.method public setEventData(ILcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6154
    if-nez p2, :cond_8

    .line 6155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6157
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->ensureEventDataIsMutable()V

    .line 6158
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6160
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6113
    if-nez p1, :cond_8

    .line 6114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6116
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6117
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->eventType_:Ljava/lang/Object;

    .line 6119
    return-object p0
.end method

.method public setTileType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6056
    if-nez p1, :cond_8

    .line 6057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6059
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6060
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileType_:Ljava/lang/Object;

    .line 6062
    return-object p0
.end method

.method public setTileVersion(I)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6085
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6086
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->tileVersion_:I

    .line 6088
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6028
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->bitField0_:I

    .line 6029
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->timestamp_:J

    .line 6031
    return-object p0
.end method
