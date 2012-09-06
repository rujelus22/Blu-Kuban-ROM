.class public final Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$Request;",
        "Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private favaRequestId_:J

.field private requestBody_:Lcom/google/protobuf/ByteString;

.field private requestId_:Ljava/lang/Object;

.field private requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 654
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    .line 453
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->maybeForceBuilderInitialization()V

    .line 454
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 1

    .prologue
    .line 447
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 1

    .prologue
    .line 459
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 457
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 3

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    .line 485
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$Request;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 486
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 488
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 6

    .prologue
    .line 502
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$Request;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$Request;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 503
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$Request;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 504
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 505
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 506
    or-int/lit8 v2, v2, 0x1

    .line 508
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Request;->access$302(Lcom/google/wireless/tacotruck/proto/Network$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 510
    or-int/lit8 v2, v2, 0x2

    .line 512
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Request;->access$402(Lcom/google/wireless/tacotruck/proto/Network$Request;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 513
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 514
    or-int/lit8 v2, v2, 0x4

    .line 516
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Request;->access$502(Lcom/google/wireless/tacotruck/proto/Network$Request;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 517
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 518
    or-int/lit8 v2, v2, 0x8

    .line 520
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Request;->access$602(Lcom/google/wireless/tacotruck/proto/Network$Request;J)J

    .line 521
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$Request;->access$702(Lcom/google/wireless/tacotruck/proto/Network$Request;I)I

    .line 522
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3

    .prologue
    .line 463
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 466
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 468
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    .line 469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    .line 471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 472
    return-object p0
.end method

.method public clearFavaRequestId()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 692
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    .line 695
    return-object p0
.end method

.method public clearRequestBody()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 672
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    .line 674
    return-object p0
.end method

.method public clearRequestId()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 621
    return-object p0
.end method

.method public clearRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 648
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 650
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3

    .prologue
    .line 476
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

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
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 2

    .prologue
    .line 480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public getFavaRequestId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 683
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    return-wide v0
.end method

.method public getRequestBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 600
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 605
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

.method public getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public hasFavaRequestId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 680
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

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

.method public hasRequestBody()Z
    .registers 3

    .prologue
    .line 656
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 596
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRequestType()Z
    .registers 3

    .prologue
    .line 632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

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
    .line 543
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
    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 447
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

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
    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 552
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 557
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    :sswitch_d
    return-object p0

    .line 564
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    goto :goto_0

    .line 569
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 570
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    .line 571
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    if-eqz v2, :cond_0

    .line 572
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 573
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    goto :goto_0

    .line 578
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 579
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 583
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    goto :goto_0

    .line 552
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 526
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 539
    :cond_6
    :goto_6
    return-object p0

    .line 527
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 528
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 530
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 531
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 533
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 534
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 536
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->hasFavaRequestId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 537
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getFavaRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    goto :goto_6
.end method

.method public setFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 686
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 687
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->favaRequestId_:J

    .line 689
    return-object p0
.end method

.method public setRequestBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 662
    if-nez p1, :cond_8

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 665
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestBody_:Lcom/google/protobuf/ByteString;

    .line 668
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 609
    if-nez p1, :cond_8

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 612
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 613
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 615
    return-object p0
.end method

.method public setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 638
    if-nez p1, :cond_8

    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->bitField0_:I

    .line 642
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 644
    return-object p0
.end method
