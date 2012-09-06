.class public final Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventSearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37825
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 37826
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->initFields()V

    .line 37827
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37334
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37394
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedIsInitialized:B

    .line 37417
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedSerializedSize:I

    .line 37335
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37329
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37336
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37394
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedIsInitialized:B

    .line 37417
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedSerializedSize:I

    .line 37336
    return-void
.end method

.method static synthetic access$51902(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37329
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$52002(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37329
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object p1
.end method

.method static synthetic access$52100(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37329
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$52102(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37329
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$52202(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37329
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 1

    .prologue
    .line 37340
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 37390
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37391
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37392
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    .line 37393
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37513
    #calls: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->access$51700()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37516
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 37365
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37329
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 37344
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEvent(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 37382
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 37379
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37372
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 37386
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;

    return-object v0
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37376
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 37419
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedSerializedSize:I

    .line 37420
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 37436
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 37422
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 37423
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 37424
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 37427
    :cond_1a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 37428
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 37431
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 37432
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 37431
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 37435
    :cond_43
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 37436
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 37355
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasConversation()Z
    .registers 3

    .prologue
    .line 37362
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37352
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

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
    const/4 v1, 0x1

    .line 37396
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedIsInitialized:B

    .line 37397
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 37400
    :goto_8
    return v1

    .line 37397
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 37399
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37329
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37514
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37329
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37518
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

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
    .line 37443
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 37405
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getSerializedSize()I

    .line 37406
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 37407
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 37409
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 37410
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37412
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 37413
    const/4 v2, 0x4

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37412
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 37415
    :cond_38
    return-void
.end method
