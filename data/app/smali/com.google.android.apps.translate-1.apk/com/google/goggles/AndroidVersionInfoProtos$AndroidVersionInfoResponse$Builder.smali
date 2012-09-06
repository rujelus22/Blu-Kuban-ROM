.class public final Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AndroidVersionInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;",
        "Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;",
        ">;",
        "Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latestVersionCode_:I

.field private shouldUpgrade_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 473
    invoke-direct {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 474
    return-void
.end method

.method static synthetic access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 1

    .prologue
    .line 467
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->create()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 511
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 514
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 1

    .prologue
    .line 479
    new-instance v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 477
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 502
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 504
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->build()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 518
    new-instance v2, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;-><init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;Lcom/google/goggles/AndroidVersionInfoProtos$1;)V

    .line 519
    iget v3, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 520
    const/4 v1, 0x0

    .line 521
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 524
    :goto_e
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    #setter for: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I
    invoke-static {v2, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->access$802(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;I)I

    .line 525
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 526
    or-int/lit8 v0, v0, 0x2

    .line 528
    :cond_1a
    iget-boolean v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    #setter for: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->access$902(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;Z)Z

    .line 529
    #setter for: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->access$1002(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;I)I

    .line 530
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 484
    iput v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    .line 485
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 486
    iput-boolean v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    .line 487
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 488
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clear()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clear()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLatestVersionCode()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 2

    .prologue
    .line 596
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    .line 599
    return-object p0
.end method

.method public clearShouldUpgrade()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    .line 620
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 3

    .prologue
    .line 492
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->create()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clone()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clone()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clone()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

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
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->clone()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2

    .prologue
    .line 496
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLatestVersionCode()I
    .registers 2

    .prologue
    .line 587
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    return v0
.end method

.method public getShouldUpgrade()Z
    .registers 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    return v0
.end method

.method public hasLatestVersionCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 584
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasShouldUpgrade()Z
    .registers 3

    .prologue
    .line 605
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

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
    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 534
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 541
    :cond_6
    :goto_6
    return-object p0

    .line 535
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->hasLatestVersionCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 536
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getLatestVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->setLatestVersionCode(I)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    .line 538
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->hasShouldUpgrade()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getShouldUpgrade()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->setShouldUpgrade(Z)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 554
    sparse-switch v0, :sswitch_data_28

    .line 559
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    :sswitch_d
    return-object p0

    .line 566
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 567
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    goto :goto_0

    .line 571
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 572
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    goto :goto_0

    .line 554
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 467
    check-cast p1, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLatestVersionCode(I)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 590
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 591
    iput p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->latestVersionCode_:I

    .line 593
    return-object p0
.end method

.method public setShouldUpgrade(Z)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 611
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->bitField0_:I

    .line 612
    iput-boolean p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->shouldUpgrade_:Z

    .line 614
    return-object p0
.end method
