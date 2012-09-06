.class public final Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private provisionError_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42515
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42422
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 42423
    return-void
.end method

.method static synthetic access$51400()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 1

    .prologue
    .line 42416
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 1

    .prologue
    .line 42428
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42426
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3

    .prologue
    .line 42449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    .line 42450
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42451
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42453
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 6

    .prologue
    .line 42457
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 42458
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42459
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42460
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42461
    or-int/lit8 v2, v2, 0x1

    .line 42463
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->access$51602(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42464
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42465
    or-int/lit8 v2, v2, 0x2

    .line 42467
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->provisionError_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->access$51702(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;I)I

    .line 42468
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->access$51802(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;I)I

    .line 42469
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2

    .prologue
    .line 42432
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42433
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42434
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42435
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->provisionError_:I

    .line 42436
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42437
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearProvisionError()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2

    .prologue
    .line 42572
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42573
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->provisionError_:I

    .line 42575
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2

    .prologue
    .line 42551
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42553
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42554
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 3

    .prologue
    .line 42441
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

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
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2

    .prologue
    .line 42445
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42416
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionError()I
    .registers 2

    .prologue
    .line 42563
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->provisionError_:I

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 42520
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasProvisionError()Z
    .registers 3

    .prologue
    .line 42560
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42517
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42484
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 42492
    :cond_7
    :goto_7
    return v0

    .line 42488
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 42492
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42473
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42480
    :cond_6
    :goto_6
    return-object p0

    .line 42474
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42475
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    .line 42477
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->hasProvisionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42478
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getProvisionError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->setProvisionError(I)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42499
    const/4 v2, 0x0

    .line 42501
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 42506
    if-eqz v2, :cond_10

    .line 42507
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    .line 42510
    :cond_10
    return-object p0

    .line 42502
    :catch_11
    move-exception v1

    .line 42503
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-object v2, v0

    .line 42504
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 42506
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 42507
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

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
    .line 42416
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42416
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

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
    .line 42416
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42539
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 42541
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42547
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42548
    return-object p0

    .line 42544
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setProvisionError(I)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42566
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42567
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->provisionError_:I

    .line 42569
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42533
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42535
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42536
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42523
    if-nez p1, :cond_8

    .line 42524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42526
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42528
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->bitField0_:I

    .line 42529
    return-object p0
.end method
