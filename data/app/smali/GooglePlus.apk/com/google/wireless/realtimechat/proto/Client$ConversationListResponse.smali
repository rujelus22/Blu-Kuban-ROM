.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationListResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientConversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24960
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 24961
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->initFields()V

    .line 24962
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24495
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24555
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedIsInitialized:B

    .line 24578
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedSerializedSize:I

    .line 24496
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24490
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24555
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedIsInitialized:B

    .line 24578
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedSerializedSize:I

    .line 24497
    return-void
.end method

.method static synthetic access$33602(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24490
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$33702(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24490
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$33800(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24490
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$33802(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24490
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33902(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24490
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 1

    .prologue
    .line 24501
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 24551
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 24552
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J

    .line 24553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    .line 24554
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 1

    .prologue
    .line 24674
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->access$33400()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientConversation(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 24543
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getClientConversationCount()I
    .registers 2

    .prologue
    .line 24540
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24533
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    return-object v0
.end method

.method public getClientConversationOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 24547
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;

    return-object v0
.end method

.method public getClientConversationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24537
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24490
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 24505
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 24580
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedSerializedSize:I

    .line 24581
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 24597
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 24583
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 24584
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 24585
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 24588
    :cond_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_28

    .line 24589
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 24592
    :cond_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 24593
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 24592
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 24596
    :cond_42
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 24597
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 24516
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 24526
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24513
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 24523
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 24557
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedIsInitialized:B

    .line 24558
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24561
    :goto_8
    return v1

    .line 24558
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24560
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24490
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 2

    .prologue
    .line 24675
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24490
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    .registers 2

    .prologue
    .line 24679
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

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
    .line 24604
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24566
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getSerializedSize()I

    .line 24567
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 24568
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24570
    :cond_14
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1f

    .line 24571
    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->timestamp_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24573
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 24574
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->clientConversation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 24573
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 24576
    :cond_37
    return-void
.end method
