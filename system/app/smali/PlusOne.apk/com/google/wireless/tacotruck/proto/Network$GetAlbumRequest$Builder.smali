.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnAlbumInfo_:Z

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15186
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15546
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15187
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->maybeForceBuilderInitialization()V

    .line 15188
    return-void
.end method

.method static synthetic access$19600()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15181
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15193
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15191
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 3

    .prologue
    .line 15226
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    .line 15227
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15228
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15230
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 6

    .prologue
    .line 15244
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 15245
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15246
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15247
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15248
    or-int/lit8 v2, v2, 0x1

    .line 15250
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$19802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J

    .line 15251
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15252
    or-int/lit8 v2, v2, 0x2

    .line 15254
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$19902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J

    .line 15255
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15256
    or-int/lit8 v2, v2, 0x4

    .line 15258
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15259
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15260
    or-int/lit8 v2, v2, 0x8

    .line 15262
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15263
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 15264
    or-int/lit8 v2, v2, 0x10

    .line 15266
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15267
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 15268
    or-int/lit8 v2, v2, 0x20

    .line 15270
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15271
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 15272
    or-int/lit8 v2, v2, 0x40

    .line 15274
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15275
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 15276
    or-int/lit16 v2, v2, 0x80

    .line 15278
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15279
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;I)I

    .line 15280
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15197
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15198
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15199
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15200
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 15201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15203
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15204
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 15205
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15206
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 15207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15208
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 15209
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15210
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 15211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15212
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15213
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15214
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 15450
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15451
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15453
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 15398
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15401
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 15419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 15422
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 15582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15584
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15585
    return-object p0
.end method

.method public clearReturnAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 15539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 15542
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 15500
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 15521
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15476
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 15479
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 15218
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

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
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 2

    .prologue
    .line 15222
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15432
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15433
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15434
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15437
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

.method public getId()J
    .registers 3

    .prologue
    .line 15389
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 15410
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 15551
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 15530
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    return v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15488
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15509
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15467
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 15428
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15386
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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
    .line 15407
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 15548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnAlbumInfo()Z
    .registers 3

    .prologue
    .line 15527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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
    .line 15181
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

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
    .line 15181
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15321
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15322
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_86

    .line 15327
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15329
    :sswitch_d
    return-object p0

    .line 15334
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    goto :goto_0

    .line 15339
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15340
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 15344
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15345
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 15349
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15350
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 15354
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15355
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 15359
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    goto :goto_0

    .line 15364
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 15365
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 15366
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 15368
    :cond_6d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15369
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    goto :goto_0

    .line 15373
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15374
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15322
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_78
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15309
    :cond_6
    :goto_6
    return-object p0

    .line 15285
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15286
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15288
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15289
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15291
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15292
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15294
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 15295
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15297
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 15298
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15300
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 15301
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15303
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 15304
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnAlbumInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15306
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15307
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 15572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15578
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15579
    return-object p0

    .line 15575
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15441
    if-nez p1, :cond_8

    .line 15442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15444
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15445
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15447
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15392
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15393
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15395
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15413
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15414
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 15416
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15564
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15567
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15554
    if-nez p1, :cond_8

    .line 15555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15557
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15560
    return-object p0
.end method

.method public setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15534
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 15536
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15492
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 15494
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15513
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 15515
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15471
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 15473
    return-object p0
.end method
