.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private returnFirstName_:Z

.field private returnGaiaId_:Z

.field private title_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23364
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23424
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23177
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 23178
    return-void
.end method

.method static synthetic access$31400()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23171
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23183
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23181
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 3

    .prologue
    .line 23214
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    .line 23215
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23216
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23218
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 6

    .prologue
    .line 23232
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 23233
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23234
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23235
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23236
    or-int/lit8 v2, v2, 0x1

    .line 23238
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$31602(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23239
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23240
    or-int/lit8 v2, v2, 0x2

    .line 23242
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$31702(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23243
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23244
    or-int/lit8 v2, v2, 0x4

    .line 23246
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$31802(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23247
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 23248
    or-int/lit8 v2, v2, 0x8

    .line 23250
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$31902(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23251
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 23252
    or-int/lit8 v2, v2, 0x10

    .line 23254
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32002(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z

    .line 23255
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 23256
    or-int/lit8 v2, v2, 0x20

    .line 23258
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32102(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z

    .line 23259
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 23260
    or-int/lit8 v2, v2, 0x40

    .line 23262
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32202(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23263
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32302(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;I)I

    .line 23264
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23187
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23188
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23192
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23196
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 23197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23198
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 23199
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23202
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23460
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23463
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23572
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23412
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23413
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23415
    return-object p0
.end method

.method public clearReturnFirstName()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23517
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 23520
    return-object p0
.end method

.method public clearReturnGaiaId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23538
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 23541
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23492
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23494
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23382
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23384
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 23206
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

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
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 23429
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23550
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23551
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23553
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23556
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23171
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 2

    .prologue
    .line 23210
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23393
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23394
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23395
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23396
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23399
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

.method public getReturnFirstName()Z
    .registers 2

    .prologue
    .line 23508
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 23529
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23472
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23473
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23474
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23475
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23478
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 23369
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 23426
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 23390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasReturnFirstName()Z
    .registers 3

    .prologue
    .line 23505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasReturnGaiaId()Z
    .registers 3

    .prologue
    .line 23526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 23469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23366
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 23450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23456
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23457
    return-object p0

    .line 23453
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

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
    .line 23171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

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
    .line 23171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 23303
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_7e

    .line 23308
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23310
    :sswitch_d
    return-object p0

    .line 23315
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23316
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v3

    .line 23317
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    if-eqz v3, :cond_0

    .line 23318
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23319
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_0

    .line 23324
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23325
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 23329
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 23330
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->hasAudience()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 23331
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 23333
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23334
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    goto :goto_0

    .line 23338
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23339
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 23343
    :sswitch_57
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23344
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    goto :goto_0

    .line 23348
    :sswitch_64
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    goto :goto_0

    .line 23353
    :sswitch_71
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 23303
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_4a
        0x28 -> :sswitch_57
        0x30 -> :sswitch_64
        0x3a -> :sswitch_71
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23268
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23290
    :cond_6
    :goto_6
    return-object p0

    .line 23269
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23270
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23272
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23273
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23275
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 23276
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23278
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 23279
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23281
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasReturnFirstName()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 23282
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getReturnFirstName()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23284
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasReturnGaiaId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 23285
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getReturnGaiaId()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23287
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23288
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 23442
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23445
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23432
    if-nez p1, :cond_8

    .line 23433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23435
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23438
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23560
    if-nez p1, :cond_8

    .line 23561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23563
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23564
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23566
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23403
    if-nez p1, :cond_8

    .line 23404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23406
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23407
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23409
    return-object p0
.end method

.method public setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23512
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 23514
    return-object p0
.end method

.method public setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23533
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 23535
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23482
    if-nez p1, :cond_8

    .line 23483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23485
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23486
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23488
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23372
    if-nez p1, :cond_8

    .line 23373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23375
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23376
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23378
    return-object p0
.end method
