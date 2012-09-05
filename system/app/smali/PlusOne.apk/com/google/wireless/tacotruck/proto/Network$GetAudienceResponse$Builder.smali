.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private hiddenAudienceCountText_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19579
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19452
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 19453
    return-void
.end method

.method static synthetic access$26100(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19446
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26200()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 19446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19490
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    .line 19491
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 19492
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 19495
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 19458
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19456
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 6

    .prologue
    .line 19499
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 19500
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19501
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19502
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19503
    or-int/lit8 v2, v2, 0x1

    .line 19505
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$26402(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19506
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19507
    or-int/lit8 v2, v2, 0x2

    .line 19509
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$26502(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19510
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19511
    or-int/lit8 v2, v2, 0x4

    .line 19513
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$26602(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19514
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$26702(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;I)I

    .line 19515
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 19462
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19463
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19468
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19469
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 19615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19618
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 19646
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19647
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19649
    return-object p0
.end method

.method public clearHiddenAudienceCountText()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 19682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19685
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3

    .prologue
    .line 19473
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

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
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 19584
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2

    .prologue
    .line 19477
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19627
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19628
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19630
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19633
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

.method public getHiddenAudienceCountText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19663
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19664
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19665
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19666
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19669
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

.method public hasAudience()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19581
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

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
    .line 19624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

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
    .line 19660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

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

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 19605
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19611
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19612
    return-object p0

    .line 19608
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

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
    .line 19446
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

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
    .line 19446
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19541
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19542
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 19547
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19549
    :sswitch_d
    return-object p0

    .line 19554
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 19555
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hasAudience()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 19556
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 19558
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19559
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    goto :goto_0

    .line 19563
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 19568
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    goto :goto_0

    .line 19542
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 19519
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19529
    :cond_6
    :goto_6
    return-object p0

    .line 19520
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19521
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    .line 19523
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19524
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    .line 19526
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasHiddenAudienceCountText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19527
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setHiddenAudienceCountText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    goto :goto_6
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19597
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19600
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19587
    if-nez p1, :cond_8

    .line 19588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19590
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19593
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19637
    if-nez p1, :cond_8

    .line 19638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19640
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19641
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 19643
    return-object p0
.end method

.method public setHiddenAudienceCountText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19673
    if-nez p1, :cond_8

    .line 19674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19676
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 19677
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19679
    return-object p0
.end method
