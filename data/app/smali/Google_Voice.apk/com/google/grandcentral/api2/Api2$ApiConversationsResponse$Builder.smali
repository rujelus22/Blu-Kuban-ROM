.class public final Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation
.end field

.field private remaining_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20600
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20643
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20484
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20485
    return-void
.end method

.method static synthetic access$24100()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 1

    .prologue
    .line 20478
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 1

    .prologue
    .line 20490
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConversationIsMutable()V
    .registers 3

    .prologue
    .line 20646
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 20647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20648
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20650
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20488
    return-void
.end method


# virtual methods
.method public addAllConversation(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 20713
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20714
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20716
    return-object p0
.end method

.method public addConversation(ILcom/google/grandcentral/api2/Api2$ApiConversation$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20706
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20707
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20709
    return-object p0
.end method

.method public addConversation(ILcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20689
    if-nez p2, :cond_8

    .line 20690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20692
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20693
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20695
    return-object p0
.end method

.method public addConversation(Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 20699
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20700
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20702
    return-object p0
.end method

.method public addConversation(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20679
    if-nez p1, :cond_8

    .line 20680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20682
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20683
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20685
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3

    .prologue
    .line 20513
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    .line 20514
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20515
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20517
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 6

    .prologue
    .line 20521
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 20522
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20523
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20524
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20525
    or-int/lit8 v2, v2, 0x1

    .line 20527
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24302(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20528
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 20529
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20530
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20532
    :cond_2a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24402(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 20533
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 20534
    or-int/lit8 v2, v2, 0x2

    .line 20536
    :cond_36
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->remaining_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24502(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;I)I

    .line 20537
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24602(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;I)I

    .line 20538
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20494
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20495
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20496
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20498
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->remaining_:I

    .line 20500
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20501
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConversation()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20720
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20722
    return-object p0
.end method

.method public clearRemaining()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20746
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20747
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->remaining_:I

    .line 20749
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20636
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20638
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20639
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3

    .prologue
    .line 20505
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

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
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 20659
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public getConversationCount()I
    .registers 2

    .prologue
    .line 20656
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20653
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2

    .prologue
    .line 20509
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20478
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining()I
    .registers 2

    .prologue
    .line 20737
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->remaining_:I

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 20605
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasRemaining()Z
    .registers 3

    .prologue
    .line 20734
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20602
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 20563
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_8

    .line 20577
    :cond_7
    :goto_7
    return v1

    .line 20567
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20571
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->getConversationCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 20572
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20571
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 20577
    :cond_26
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 20542
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20559
    :cond_6
    :goto_6
    return-object p0

    .line 20543
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20544
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    .line 20546
    :cond_14
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24400(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 20547
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 20548
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24400(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    .line 20549
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20556
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20557
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getRemaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->setRemaining(I)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    goto :goto_6

    .line 20551
    :cond_40
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20552
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->access$24400(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20584
    const/4 v2, 0x0

    .line 20586
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 20591
    if-eqz v2, :cond_10

    .line 20592
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    .line 20595
    :cond_10
    return-object p0

    .line 20587
    :catch_11
    move-exception v1

    .line 20588
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-object v2, v0

    .line 20589
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 20591
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 20592
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    :cond_21
    throw v3
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
    .line 20478
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20478
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

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
    .line 20478
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20624
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 20626
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20632
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20633
    return-object p0

    .line 20629
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public removeConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20725
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20726
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20728
    return-object p0
.end method

.method public setConversation(ILcom/google/grandcentral/api2/Api2$ApiConversation$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20673
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20674
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20676
    return-object p0
.end method

.method public setConversation(ILcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20663
    if-nez p2, :cond_8

    .line 20664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20666
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->ensureConversationIsMutable()V

    .line 20667
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20669
    return-object p0
.end method

.method public setRemaining(I)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20740
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20741
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->remaining_:I

    .line 20743
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 20618
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20620
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20621
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20608
    if-nez p1, :cond_8

    .line 20609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20611
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20613
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->bitField0_:I

    .line 20614
    return-object p0
.end method
