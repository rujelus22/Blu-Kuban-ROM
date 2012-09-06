.class public final Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PostalAddressItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/PostalAddressItem$PostalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;",
        "Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;",
        ">;",
        "Lcom/google/protos/embed/place/PostalAddressItem$PostalAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private addressCountry_:Ljava/lang/Object;

.field private addressLocality_:Ljava/lang/Object;

.field private addressRegion_:Ljava/lang/Object;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private postOfficeBoxNumber_:Ljava/lang/Object;

.field private postalCode_:Ljava/lang/Object;

.field private streetAddress_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->name_:Ljava/lang/Object;

    .line 728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressCountry_:Ljava/lang/Object;

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressLocality_:Ljava/lang/Object;

    .line 800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressRegion_:Ljava/lang/Object;

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postalCode_:Ljava/lang/Object;

    .line 908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->streetAddress_:Ljava/lang/Object;

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->url_:Ljava/lang/Object;

    .line 499
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->maybeForceBuilderInitialization()V

    .line 500
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 1

    .prologue
    .line 493
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->create()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 1

    .prologue
    .line 505
    new-instance v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    invoke-direct {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 503
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->build()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    .line 539
    .local v0, result:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    invoke-virtual {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 540
    invoke-static {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 542
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 6

    .prologue
    .line 556
    new-instance v1, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;-><init>(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;Lcom/google/protos/embed/place/PostalAddressItem$1;)V

    .line 557
    .local v1, result:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 558
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 559
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 560
    or-int/lit8 v2, v2, 0x1

    .line 562
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$302(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 564
    or-int/lit8 v2, v2, 0x2

    .line 566
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressCountry_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$402(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 568
    or-int/lit8 v2, v2, 0x4

    .line 570
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressLocality_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$502(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 572
    or-int/lit8 v2, v2, 0x8

    .line 574
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressRegion_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$602(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 576
    or-int/lit8 v2, v2, 0x10

    .line 578
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postOfficeBoxNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$702(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 580
    or-int/lit8 v2, v2, 0x20

    .line 582
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postalCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$802(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 584
    or-int/lit8 v2, v2, 0x40

    .line 586
    :cond_5c
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->streetAddress_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$902(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 588
    or-int/lit16 v2, v2, 0x80

    .line 590
    :cond_69
    iget-object v3, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$1002(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    #setter for: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->access$1102(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;I)I

    .line 592
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->clear()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->clear()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->name_:Ljava/lang/Object;

    .line 511
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressCountry_:Ljava/lang/Object;

    .line 513
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressLocality_:Ljava/lang/Object;

    .line 515
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressRegion_:Ljava/lang/Object;

    .line 517
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 519
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postalCode_:Ljava/lang/Object;

    .line 521
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->streetAddress_:Ljava/lang/Object;

    .line 523
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->url_:Ljava/lang/Object;

    .line 525
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 526
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->clone()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->clone()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3

    .prologue
    .line 530
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->create()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

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
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->clone()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 2

    .prologue
    .line 534
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 625
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
    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

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
    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 634
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 639
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    :sswitch_d
    return-object p0

    .line 646
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 647
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 651
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 652
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressCountry_:Ljava/lang/Object;

    goto :goto_0

    .line 656
    :sswitch_28
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 657
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressLocality_:Ljava/lang/Object;

    goto :goto_0

    .line 661
    :sswitch_35
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressRegion_:Ljava/lang/Object;

    goto :goto_0

    .line 666
    :sswitch_42
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postOfficeBoxNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 671
    :sswitch_4f
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 672
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postalCode_:Ljava/lang/Object;

    goto :goto_0

    .line 676
    :sswitch_5c
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->streetAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 681
    :sswitch_69
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 682
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 634
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 596
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 621
    :cond_6
    :goto_6
    return-object p0

    .line 597
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 598
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 600
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressCountry()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 601
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setAddressCountry(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 603
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressLocality()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 604
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setAddressLocality(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 606
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasAddressRegion()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 607
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setAddressRegion(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 609
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasPostOfficeBoxNumber()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 610
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostOfficeBoxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 612
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 613
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 615
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasStreetAddress()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 616
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setStreetAddress(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 618
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 619
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    goto :goto_6
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 743
    if-nez p1, :cond_8

    .line 744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 746
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 747
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressCountry_:Ljava/lang/Object;

    .line 749
    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 779
    if-nez p1, :cond_8

    .line 780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 782
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 783
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressLocality_:Ljava/lang/Object;

    .line 785
    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 815
    if-nez p1, :cond_8

    .line 816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 818
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 819
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->addressRegion_:Ljava/lang/Object;

    .line 821
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 707
    if-nez p1, :cond_8

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 711
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->name_:Ljava/lang/Object;

    .line 713
    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 851
    if-nez p1, :cond_8

    .line 852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 854
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 855
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 857
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 887
    if-nez p1, :cond_8

    .line 888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 890
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 891
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->postalCode_:Ljava/lang/Object;

    .line 893
    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 923
    if-nez p1, :cond_8

    .line 924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 926
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 927
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->streetAddress_:Ljava/lang/Object;

    .line 929
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 959
    if-nez p1, :cond_8

    .line 960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 962
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->bitField0_:I

    .line 963
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->url_:Ljava/lang/Object;

    .line 965
    return-object p0
.end method
