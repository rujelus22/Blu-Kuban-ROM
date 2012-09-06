.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48302
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 48486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48522
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48303
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 48304
    return-void
.end method

.method static synthetic access$67600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 48297
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 48309
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 48307
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 3

    .prologue
    .line 48334
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    .line 48335
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 48336
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 48338
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 6

    .prologue
    .line 48352
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 48353
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48354
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 48355
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 48356
    or-int/lit8 v2, v2, 0x1

    .line 48358
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$67802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J

    .line 48359
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 48360
    or-int/lit8 v2, v2, 0x2

    .line 48362
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$67902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J

    .line 48363
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 48364
    or-int/lit8 v2, v2, 0x4

    .line 48366
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$68002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48367
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 48368
    or-int/lit8 v2, v2, 0x8

    .line 48370
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$68102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48371
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$68202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;I)I

    .line 48372
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 48313
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 48314
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 48315
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48316
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 48317
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48320
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48321
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48322
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 48510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48511
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48513
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 48479
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 48482
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 48458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48459
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 48461
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 48558
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48561
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 48326
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

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
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48297
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 2

    .prologue
    .line 48330
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 48491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48492
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 48493
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 48494
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48497
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

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 48470
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 48449
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 48527
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 48488
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 48467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48446
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 48524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 48393
    const/4 v0, 0x1

    return v0
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
    .line 48297
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48297
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

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
    .line 48297
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48401
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48402
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 48407
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48409
    :sswitch_d
    return-object p0

    .line 48414
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48415
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    goto :goto_0

    .line 48419
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48420
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 48424
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 48425
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 48426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 48428
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48429
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    goto :goto_0

    .line 48433
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48434
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 48402
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 48376
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48389
    :cond_6
    :goto_6
    return-object p0

    .line 48377
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48378
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 48380
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48381
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 48383
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 48384
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 48386
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48387
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48546
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 48548
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48554
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48555
    return-object p0

    .line 48551
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48501
    if-nez p1, :cond_8

    .line 48502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48504
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48505
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48507
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48473
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48474
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 48476
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48452
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48453
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 48455
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48540
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48542
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48543
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48530
    if-nez p1, :cond_8

    .line 48531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48533
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 48536
    return-object p0
.end method
