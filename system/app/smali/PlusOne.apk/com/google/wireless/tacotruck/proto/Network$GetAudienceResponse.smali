.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAudienceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

.field private static final serialVersionUID:J


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private hiddenAudienceCountText_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19697
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    .line 19698
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->initFields()V

    .line 19699
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19227
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19320
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19343
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19228
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19222
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19229
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19320
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19343
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19229
    return-void
.end method

.method static synthetic access$26402(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19222
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$26502(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19222
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26602(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19222
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26702(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19222
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 1

    .prologue
    .line 19233
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19272
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19273
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19274
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19276
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19279
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

.method private getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19304
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19305
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19306
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19308
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19311
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
    .line 19316
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19319
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 19439
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->access$26200()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19375
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->access$26100(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 19248
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19222
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2

    .prologue
    .line 19237
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19258
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19259
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19260
    check-cast v1, Ljava/lang/String;

    .line 19268
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19262
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19264
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19265
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19266
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19268
    goto :goto_8
.end method

.method public getHiddenAudienceCountText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19290
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19291
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19292
    check-cast v1, Ljava/lang/String;

    .line 19300
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19294
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19296
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19297
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19298
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19300
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19345
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19346
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 19362
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 19348
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 19349
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 19350
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19353
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 19354
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19357
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 19358
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19361
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 19362
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19245
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 19255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

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

.method public hasHiddenAudienceCountText()Z
    .registers 3

    .prologue
    .line 19287
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

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

    .line 19322
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19323
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 19326
    :goto_8
    return v1

    .line 19323
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 19325
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

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
    .line 19369
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

    .line 19331
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getSerializedSize()I

    .line 19332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 19333
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19335
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 19336
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19338
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 19339
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19341
    :cond_2c
    return-void
.end method
