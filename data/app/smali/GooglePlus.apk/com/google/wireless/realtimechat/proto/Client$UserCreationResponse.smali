.class public final Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserCreationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29864
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 29865
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->initFields()V

    .line 29866
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29371
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29453
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedIsInitialized:B

    .line 29479
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedSerializedSize:I

    .line 29372
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29373
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29453
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedIsInitialized:B

    .line 29479
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedSerializedSize:I

    .line 29373
    return-void
.end method

.method static synthetic access$40402(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$40502(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$40602(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40702(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object p1
.end method

.method static synthetic access$40802(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29366
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 1

    .prologue
    .line 29377
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29426
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    .line 29427
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29428
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29430
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    .line 29433
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
    .registers 3

    .prologue
    .line 29448
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J

    .line 29450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    .line 29451
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29452
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 1

    .prologue
    .line 29579
    #calls: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->access$40200()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29582
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29366
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 29381
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 29444
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29412
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    .line 29413
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29414
    check-cast v1, Ljava/lang/String;

    .line 29422
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29416
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29418
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29419
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29420
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29422
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedSerializedSize:I

    .line 29482
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 29502
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 29484
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 29485
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 29486
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 29489
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 29490
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29493
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 29494
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29497
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 29498
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29501
    :cond_48
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 29502
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 29392
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 29402
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasParticipant()Z
    .registers 3

    .prologue
    .line 29441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    .line 29409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

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

    .line 29389
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

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
    .line 29399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

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

    .line 29455
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedIsInitialized:B

    .line 29456
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 29459
    :goto_8
    return v1

    .line 29456
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 29458
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29366
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2

    .prologue
    .line 29580
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29366
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2

    .prologue
    .line 29584
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

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
    .line 29509
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 29464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getSerializedSize()I

    .line 29465
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 29466
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 29468
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 29469
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29471
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 29472
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29474
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 29475
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29477
    :cond_3b
    return-void
.end method
