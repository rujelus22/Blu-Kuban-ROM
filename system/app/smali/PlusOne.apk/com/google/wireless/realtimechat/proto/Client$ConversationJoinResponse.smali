.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationJoinResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15595
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 15596
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->initFields()V

    .line 15597
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15102
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15184
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedIsInitialized:B

    .line 15210
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedSerializedSize:I

    .line 15103
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15104
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15184
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedIsInitialized:B

    .line 15210
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedSerializedSize:I

    .line 15104
    return-void
.end method

.method static synthetic access$20702(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$20802(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20902(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object p1
.end method

.method static synthetic access$21002(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$21102(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15097
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 1

    .prologue
    .line 15108
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15147
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    .line 15148
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15149
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15151
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    .line 15154
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
    .line 15179
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    .line 15181
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J

    .line 15183
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 1

    .prologue
    .line 15310
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->access$20500()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15313
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15097
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 15112
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getParticipantError()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 2

    .prologue
    .line 15165
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15133
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    .line 15134
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15135
    check-cast v1, Ljava/lang/String;

    .line 15143
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15137
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15139
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15140
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15141
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15143
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15212
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedSerializedSize:I

    .line 15213
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 15233
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 15215
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 15216
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 15217
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15220
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 15221
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15224
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 15225
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15228
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 15229
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15232
    :cond_48
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 15233
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 15123
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 15175
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasParticipantError()Z
    .registers 3

    .prologue
    .line 15162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 15130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

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

    .line 15120
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

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
    .line 15172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 15186
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedIsInitialized:B

    .line 15187
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 15190
    :goto_8
    return v1

    .line 15187
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 15189
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->memoizedIsInitialized:B

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
    .line 15240
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

    .line 15195
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getSerializedSize()I

    .line 15196
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 15197
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15199
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 15200
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15202
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 15203
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15205
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 15206
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15208
    :cond_3b
    return-void
.end method
