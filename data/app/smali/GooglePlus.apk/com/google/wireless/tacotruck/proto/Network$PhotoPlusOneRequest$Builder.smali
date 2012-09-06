.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private like_:Z

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22317
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 22318
    return-void
.end method

.method static synthetic access$30200()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 22311
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 22323
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22321
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    .registers 3

    .prologue
    .line 22346
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    .line 22347
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22348
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22350
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    .registers 6

    .prologue
    .line 22364
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 22365
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22366
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22367
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22368
    or-int/lit8 v2, v2, 0x1

    .line 22370
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->access$30402(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;Z)Z

    .line 22371
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22372
    or-int/lit8 v2, v2, 0x2

    .line 22374
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->access$30502(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;J)J

    .line 22375
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 22376
    or-int/lit8 v2, v2, 0x4

    .line 22378
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->access$30602(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;J)J

    .line 22379
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->access$30702(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;I)I

    .line 22380
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 22327
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    .line 22329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22330
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    .line 22331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22332
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    .line 22333
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22334
    return-object p0
.end method

.method public clearLike()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 22454
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    .line 22457
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 22496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22497
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    .line 22499
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 22475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    .line 22478
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 22338
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

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
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    .registers 2

    .prologue
    .line 22342
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLike()Z
    .registers 2

    .prologue
    .line 22445
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 22487
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 22466
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public hasLike()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22442
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 22484
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 22463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 22398
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
    .line 22311
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22311
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

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
    .line 22311
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22406
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22407
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 22412
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22414
    :sswitch_d
    return-object p0

    .line 22419
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22420
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    goto :goto_0

    .line 22424
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22425
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    goto :goto_0

    .line 22429
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22430
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 22407
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 22384
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22394
    :cond_6
    :goto_6
    return-object p0

    .line 22385
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->hasLike()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22386
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->setLike(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    .line 22388
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22389
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    .line 22391
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22392
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setLike(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22449
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->like_:Z

    .line 22451
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22491
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->ownerGaiaId_:J

    .line 22493
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->bitField0_:I

    .line 22470
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->photoId_:J

    .line 22472
    return-object p0
.end method
