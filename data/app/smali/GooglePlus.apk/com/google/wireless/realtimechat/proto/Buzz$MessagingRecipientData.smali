.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingRecipientData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private bitField0_:I

.field private gaiaId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3686
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    .line 3687
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->initFields()V

    .line 3688
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3312
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedIsInitialized:B

    .line 3341
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedSerializedSize:I

    .line 3242
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3236
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3312
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedIsInitialized:B

    .line 3341
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedSerializedSize:I

    .line 3243
    return-void
.end method

.method static synthetic access$4802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3236
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3236
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3236
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3236
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 1

    .prologue
    .line 3247
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    return-object v0
.end method

.method private getPayloadBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3296
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    .line 3297
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3298
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3300
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    .line 3303
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
    .line 3308
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J

    .line 3310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    .line 3311
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 1

    .prologue
    .line 3437
    #calls: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->access$4600()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3440
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 2

    .prologue
    .line 3251
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    return-object v0
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 3272
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J

    return-wide v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3282
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    .line 3283
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3284
    check-cast v1, Ljava/lang/String;

    .line 3292
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3286
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3288
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3289
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3290
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3292
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3343
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedSerializedSize:I

    .line 3344
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3360
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3346
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3347
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 3348
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3351
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 3352
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3355
    :cond_24
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 3356
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3359
    :cond_35
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedSerializedSize:I

    move v1, v0

    .line 3360
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3259
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGaiaId()Z
    .registers 3

    .prologue
    .line 3269
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

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

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 3279
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3314
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedIsInitialized:B

    .line 3315
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 3324
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 3315
    goto :goto_9

    .line 3317
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3318
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getAddress()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3319
    iput-byte v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedIsInitialized:B

    move v1, v2

    .line 3320
    goto :goto_9

    .line 3323
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 2

    .prologue
    .line 3438
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->toBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 2

    .prologue
    .line 3442
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

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
    .line 3367
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

    .line 3329
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getSerializedSize()I

    .line 3330
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 3331
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3333
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 3334
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3336
    :cond_1b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 3337
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3339
    :cond_2a
    return-void
.end method
