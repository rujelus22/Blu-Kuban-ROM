.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventStreamResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;,
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;,
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private earliest_:J

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

.field private latest_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private more_:Z

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27421
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 27422
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->initFields()V

    .line 27423
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25868
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26875
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedIsInitialized:B

    .line 26907
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedSerializedSize:I

    .line 25869
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25870
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26875
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedIsInitialized:B

    .line 26907
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedSerializedSize:I

    .line 25870
    return-void
.end method

.method static synthetic access$36702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36800(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25863
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$36802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$36902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z

    return p1
.end method

.method static synthetic access$37002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J

    return-wide p1
.end method

.method static synthetic access$37102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J

    return-wide p1
.end method

.method static synthetic access$37202(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$37302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25863
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26795
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    .line 26796
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26797
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26799
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    .line 26802
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 1

    .prologue
    .line 25874
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 26868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    .line 26869
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    .line 26870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z

    .line 26871
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J

    .line 26872
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J

    .line 26873
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 26874
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 1

    .prologue
    .line 27015
    #calls: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->access$36500()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27018
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26781
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    .line 26782
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26783
    check-cast v1, Ljava/lang/String;

    .line 26791
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26785
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26787
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26788
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26789
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26791
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25863
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 25878
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getEarliest()J
    .registers 3

    .prologue
    .line 26844
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J

    return-wide v0
.end method

.method public getEvent(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 26820
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 26817
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

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
    .line 26810
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 26824
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

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
    .line 26814
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getLatest()J
    .registers 3

    .prologue
    .line 26854
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J

    return-wide v0
.end method

.method public getMore()Z
    .registers 2

    .prologue
    .line 26834
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26909
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedSerializedSize:I

    .line 26910
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 26938
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 26912
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 26913
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 26914
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26917
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 26918
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26917
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 26921
    :cond_33
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_41

    .line 26922
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26925
    :cond_41
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4e

    .line 26926
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26929
    :cond_4e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5e

    .line 26930
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 26933
    :cond_5e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_72

    .line 26934
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 26937
    :cond_72
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 26938
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 26864
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26778
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEarliest()Z
    .registers 3

    .prologue
    .line 26841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

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

.method public hasLatest()Z
    .registers 3

    .prologue
    .line 26851
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

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

.method public hasMore()Z
    .registers 3

    .prologue
    .line 26831
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

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
    .line 26861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 26877
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedIsInitialized:B

    .line 26878
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26881
    :goto_8
    return v1

    .line 26878
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26880
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 26945
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

    .line 26886
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getSerializedSize()I

    .line 26887
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 26888
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26890
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 26891
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26890
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 26893
    :cond_2a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_36

    .line 26894
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 26896
    :cond_36
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 26897
    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26899
    :cond_41
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 26900
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26902
    :cond_4f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_61

    .line 26903
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 26905
    :cond_61
    return-void
.end method
