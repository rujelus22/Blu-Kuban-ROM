.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22514
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22365
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->maybeForceBuilderInitialization()V

    .line 22366
    return-void
.end method

.method static synthetic access$30500()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 1

    .prologue
    .line 22359
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 1

    .prologue
    .line 22371
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22369
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 3

    .prologue
    .line 22392
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    .line 22393
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22394
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22396
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 6

    .prologue
    .line 22410
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 22411
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22412
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22413
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22414
    or-int/lit8 v2, v2, 0x1

    .line 22416
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$30702(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22417
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22418
    or-int/lit8 v2, v2, 0x2

    .line 22420
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$30802(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22421
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$30902(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;I)I

    .line 22422
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 22375
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22378
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22380
    return-object p0
.end method

.method public clearContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 22531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22532
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22534
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 22502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22503
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22505
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3

    .prologue
    .line 22384
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

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
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2

    .prologue
    .line 22519
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 2

    .prologue
    .line 22388
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22484
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22485
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22486
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22489
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

.method public hasContentType()Z
    .registers 3

    .prologue
    .line 22516
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22480
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 22359
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

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
    .line 22359
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22445
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 22446
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 22451
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22453
    :sswitch_d
    return-object p0

    .line 22458
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 22463
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 22464
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    move-result-object v2

    .line 22465
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    if-eqz v2, :cond_0

    .line 22466
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22467
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    goto :goto_0

    .line 22446
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22426
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22433
    :cond_6
    :goto_6
    return-object p0

    .line 22427
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22428
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    .line 22430
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22431
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    goto :goto_6
.end method

.method public setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22522
    if-nez p1, :cond_8

    .line 22523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22525
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22526
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22528
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22493
    if-nez p1, :cond_8

    .line 22494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22496
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22497
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22499
    return-object p0
.end method
