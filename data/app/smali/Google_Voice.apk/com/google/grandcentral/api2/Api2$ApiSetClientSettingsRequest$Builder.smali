.class public final Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private clientSettings_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35560
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35416
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 35417
    return-void
.end method

.method static synthetic access$42400()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 35410
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 35422
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35420
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3

    .prologue
    .line 35443
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    .line 35444
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35445
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35447
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 6

    .prologue
    .line 35451
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 35452
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35453
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35454
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35455
    or-int/lit8 v2, v2, 0x1

    .line 35457
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->access$42602(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35458
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 35459
    or-int/lit8 v2, v2, 0x2

    .line 35461
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->access$42702(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 35462
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->access$42802(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;I)I

    .line 35463
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 35426
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35428
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35429
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35430
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35431
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 35543
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35544
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35546
    return-object p0
.end method

.method public clearClientSettings()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 35577
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35578
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getClientSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35580
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 35435
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

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
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35513
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35514
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35515
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35518
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
    .line 35523
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35524
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35525
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35527
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35530
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

.method public getClientSettings()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 35565
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2

    .prologue
    .line 35439
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35410
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35509
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientSettings()Z
    .registers 3

    .prologue
    .line 35562
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

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
    .line 35480
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 35482
    const/4 v0, 0x0

    .line 35484
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 35467
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35476
    :cond_6
    :goto_6
    return-object p0

    .line 35468
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 35469
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35470
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->access$42600(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35473
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->hasClientSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35474
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getClientSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->setClientSettings(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35491
    const/4 v2, 0x0

    .line 35493
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 35498
    if-eqz v2, :cond_10

    .line 35499
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    .line 35502
    :cond_10
    return-object p0

    .line 35494
    :catch_11
    move-exception v1

    .line 35495
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    move-object v2, v0

    .line 35496
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 35498
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 35499
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

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
    .line 35410
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35410
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

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
    .line 35410
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35534
    if-nez p1, :cond_8

    .line 35535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35537
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35538
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35540
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35550
    if-nez p1, :cond_8

    .line 35551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35553
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35554
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 35556
    return-object p0
.end method

.method public setClientSettings(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35568
    if-nez p1, :cond_8

    .line 35569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35571
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->bitField0_:I

    .line 35572
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35574
    return-object p0
.end method
