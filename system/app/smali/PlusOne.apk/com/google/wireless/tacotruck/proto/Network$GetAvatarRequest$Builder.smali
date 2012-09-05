.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableSilhouette_:Z

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private imageSize_:I

.field private useBase64_:Z

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8629
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8859
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    .line 8880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    .line 8630
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->maybeForceBuilderInitialization()V

    .line 8631
    return-void
.end method

.method static synthetic access$11100()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 1

    .prologue
    .line 8624
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 1

    .prologue
    .line 8636
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8634
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 3

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    .line 8664
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8665
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8667
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 6

    .prologue
    .line 8681
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 8682
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8683
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8684
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8685
    or-int/lit8 v2, v2, 0x1

    .line 8687
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11302(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;J)J

    .line 8688
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8689
    or-int/lit8 v2, v2, 0x2

    .line 8691
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11402(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8692
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8693
    or-int/lit8 v2, v2, 0x4

    .line 8695
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11502(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z

    .line 8696
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 8697
    or-int/lit8 v2, v2, 0x8

    .line 8699
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11602(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I

    .line 8700
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 8701
    or-int/lit8 v2, v2, 0x10

    .line 8703
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11702(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z

    .line 8704
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->access$11802(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I

    .line 8705
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3

    .prologue
    .line 8640
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    .line 8642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8644
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    .line 8646
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8647
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    .line 8648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    .line 8650
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8651
    return-object p0
.end method

.method public clearEnableSilhouette()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    .line 8897
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8826
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8827
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8829
    return-object p0
.end method

.method public clearImageSize()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8873
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8874
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    .line 8876
    return-object p0
.end method

.method public clearUseBase64()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    .line 8855
    return-object p0
.end method

.method public clearUserId()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3

    .prologue
    .line 8795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8796
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    .line 8798
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3

    .prologue
    .line 8655
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

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
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 2

    .prologue
    .line 8659
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSilhouette()Z
    .registers 2

    .prologue
    .line 8885
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    return v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8807
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8808
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8809
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8810
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8813
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

.method public getImageSize()I
    .registers 2

    .prologue
    .line 8864
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    return v0
.end method

.method public getUseBase64()Z
    .registers 2

    .prologue
    .line 8843
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    return v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 8786
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    return-wide v0
.end method

.method public hasEnableSilhouette()Z
    .registers 3

    .prologue
    .line 8882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 8804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

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

.method public hasImageSize()Z
    .registers 3

    .prologue
    .line 8861
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

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

.method public hasUseBase64()Z
    .registers 3

    .prologue
    .line 8840
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8783
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 8624
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

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
    .line 8624
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8738
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 8743
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8745
    :sswitch_d
    return-object p0

    .line 8750
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8751
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    goto :goto_0

    .line 8755
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    goto :goto_0

    .line 8760
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    goto :goto_0

    .line 8765
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    goto :goto_0

    .line 8770
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 8738
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 8709
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8725
    :cond_6
    :goto_6
    return-object p0

    .line 8710
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8711
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setUserId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 8713
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8714
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 8716
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->hasUseBase64()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 8717
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getUseBase64()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setUseBase64(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 8719
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->hasImageSize()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8720
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getImageSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setImageSize(I)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 8722
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->hasEnableSilhouette()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8723
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getEnableSilhouette()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setEnableSilhouette(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    goto :goto_6
.end method

.method public setEnableSilhouette(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->enableSilhouette_:Z

    .line 8891
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8817
    if-nez p1, :cond_8

    .line 8818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8820
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8821
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8823
    return-object p0
.end method

.method public setImageSize(I)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8868
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->imageSize_:I

    .line 8870
    return-object p0
.end method

.method public setUseBase64(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8847
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->useBase64_:Z

    .line 8849
    return-object p0
.end method

.method public setUserId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->bitField0_:I

    .line 8790
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->userId_:J

    .line 8792
    return-object p0
.end method
