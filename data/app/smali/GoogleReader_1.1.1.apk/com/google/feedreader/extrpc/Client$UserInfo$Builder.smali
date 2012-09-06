.class public final Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UserInfo;",
        "Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UserInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isBloggerUser_:Z

.field private isMultiLoginEnabled_:Z

.field private publicUserName_:Ljava/lang/Object;

.field private signupTimeSec_:I

.field private userEmail_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;

.field private userName_:Ljava/lang/Object;

.field private userProfileId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16210
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->maybeForceBuilderInitialization()V

    .line 16211
    return-void
.end method

.method static synthetic access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16204
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19600()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 1

    .prologue
    .line 16204
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16258
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    .line 16259
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 16260
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 16263
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 1

    .prologue
    .line 16216
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16214
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3

    .prologue
    .line 16249
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    .line 16250
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16251
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16253
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 6

    .prologue
    .line 16267
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UserInfo;-><init>(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 16268
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16269
    const/4 v2, 0x0

    .line 16270
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16271
    or-int/lit8 v2, v2, 0x1

    .line 16273
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$19802(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16274
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 16275
    or-int/lit8 v2, v2, 0x2

    .line 16277
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$19902(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16278
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 16279
    or-int/lit8 v2, v2, 0x4

    .line 16281
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20002(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16282
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 16283
    or-int/lit8 v2, v2, 0x8

    .line 16285
    :cond_35
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20102(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16286
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 16287
    or-int/lit8 v2, v2, 0x10

    .line 16289
    :cond_42
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20202(Lcom/google/feedreader/extrpc/Client$UserInfo;Z)Z

    .line 16290
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 16291
    or-int/lit8 v2, v2, 0x20

    .line 16293
    :cond_4f
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20302(Lcom/google/feedreader/extrpc/Client$UserInfo;I)I

    .line 16294
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 16295
    or-int/lit8 v2, v2, 0x40

    .line 16297
    :cond_5c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20402(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16298
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_72

    .line 16299
    or-int/lit16 v1, v2, 0x80

    .line 16301
    :goto_69
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20502(Lcom/google/feedreader/extrpc/Client$UserInfo;Z)Z

    .line 16302
    #setter for: Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->access$20602(Lcom/google/feedreader/extrpc/Client$UserInfo;I)I

    .line 16303
    return-object v0

    :cond_72
    move v1, v2

    goto :goto_69
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16220
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16222
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16224
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16226
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16228
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16229
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    .line 16230
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16231
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    .line 16232
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16234
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16235
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    .line 16236
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16237
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsBloggerUser()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16589
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    .line 16592
    return-object p0
.end method

.method public clearIsMultiLoginEnabled()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16667
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    .line 16670
    return-object p0
.end method

.method public clearPublicUserName()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16641
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16642
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getPublicUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16644
    return-object p0
.end method

.method public clearSignupTimeSec()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16610
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16611
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    .line 16613
    return-object p0
.end method

.method public clearUserEmail()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16563
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16564
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16566
    return-object p0
.end method

.method public clearUserId()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16455
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16456
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16458
    return-object p0
.end method

.method public clearUserName()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16491
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16492
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16494
    return-object p0
.end method

.method public clearUserProfileId()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16527
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16528
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserProfileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16530
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3

    .prologue
    .line 16241
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

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
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2

    .prologue
    .line 16245
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIsBloggerUser()Z
    .registers 2

    .prologue
    .line 16580
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    return v0
.end method

.method public getIsMultiLoginEnabled()Z
    .registers 2

    .prologue
    .line 16658
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    return v0
.end method

.method public getPublicUserName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16622
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16623
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 16624
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16625
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    move-object v2, v1

    .line 16628
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getSignupTimeSec()I
    .registers 2

    .prologue
    .line 16601
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16544
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16545
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 16546
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16547
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    move-object v2, v1

    .line 16550
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16436
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16437
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 16438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16439
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    move-object v2, v1

    .line 16442
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUserName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16472
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16473
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 16474
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16475
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    move-object v2, v1

    .line 16478
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUserProfileId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16508
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16509
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 16510
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16511
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    move-object v2, v1

    .line 16514
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasIsBloggerUser()Z
    .registers 3

    .prologue
    .line 16577
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasIsMultiLoginEnabled()Z
    .registers 3

    .prologue
    .line 16655
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasPublicUserName()Z
    .registers 3

    .prologue
    .line 16619
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasSignupTimeSec()Z
    .registers 3

    .prologue
    .line 16598
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasUserEmail()Z
    .registers 3

    .prologue
    .line 16541
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 16433
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUserName()Z
    .registers 3

    .prologue
    .line 16469
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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

.method public hasUserProfileId()Z
    .registers 3

    .prologue
    .line 16505
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16336
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasUserId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 16364
    :goto_8
    return v0

    .line 16340
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasUserName()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 16342
    goto :goto_8

    .line 16344
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasUserProfileId()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 16346
    goto :goto_8

    .line 16348
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasUserEmail()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 16350
    goto :goto_8

    .line 16352
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasIsBloggerUser()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    .line 16354
    goto :goto_8

    .line 16356
    :cond_29
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasSignupTimeSec()Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    .line 16358
    goto :goto_8

    .line 16360
    :cond_31
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->hasIsMultiLoginEnabled()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    .line 16362
    goto :goto_8

    .line 16364
    :cond_39
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 16307
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 16332
    :goto_7
    return-object v0

    .line 16308
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 16309
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16311
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserName()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 16312
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setUserName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16314
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserProfileId()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 16315
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setUserProfileId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16317
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserEmail()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 16318
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setUserEmail(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16320
    :cond_3c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasIsBloggerUser()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 16321
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getIsBloggerUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setIsBloggerUser(Z)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16323
    :cond_49
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasSignupTimeSec()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 16324
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getSignupTimeSec()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setSignupTimeSec(I)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16326
    :cond_56
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasPublicUserName()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 16327
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getPublicUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setPublicUserName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    .line 16329
    :cond_63
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasIsMultiLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 16330
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getIsMultiLoginEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->setIsMultiLoginEnabled(Z)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    :cond_70
    move-object v0, p0

    .line 16332
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16372
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 16373
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 16378
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16380
    :sswitch_d
    return-object p0

    .line 16385
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 16390
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    goto :goto_0

    .line 16395
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16396
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    goto :goto_0

    .line 16400
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16401
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    goto :goto_0

    .line 16405
    :sswitch_42
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16406
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    goto :goto_0

    .line 16410
    :sswitch_4f
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    goto :goto_0

    .line 16415
    :sswitch_5c
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    goto :goto_0

    .line 16420
    :sswitch_69
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16421
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    goto :goto_0

    .line 16373
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x40 -> :sswitch_69
    .end sparse-switch
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
    .line 16204
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16204
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UserInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

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
    .line 16204
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsBloggerUser(Z)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16583
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16584
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isBloggerUser_:Z

    .line 16586
    return-object p0
.end method

.method public setIsMultiLoginEnabled(Z)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16661
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16662
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->isMultiLoginEnabled_:Z

    .line 16664
    return-object p0
.end method

.method public setPublicUserName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16632
    if-nez p1, :cond_8

    .line 16633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16635
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16636
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16638
    return-object p0
.end method

.method setPublicUserName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 16647
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16648
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->publicUserName_:Ljava/lang/Object;

    .line 16650
    return-void
.end method

.method public setSignupTimeSec(I)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16604
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16605
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->signupTimeSec_:I

    .line 16607
    return-object p0
.end method

.method public setUserEmail(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16554
    if-nez p1, :cond_8

    .line 16555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16557
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16558
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16560
    return-object p0
.end method

.method setUserEmail(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 16569
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16570
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userEmail_:Ljava/lang/Object;

    .line 16572
    return-void
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16446
    if-nez p1, :cond_8

    .line 16447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16449
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16450
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16452
    return-object p0
.end method

.method setUserId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 16461
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16462
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userId_:Ljava/lang/Object;

    .line 16464
    return-void
.end method

.method public setUserName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16482
    if-nez p1, :cond_8

    .line 16483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16485
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16486
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16488
    return-object p0
.end method

.method setUserName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 16497
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16498
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userName_:Ljava/lang/Object;

    .line 16500
    return-void
.end method

.method public setUserProfileId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16518
    if-nez p1, :cond_8

    .line 16519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16521
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16522
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16524
    return-object p0
.end method

.method setUserProfileId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 16533
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->bitField0_:I

    .line 16534
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->userProfileId_:Ljava/lang/Object;

    .line 16536
    return-void
.end method
