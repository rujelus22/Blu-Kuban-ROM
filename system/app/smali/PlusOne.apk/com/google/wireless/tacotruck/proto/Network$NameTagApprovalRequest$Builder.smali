.class public final Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private approve_:Z

.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J

.field private shapeId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36288
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->maybeForceBuilderInitialization()V

    .line 36289
    return-void
.end method

.method static synthetic access$50100()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 1

    .prologue
    .line 36282
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 1

    .prologue
    .line 36294
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36292
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 3

    .prologue
    .line 36321
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    .line 36322
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36323
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36325
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 6

    .prologue
    .line 36339
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 36340
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36341
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36342
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36343
    or-int/lit8 v2, v2, 0x1

    .line 36345
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50302(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36346
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36347
    or-int/lit8 v2, v2, 0x2

    .line 36349
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50402(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36350
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 36351
    or-int/lit8 v2, v2, 0x4

    .line 36353
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50502(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36354
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 36355
    or-int/lit8 v2, v2, 0x8

    .line 36357
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50602(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Z)Z

    .line 36358
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 36359
    or-int/lit8 v2, v2, 0x10

    .line 36361
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50702(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J

    .line 36362
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->access$50802(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;I)I

    .line 36363
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 36298
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36299
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 36300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36303
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 36304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 36306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36307
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 36308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36309
    return-object p0
.end method

.method public clearApprove()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 2

    .prologue
    .line 36531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 36534
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 2

    .prologue
    .line 36484
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36485
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36487
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 36453
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 36456
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 36510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36511
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 36513
    return-object p0
.end method

.method public clearShapeId()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 36552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 36555
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3

    .prologue
    .line 36313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

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
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprove()Z
    .registers 2

    .prologue
    .line 36522
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 2

    .prologue
    .line 36317
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36466
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36467
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36468
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36471
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
    .line 36444
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 36501
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 36543
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    return-wide v0
.end method

.method public hasApprove()Z
    .registers 3

    .prologue
    .line 36519
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 36462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36441
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 36498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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

.method public hasShapeId()Z
    .registers 3

    .prologue
    .line 36540
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

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
    .line 36282
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

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
    .line 36282
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36395
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 36396
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 36401
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36403
    :sswitch_d
    return-object p0

    .line 36408
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36409
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 36413
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36414
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    goto :goto_0

    .line 36418
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36419
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    goto :goto_0

    .line 36423
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36424
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    goto :goto_0

    .line 36428
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36429
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 36396
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

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 36367
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36383
    :cond_6
    :goto_6
    return-object p0

    .line 36368
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36369
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36371
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36372
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36374
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36375
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36377
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasApprove()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 36378
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getApprove()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 36380
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->hasShapeId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36381
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getShapeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    goto :goto_6
.end method

.method public setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36526
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->approve_:Z

    .line 36528
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36475
    if-nez p1, :cond_8

    .line 36476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36478
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36479
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36481
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36448
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->ownerGaiaId_:J

    .line 36450
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36504
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36505
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->photoId_:J

    .line 36507
    return-object p0
.end method

.method public setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36546
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->bitField0_:I

    .line 36547
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->shapeId_:J

    .line 36549
    return-object p0
.end method
