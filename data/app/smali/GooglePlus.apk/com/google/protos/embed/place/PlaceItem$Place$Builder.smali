.class public final Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlaceItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/PlaceItem$PlaceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/PlaceItem$Place;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embed/place/PlaceItem$Place;",
        "Lcom/google/protos/embed/place/PlaceItem$Place$Builder;",
        ">;",
        "Lcom/google/protos/embed/place/PlaceItem$PlaceOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

.field private bitField0_:I

.field private clusterId_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

.field private imageUrl_:Ljava/lang/Object;

.field private mapUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private referenceId_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->name_:Ljava/lang/Object;

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->description_:Ljava/lang/Object;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->url_:Ljava/lang/Object;

    .line 880
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 923
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clusterId_:Ljava/lang/Object;

    .line 1002
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 1038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mapUrl_:Ljava/lang/Object;

    .line 1074
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->referenceId_:Ljava/lang/Object;

    .line 543
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->maybeForceBuilderInitialization()V

    .line 544
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 1

    .prologue
    .line 537
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->create()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 1

    .prologue
    .line 549
    new-instance v0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    invoke-direct {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 547
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->build()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    .line 587
    .local v0, result:Lcom/google/protos/embed/place/PlaceItem$Place;
    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 588
    invoke-static {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 590
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 6

    .prologue
    .line 604
    new-instance v1, Lcom/google/protos/embed/place/PlaceItem$Place;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;-><init>(Lcom/google/protos/embed/place/PlaceItem$Place$Builder;Lcom/google/protos/embed/place/PlaceItem$1;)V

    .line 605
    .local v1, result:Lcom/google/protos/embed/place/PlaceItem$Place;
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 606
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 607
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 608
    or-int/lit8 v2, v2, 0x1

    .line 610
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$302(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 612
    or-int/lit8 v2, v2, 0x2

    .line 614
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$402(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 616
    or-int/lit8 v2, v2, 0x4

    .line 618
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$502(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 620
    or-int/lit8 v2, v2, 0x8

    .line 622
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$602(Lcom/google/protos/embed/place/PlaceItem$Place;Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 623
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 624
    or-int/lit8 v2, v2, 0x10

    .line 626
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$702(Lcom/google/protos/embed/place/PlaceItem$Place;Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 627
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 628
    or-int/lit8 v2, v2, 0x20

    .line 630
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$802(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 632
    or-int/lit8 v2, v2, 0x40

    .line 634
    :cond_5c
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$902(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 636
    or-int/lit16 v2, v2, 0x80

    .line 638
    :cond_69
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mapUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$1002(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 640
    or-int/lit16 v2, v2, 0x100

    .line 642
    :cond_76
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$1102(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 644
    or-int/lit16 v2, v2, 0x200

    .line 646
    :cond_83
    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->referenceId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$1202(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    #setter for: Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embed/place/PlaceItem$Place;->access$1302(Lcom/google/protos/embed/place/PlaceItem$Place;I)I

    .line 648
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clear()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clear()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 2

    .prologue
    .line 553
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->name_:Ljava/lang/Object;

    .line 555
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->description_:Ljava/lang/Object;

    .line 557
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->url_:Ljava/lang/Object;

    .line 559
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 560
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 561
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 562
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 563
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clusterId_:Ljava/lang/Object;

    .line 565
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 567
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mapUrl_:Ljava/lang/Object;

    .line 569
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->imageUrl_:Ljava/lang/Object;

    .line 571
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->referenceId_:Ljava/lang/Object;

    .line 573
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 574
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clone()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clone()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3

    .prologue
    .line 578
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->create()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

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
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clone()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 582
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public getGeo()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    return-object v0
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    .line 882
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

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

.method public hasGeo()Z
    .registers 3

    .prologue
    .line 925
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 687
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAddress(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 904
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 906
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    invoke-static {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilder(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 912
    :goto_20
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 913
    return-object p0

    .line 909
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    goto :goto_20
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
    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/google/protos/embed/place/PlaceItem$Place;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

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
    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 696
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_b2

    .line 701
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    :sswitch_d
    return-object p0

    .line 708
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 709
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 713
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 714
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 718
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 719
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 723
    :sswitch_35
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    .line 724
    .local v0, subBuilder:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 725
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->getAddress()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    .line 727
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 728
    invoke-virtual {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->buildPartial()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setAddress(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    goto :goto_0

    .line 732
    .end local v0           #subBuilder:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilder()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    .line 733
    .local v0, subBuilder:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->hasGeo()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 734
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->getGeo()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    .line 736
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 737
    invoke-virtual {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setGeo(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    goto :goto_0

    .line 741
    .end local v0           #subBuilder:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    :sswitch_6d
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clusterId_:Ljava/lang/Object;

    goto :goto_0

    .line 746
    :sswitch_7a
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 747
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 751
    :sswitch_88
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 752
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mapUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 756
    :sswitch_96
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 757
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->imageUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 761
    :sswitch_a4
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 762
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->referenceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 696
    :sswitch_data_b2
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
        0x32 -> :sswitch_6d
        0x3a -> :sswitch_7a
        0x42 -> :sswitch_88
        0x4a -> :sswitch_96
        0x52 -> :sswitch_a4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 652
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 683
    :cond_6
    :goto_6
    return-object p0

    .line 653
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 654
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 656
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 657
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setDescription(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 659
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 660
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 662
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 663
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getAddress()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeAddress(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 665
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 666
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getGeo()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeGeo(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 668
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasClusterId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 669
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setClusterId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 671
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasOwnerObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 672
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 674
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasMapUrl()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 675
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getMapUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setMapUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 677
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 678
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 680
    :cond_7c
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->hasReferenceId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    invoke-virtual {p1}, Lcom/google/protos/embed/place/PlaceItem$Place;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->setReferenceId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    goto/16 :goto_6
.end method

.method public mergeGeo(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 947
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 949
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    invoke-static {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->newBuilder(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 955
    :goto_20
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 956
    return-object p0

    .line 952
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    goto :goto_20
.end method

.method public setAddress(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 888
    if-nez p1, :cond_8

    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 891
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 893
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 894
    return-object p0
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 981
    if-nez p1, :cond_8

    .line 982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 984
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 985
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->clusterId_:Ljava/lang/Object;

    .line 987
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 823
    if-nez p1, :cond_8

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 827
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->description_:Ljava/lang/Object;

    .line 829
    return-object p0
.end method

.method public setGeo(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 931
    if-nez p1, :cond_8

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 936
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 937
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1089
    if-nez p1, :cond_8

    .line 1090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1092
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 1093
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1095
    return-object p0
.end method

.method public setMapUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1053
    if-nez p1, :cond_8

    .line 1054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1056
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 1057
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mapUrl_:Ljava/lang/Object;

    .line 1059
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 787
    if-nez p1, :cond_8

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 791
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->name_:Ljava/lang/Object;

    .line 793
    return-object p0
.end method

.method public setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1017
    if-nez p1, :cond_8

    .line 1018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1020
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 1021
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 1023
    return-object p0
.end method

.method public setReferenceId(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1125
    if-nez p1, :cond_8

    .line 1126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1128
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 1129
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->referenceId_:Ljava/lang/Object;

    .line 1131
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 859
    if-nez p1, :cond_8

    .line 860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 862
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->bitField0_:I

    .line 863
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->url_:Ljava/lang/Object;

    .line 865
    return-object p0
.end method
