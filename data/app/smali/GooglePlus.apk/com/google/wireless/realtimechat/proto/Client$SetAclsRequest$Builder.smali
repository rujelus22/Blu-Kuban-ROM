.class public final Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field private bitField0_:I

.field private senderId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33367
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33481
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33368
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 33369
    return-void
.end method

.method static synthetic access$46100()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 1

    .prologue
    .line 33362
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 1

    .prologue
    .line 33374
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33372
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 3

    .prologue
    .line 33395
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    .line 33396
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33397
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33399
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 6

    .prologue
    .line 33413
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 33414
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33415
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33416
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33417
    or-int/lit8 v2, v2, 0x1

    .line 33419
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->access$46302(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33420
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33421
    or-int/lit8 v2, v2, 0x2

    .line 33423
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->access$46402(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33424
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->access$46502(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;I)I

    .line 33425
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2

    .prologue
    .line 33378
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33379
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33380
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33382
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33383
    return-object p0
.end method

.method public clearAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2

    .prologue
    .line 33498
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33499
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33501
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2

    .prologue
    .line 33529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33530
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33532
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 3

    .prologue
    .line 33387
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

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
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2

    .prologue
    .line 33486
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 33391
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33510
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33511
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33513
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33516
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

.method public hasAcl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33483
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 33507
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

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
    .line 33440
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
    .line 33362
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33362
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

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
    .line 33362
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33449
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 33454
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33456
    :sswitch_d
    return-object p0

    .line 33461
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33462
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    .line 33463
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    if-eqz v2, :cond_0

    .line 33464
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33465
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_0

    .line 33470
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33471
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 33449
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 33429
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33436
    :cond_6
    :goto_6
    return-object p0

    .line 33430
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->hasAcl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33431
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->setAcl(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    .line 33433
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33434
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    goto :goto_6
.end method

.method public setAcl(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33489
    if-nez p1, :cond_8

    .line 33490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33492
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33495
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33520
    if-nez p1, :cond_8

    .line 33521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33523
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->bitField0_:I

    .line 33524
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 33526
    return-object p0
.end method
