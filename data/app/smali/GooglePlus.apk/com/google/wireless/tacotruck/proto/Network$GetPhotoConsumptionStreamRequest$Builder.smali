.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusGroupId_:Ljava/lang/Object;

.field private gaiaGroupId_:Ljava/lang/Object;

.field private maxPhotoCountPerAlbum_:I

.field private maxPhotoCount_:I

.field private offset_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30562
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30188
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maybeForceBuilderInitialization()V

    .line 30189
    return-void
.end method

.method static synthetic access$41300()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 1

    .prologue
    .line 30182
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 1

    .prologue
    .line 30194
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30192
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 3

    .prologue
    .line 30227
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    .line 30228
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30229
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30231
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 6

    .prologue
    .line 30245
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 30246
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30247
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30248
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30249
    or-int/lit8 v2, v2, 0x1

    .line 30251
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 30252
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30253
    or-int/lit8 v2, v2, 0x2

    .line 30255
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 30256
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 30257
    or-int/lit8 v2, v2, 0x4

    .line 30259
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 30260
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 30261
    or-int/lit8 v2, v2, 0x8

    .line 30263
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z

    .line 30264
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 30265
    or-int/lit8 v2, v2, 0x10

    .line 30267
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30268
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 30269
    or-int/lit8 v2, v2, 0x20

    .line 30271
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$42002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30272
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 30273
    or-int/lit8 v2, v2, 0x40

    .line 30275
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$42102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z

    .line 30276
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 30277
    or-int/lit16 v2, v2, 0x80

    .line 30279
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$42202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30280
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$42302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 30281
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30198
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30199
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 30200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30201
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 30202
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30203
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 30204
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30205
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 30206
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30211
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 30212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30213
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30215
    return-object p0
.end method

.method public clearFocusGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30493
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30494
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30496
    return-object p0
.end method

.method public clearGaiaGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30532
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30399
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30400
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 30402
    return-object p0
.end method

.method public clearMaxPhotoCountPerAlbum()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30421
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 30423
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30442
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 30444
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30598
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30601
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 30465
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 30558
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3

    .prologue
    .line 30219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

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
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30182
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 2

    .prologue
    .line 30223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30475
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30476
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30477
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30480
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

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30510
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30511
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30513
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30516
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

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 30390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getMaxPhotoCountPerAlbum()I
    .registers 2

    .prologue
    .line 30411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 30432
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 30567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30453
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30546
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 30471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasGaiaGroupId()Z
    .registers 3

    .prologue
    .line 30507
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30387
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxPhotoCountPerAlbum()Z
    .registers 3

    .prologue
    .line 30408
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 30429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 30564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30450
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30543
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 30314
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
    .line 30182
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30182
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

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
    .line 30182
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30323
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_86

    .line 30328
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30330
    :sswitch_d
    return-object p0

    .line 30335
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 30340
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    goto :goto_0

    .line 30345
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    goto :goto_0

    .line 30350
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 30355
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 30360
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30361
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 30365
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30366
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 30370
    :sswitch_69
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 30371
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 30372
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 30374
    :cond_7a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30375
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto/16 :goto_0

    .line 30323
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x42 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 30285
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30310
    :cond_6
    :goto_6
    return-object p0

    .line 30286
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30287
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30289
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasMaxPhotoCountPerAlbum()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30290
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getMaxPhotoCountPerAlbum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCountPerAlbum(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30292
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 30293
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30295
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 30296
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30298
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 30299
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30301
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 30302
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30304
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 30305
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 30307
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30308
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30586
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30588
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30594
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30595
    return-object p0

    .line 30591
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30484
    if-nez p1, :cond_8

    .line 30485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30487
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30488
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 30490
    return-object p0
.end method

.method public setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30520
    if-nez p1, :cond_8

    .line 30521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30523
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30524
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 30526
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30393
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30394
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 30396
    return-object p0
.end method

.method public setMaxPhotoCountPerAlbum(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30414
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30415
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 30417
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30436
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 30438
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30580
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30583
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30570
    if-nez p1, :cond_8

    .line 30571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30573
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30575
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30576
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30457
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 30459
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 30550
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 30552
    return-object p0
.end method
