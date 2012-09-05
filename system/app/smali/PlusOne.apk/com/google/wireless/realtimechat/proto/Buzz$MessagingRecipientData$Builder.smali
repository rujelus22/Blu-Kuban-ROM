.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private bitField0_:I

.field private gaiaId_:J

.field private payload_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3449
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3583
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3450
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->maybeForceBuilderInitialization()V

    .line 3451
    return-void
.end method

.method static synthetic access$4600()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 1

    .prologue
    .line 3444
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 1

    .prologue
    .line 3456
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3454
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 3

    .prologue
    .line 3479
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    .line 3480
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3481
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3483
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 6

    .prologue
    .line 3497
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 3498
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3499
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3500
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3501
    or-int/lit8 v2, v2, 0x1

    .line 3503
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->access$4802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3504
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3505
    or-int/lit8 v2, v2, 0x2

    .line 3507
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->gaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->access$4902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;J)J

    .line 3508
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3509
    or-int/lit8 v2, v2, 0x4

    .line 3511
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->payload_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->access$5002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->access$5102(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;I)I

    .line 3513
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3

    .prologue
    .line 3460
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3461
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3462
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    .line 3464
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3466
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3467
    return-object p0
.end method

.method public clearAddress()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 2

    .prologue
    .line 3619
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3622
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3

    .prologue
    .line 3640
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    .line 3643
    return-object p0
.end method

.method public clearPayload()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 2

    .prologue
    .line 3671
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3672
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3674
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3

    .prologue
    .line 3471
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

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
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 2

    .prologue
    .line 3475
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 3631
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    return-wide v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3653
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3654
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3655
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3658
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

.method public hasAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3585
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

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
    .line 3628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

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
    .line 3649
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

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

.method public mergeAddress(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3609
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3615
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3616
    return-object p0

    .line 3612
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    goto :goto_1f
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
    .line 3444
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

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
    .line 3444
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3546
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 3551
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3553
    :sswitch_d
    return-object p0

    .line 3558
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    .line 3559
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3560
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->getAddress()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 3562
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3563
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->setAddress(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    goto :goto_0

    .line 3567
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3568
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    goto :goto_0

    .line 3572
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3573
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 3546
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3527
    :cond_6
    :goto_6
    return-object p0

    .line 3518
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3519
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getAddress()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->mergeAddress(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    .line 3521
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3522
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->setGaiaId(J)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    .line 3524
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3525
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->setPayload(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    goto :goto_6
.end method

.method public setAddress(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3601
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3604
    return-object p0
.end method

.method public setAddress(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3591
    if-nez p1, :cond_8

    .line 3592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3594
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->address_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3596
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3597
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3634
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3635
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->gaiaId_:J

    .line 3637
    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3662
    if-nez p1, :cond_8

    .line 3663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3665
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->bitField0_:I

    .line 3666
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->payload_:Ljava/lang/Object;

    .line 3668
    return-object p0
.end method
