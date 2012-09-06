.class public final Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private forwardingNumber_:Ljava/lang/Object;

.field private outgoingNumber_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6428
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6799
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    .line 6429
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6430
    return-void
.end method

.method static synthetic access$6900()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 1

    .prologue
    .line 6423
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 1

    .prologue
    .line 6435
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6433
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3

    .prologue
    .line 6464
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    .line 6465
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6466
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6468
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 6

    .prologue
    .line 6472
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 6473
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6474
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6475
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6476
    or-int/lit8 v2, v2, 0x1

    .line 6478
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7102(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6479
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6480
    or-int/lit8 v2, v2, 0x2

    .line 6482
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7202(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6483
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6484
    or-int/lit8 v2, v2, 0x4

    .line 6486
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7302(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6487
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 6488
    or-int/lit8 v2, v2, 0x8

    .line 6490
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7402(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6491
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 6492
    or-int/lit8 v2, v2, 0x10

    .line 6494
    :cond_42
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->createPhonebookIfNotExist_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7502(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Z)Z

    .line 6495
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 6496
    or-int/lit8 v2, v2, 0x20

    .line 6498
    :cond_4f
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7602(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;I)I

    .line 6499
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7702(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;I)I

    .line 6500
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6439
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6441
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6443
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6445
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6446
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6447
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 6449
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6450
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    .line 6451
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6452
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6602
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6603
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6605
    return-object p0
.end method

.method public clearCreatePhonebookIfNotExist()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6792
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 6795
    return-object p0
.end method

.method public clearForwardingNumber()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6761
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6762
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getForwardingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6764
    return-object p0
.end method

.method public clearOutgoingNumber()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6655
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6656
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6658
    return-object p0
.end method

.method public clearSubscriberDid()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6708
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6709
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getSubscriberDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6711
    return-object p0
.end method

.method public clearType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6813
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6814
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    .line 6816
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3

    .prologue
    .line 6456
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

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
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6571
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6572
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6573
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6574
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6577
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
    .line 6582
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6583
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6584
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6586
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6589
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

.method public getCreatePhonebookIfNotExist()Z
    .registers 2

    .prologue
    .line 6783
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2

    .prologue
    .line 6460
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6730
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6731
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6732
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6733
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6736
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
    .line 6741
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6742
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6743
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6745
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6748
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

.method public getOutgoingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6624
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6625
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6626
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6627
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6630
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

.method public getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6635
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6636
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6637
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6639
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6642
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

.method public getSubscriberDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6677
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6678
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6679
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6680
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6683
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

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6688
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6689
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6690
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6692
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6695
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

.method public getType()I
    .registers 2

    .prologue
    .line 6804
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6568
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreatePhonebookIfNotExist()Z
    .registers 3

    .prologue
    .line 6780
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

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
    .line 6727
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

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

.method public hasOutgoingNumber()Z
    .registers 3

    .prologue
    .line 6621
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

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

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 6674
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 6801
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6535
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6543
    :cond_7
    :goto_7
    return v0

    .line 6539
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->hasOutgoingNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6543
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6504
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6531
    :cond_6
    :goto_6
    return-object p0

    .line 6505
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6506
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6507
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7100(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6510
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasOutgoingNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6511
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6512
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7200(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6515
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasSubscriberDid()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 6516
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6517
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7300(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6520
    :cond_3d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasForwardingNumber()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6521
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6522
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->access$7400(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6525
    :cond_4f
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasCreatePhonebookIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 6526
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getCreatePhonebookIfNotExist()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    .line 6528
    :cond_5c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6529
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6550
    const/4 v2, 0x0

    .line 6552
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 6557
    if-eqz v2, :cond_10

    .line 6558
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    .line 6561
    :cond_10
    return-object p0

    .line 6553
    :catch_11
    move-exception v1

    .line 6554
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-object v2, v0

    .line 6555
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 6557
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 6558
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

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
    .line 6423
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6423
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

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
    .line 6423
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6593
    if-nez p1, :cond_8

    .line 6594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6596
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6597
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6599
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6609
    if-nez p1, :cond_8

    .line 6610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6612
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6613
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 6615
    return-object p0
.end method

.method public setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6786
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6787
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 6789
    return-object p0
.end method

.method public setForwardingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6752
    if-nez p1, :cond_8

    .line 6753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6755
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6756
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6758
    return-object p0
.end method

.method public setForwardingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6768
    if-nez p1, :cond_8

    .line 6769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6771
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6772
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->forwardingNumber_:Ljava/lang/Object;

    .line 6774
    return-object p0
.end method

.method public setOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6646
    if-nez p1, :cond_8

    .line 6647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6649
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6650
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6652
    return-object p0
.end method

.method public setOutgoingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6662
    if-nez p1, :cond_8

    .line 6663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6665
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6666
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->outgoingNumber_:Ljava/lang/Object;

    .line 6668
    return-object p0
.end method

.method public setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6699
    if-nez p1, :cond_8

    .line 6700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6702
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6703
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6705
    return-object p0
.end method

.method public setSubscriberDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6715
    if-nez p1, :cond_8

    .line 6716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6718
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6719
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 6721
    return-object p0
.end method

.method public setType(I)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6807
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->bitField0_:I

    .line 6808
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->type_:I

    .line 6810
    return-object p0
.end method
