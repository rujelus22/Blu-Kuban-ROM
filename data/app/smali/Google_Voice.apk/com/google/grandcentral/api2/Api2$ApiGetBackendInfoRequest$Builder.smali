.class public final Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private forwardingNumber_:Ljava/lang/Object;

.field private mccMnc_:Ljava/lang/Object;

.field private wantShadowMappings_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4338
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    .line 4594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4339
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4340
    return-void
.end method

.method static synthetic access$4600()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 1

    .prologue
    .line 4333
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 1

    .prologue
    .line 4345
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4343
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3

    .prologue
    .line 4372
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    .line 4373
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4374
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4376
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 6

    .prologue
    .line 4380
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 4381
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4382
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4383
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4384
    or-int/lit8 v2, v2, 0x1

    .line 4386
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$4802(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4387
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4388
    or-int/lit8 v2, v2, 0x2

    .line 4390
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$4902(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4392
    or-int/lit8 v2, v2, 0x4

    .line 4394
    :cond_28
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5002(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Z)Z

    .line 4395
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4396
    or-int/lit8 v2, v2, 0x8

    .line 4398
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5102(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4399
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 4400
    or-int/lit8 v2, v2, 0x10

    .line 4402
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5202(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4403
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5302(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;I)I

    .line 4404
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4349
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4350
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4351
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4353
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    .line 4355
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4357
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4359
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4360
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4503
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4504
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4506
    return-object p0
.end method

.method public clearCountry()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4683
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4684
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4686
    return-object p0
.end method

.method public clearForwardingNumber()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4556
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4557
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getForwardingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4559
    return-object p0
.end method

.method public clearMccMnc()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4630
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4631
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getMccMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4633
    return-object p0
.end method

.method public clearWantShadowMappings()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4587
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    .line 4590
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3

    .prologue
    .line 4364
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

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
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4472
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4473
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4474
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4475
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4478
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4483
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4484
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4485
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4487
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4490
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4652
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4653
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4654
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4655
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4658
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

.method public getCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4663
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4664
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4665
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4667
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4670
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2

    .prologue
    .line 4368
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4526
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4527
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4528
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4531
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

.method public getForwardingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4536
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4537
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4538
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4540
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4543
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getMccMnc()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4600
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4602
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4605
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

.method public getMccMncBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4610
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4611
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4612
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4614
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4617
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getWantShadowMappings()Z
    .registers 2

    .prologue
    .line 4578
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4469
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCountry()Z
    .registers 3

    .prologue
    .line 4649
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

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

.method public hasForwardingNumber()Z
    .registers 3

    .prologue
    .line 4522
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

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

.method public hasMccMnc()Z
    .registers 3

    .prologue
    .line 4596
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

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

.method public hasWantShadowMappings()Z
    .registers 3

    .prologue
    .line 4575
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

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
    const/4 v0, 0x0

    .line 4436
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4444
    :cond_7
    :goto_7
    return v0

    .line 4440
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->hasForwardingNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4444
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4408
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4432
    :cond_6
    :goto_6
    return-object p0

    .line 4409
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4410
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4411
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$4800(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4414
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasForwardingNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4415
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4416
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$4900(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4419
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasWantShadowMappings()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4420
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getWantShadowMappings()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->setWantShadowMappings(Z)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    .line 4422
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasMccMnc()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4423
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4424
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5100(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4427
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4428
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4429
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->access$5200(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4451
    const/4 v2, 0x0

    .line 4453
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 4458
    if-eqz v2, :cond_10

    .line 4459
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    .line 4462
    :cond_10
    return-object p0

    .line 4454
    :catch_11
    move-exception v1

    .line 4455
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-object v2, v0

    .line 4456
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 4458
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 4459
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    :cond_21
    throw v3
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
    .line 4333
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4333
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

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
    .line 4333
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4494
    if-nez p1, :cond_8

    .line 4495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4497
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4498
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4500
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4510
    if-nez p1, :cond_8

    .line 4511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4513
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4514
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 4516
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4674
    if-nez p1, :cond_8

    .line 4675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4677
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4678
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4680
    return-object p0
.end method

.method public setCountryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4690
    if-nez p1, :cond_8

    .line 4691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4693
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4694
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->country_:Ljava/lang/Object;

    .line 4696
    return-object p0
.end method

.method public setForwardingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4547
    if-nez p1, :cond_8

    .line 4548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4550
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4551
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4553
    return-object p0
.end method

.method public setForwardingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4563
    if-nez p1, :cond_8

    .line 4564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4566
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4567
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 4569
    return-object p0
.end method

.method public setMccMnc(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4621
    if-nez p1, :cond_8

    .line 4622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4624
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4625
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4627
    return-object p0
.end method

.method public setMccMncBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4637
    if-nez p1, :cond_8

    .line 4638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4640
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4641
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mccMnc_:Ljava/lang/Object;

    .line 4643
    return-object p0
.end method

.method public setWantShadowMappings(Z)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4581
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->bitField0_:I

    .line 4582
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->wantShadowMappings_:Z

    .line 4584
    return-object p0
.end method
