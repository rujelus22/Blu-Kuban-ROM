.class public final Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$EventActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private creatorObfuscatedId_:Ljava/lang/Object;

.field private eventId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28488
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    .line 28489
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->initFields()V

    .line 28490
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28097
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28179
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedIsInitialized:B

    .line 28199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedSerializedSize:I

    .line 28098
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28092
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28099
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28179
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedIsInitialized:B

    .line 28199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedSerializedSize:I

    .line 28099
    return-void
.end method

.method static synthetic access$38002(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28092
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38102(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28092
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38202(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28092
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

    return p1
.end method

.method private getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28164
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28165
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28166
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28168
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28171
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 1

    .prologue
    .line 28103
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    return-object v0
.end method

.method private getEventIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28132
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    .line 28133
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28134
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28136
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    .line 28139
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
    .line 28176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    .line 28177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28178
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 1

    .prologue
    .line 28291
    #calls: Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->access$37800()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28294
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCreatorObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28150
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 28151
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28152
    check-cast v1, Ljava/lang/String;

    .line 28160
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28154
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28156
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28157
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28158
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->creatorObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28160
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28092
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    .registers 2

    .prologue
    .line 28107
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28118
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    .line 28119
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28120
    check-cast v1, Ljava/lang/String;

    .line 28128
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28122
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28124
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28125
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28126
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->eventId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28128
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedSerializedSize:I

    .line 28202
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 28214
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 28204
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 28205
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 28206
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28209
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 28210
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28213
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedSerializedSize:I

    move v1, v0

    .line 28214
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCreatorObfuscatedId()Z
    .registers 3

    .prologue
    .line 28147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28115
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

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

    .line 28181
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedIsInitialized:B

    .line 28182
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28185
    :goto_8
    return v1

    .line 28182
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28184
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28092
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2

    .prologue
    .line 28292
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28092
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;
    .registers 2

    .prologue
    .line 28296
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$EventActionData;)Lcom/google/wireless/tacotruck/proto/Data$EventActionData$Builder;

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
    .line 28221
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 28190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getSerializedSize()I

    .line 28191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 28192
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28194
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 28195
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28197
    :cond_1f
    return-void
.end method
