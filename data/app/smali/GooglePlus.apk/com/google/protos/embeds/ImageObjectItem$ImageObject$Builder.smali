.class public final Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ImageObjectItem.java"

# interfaces
.implements Lcom/google/protos/embeds/ImageObjectItem$ImageObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/ImageObjectItem$ImageObject;",
        "Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;",
        ">;",
        "Lcom/google/protos/embeds/ImageObjectItem$ImageObjectOrBuilder;"
    }
.end annotation


# instance fields
.field private about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

.field private bitField0_:I

.field private contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

.field private contentUrl_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private heightPx_:I

.field private height_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

.field private sourceDomain_:Ljava/lang/Object;

.field private thumbnailUrl_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private widthPx_:I

.field private width_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->url_:Ljava/lang/Object;

    .line 990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->name_:Ljava/lang/Object;

    .line 1026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->description_:Ljava/lang/Object;

    .line 1062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1134
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 1177
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->width_:Ljava/lang/Object;

    .line 1256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->height_:Ljava/lang/Object;

    .line 1334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->sourceDomain_:Ljava/lang/Object;

    .line 1406
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 659
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->maybeForceBuilderInitialization()V

    .line 660
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 1

    .prologue
    .line 653
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->create()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 1

    .prologue
    .line 665
    new-instance v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 663
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->build()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 3

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    .line 711
    .local v0, result:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    invoke-virtual {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 712
    invoke-static {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 714
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 6

    .prologue
    .line 728
    new-instance v1, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;-><init>(Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;Lcom/google/protos/embeds/ImageObjectItem$1;)V

    .line 729
    .local v1, result:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 730
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 731
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 732
    or-int/lit8 v2, v2, 0x1

    .line 734
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$302(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 736
    or-int/lit8 v2, v2, 0x2

    .line 738
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$402(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 740
    or-int/lit8 v2, v2, 0x4

    .line 742
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$502(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 744
    or-int/lit8 v2, v2, 0x8

    .line 746
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$602(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 748
    or-int/lit8 v2, v2, 0x10

    .line 750
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$702(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 752
    or-int/lit8 v2, v2, 0x20

    .line 754
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$802(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 755
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 756
    or-int/lit8 v2, v2, 0x40

    .line 758
    :cond_5c
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$902(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 759
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 760
    or-int/lit16 v2, v2, 0x80

    .line 762
    :cond_69
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->width_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1002(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 764
    or-int/lit16 v2, v2, 0x100

    .line 766
    :cond_76
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->height_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1102(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 768
    or-int/lit16 v2, v2, 0x200

    .line 770
    :cond_83
    iget v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->widthPx_:I

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1202(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I

    .line 771
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 772
    or-int/lit16 v2, v2, 0x400

    .line 774
    :cond_90
    iget v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->heightPx_:I

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1302(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I

    .line 775
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 776
    or-int/lit16 v2, v2, 0x800

    .line 778
    :cond_9d
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1402(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_aa

    .line 780
    or-int/lit16 v2, v2, 0x1000

    .line 782
    :cond_aa
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->sourceDomain_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1502(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_b7

    .line 784
    or-int/lit16 v2, v2, 0x2000

    .line 786
    :cond_b7
    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1602(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 787
    #setter for: Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->access$1702(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I

    .line 788
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->clear()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->clear()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->url_:Ljava/lang/Object;

    .line 671
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->name_:Ljava/lang/Object;

    .line 673
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->description_:Ljava/lang/Object;

    .line 675
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->imageUrl_:Ljava/lang/Object;

    .line 677
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 679
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 680
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 681
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 682
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 683
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->width_:Ljava/lang/Object;

    .line 685
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->height_:Ljava/lang/Object;

    .line 687
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 688
    iput v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->widthPx_:I

    .line 689
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 690
    iput v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->heightPx_:I

    .line 691
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentUrl_:Ljava/lang/Object;

    .line 693
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->sourceDomain_:Ljava/lang/Object;

    .line 695
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 696
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 697
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 698
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->clone()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->clone()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3

    .prologue
    .line 702
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->create()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

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
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->clone()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 2

    .prologue
    .line 706
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method public hasAbout()Z
    .registers 3

    .prologue
    .line 1408
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContentLocation()Z
    .registers 3

    .prologue
    .line 1179
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasProxiedImage()Z
    .registers 3

    .prologue
    .line 1136
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->hasAbout()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 840
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 842
    const/4 v0, 0x0

    .line 845
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeAbout(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1430
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1432
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1438
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1439
    return-object p0

    .line 1435
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    goto :goto_20
.end method

.method public mergeContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1203
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v0}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1209
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1210
    return-object p0

    .line 1206
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

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
    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 653
    check-cast p1, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

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
    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 854
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_fa

    .line 859
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    :sswitch_d
    return-object p0

    .line 866
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 867
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 871
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 872
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 876
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 877
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 881
    :sswitch_35
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 882
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 886
    :sswitch_42
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 887
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->thumbnailUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 891
    :sswitch_4f
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    .line 892
    .local v0, subBuilder:Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->hasProxiedImage()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 893
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 895
    :cond_60
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 896
    invoke-virtual {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    goto :goto_0

    .line 900
    .end local v0           #subBuilder:Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    :sswitch_6b
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    .line 901
    .local v0, subBuilder:Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->hasContentLocation()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 902
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 904
    :cond_7c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 905
    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    goto/16 :goto_0

    .line 909
    .end local v0           #subBuilder:Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    :sswitch_88
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->width_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 914
    :sswitch_96
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->height_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 919
    :sswitch_a4
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->widthPx_:I

    goto/16 :goto_0

    .line 924
    :sswitch_b2
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->heightPx_:I

    goto/16 :goto_0

    .line 929
    :sswitch_c0
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 934
    :sswitch_ce
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->sourceDomain_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 939
    :sswitch_dc
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    .line 940
    .local v0, subBuilder:Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->hasAbout()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 941
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    .line 943
    :cond_ed
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 944
    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setAbout(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    goto/16 :goto_0

    .line 854
    nop

    :sswitch_data_fa
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_6b
        0x42 -> :sswitch_88
        0x4a -> :sswitch_96
        0x50 -> :sswitch_a4
        0x58 -> :sswitch_b2
        0x62 -> :sswitch_c0
        0x6a -> :sswitch_ce
        0x72 -> :sswitch_dc
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 792
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 835
    :cond_6
    :goto_6
    return-object p0

    .line 793
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 794
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 796
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 797
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 799
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 800
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 802
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 803
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 805
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 806
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 808
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasProxiedImage()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 809
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 811
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasContentLocation()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 812
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 814
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 815
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setWidth(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 817
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 818
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setHeight(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 820
    :cond_7c
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasWidthPx()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 821
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getWidthPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setWidthPx(I)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 823
    :cond_89
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasHeightPx()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 824
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getHeightPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setHeightPx(I)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 826
    :cond_96
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasContentUrl()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 827
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 829
    :cond_a3
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasSourceDomain()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 830
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getSourceDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->setSourceDomain(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 832
    :cond_b0
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasAbout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 833
    invoke-virtual {p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeAbout(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    goto/16 :goto_6
.end method

.method public mergeProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1160
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 1166
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1167
    return-object p0

    .line 1163
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    goto :goto_20
.end method

.method public setAbout(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1414
    if-nez p1, :cond_8

    .line 1415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1417
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 1419
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1420
    return-object p0
.end method

.method public setContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1185
    if-nez p1, :cond_8

    .line 1186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1188
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1190
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1191
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1349
    if-nez p1, :cond_8

    .line 1350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1352
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1353
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1355
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1041
    if-nez p1, :cond_8

    .line 1042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1044
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1045
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->description_:Ljava/lang/Object;

    .line 1047
    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1271
    if-nez p1, :cond_8

    .line 1272
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1274
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1275
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->height_:Ljava/lang/Object;

    .line 1277
    return-object p0
.end method

.method public setHeightPx(I)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1322
    iput p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->heightPx_:I

    .line 1324
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1077
    if-nez p1, :cond_8

    .line 1078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1080
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1081
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1083
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1005
    if-nez p1, :cond_8

    .line 1006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1008
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1009
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->name_:Ljava/lang/Object;

    .line 1011
    return-object p0
.end method

.method public setProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1142
    if-nez p1, :cond_8

    .line 1143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1145
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 1147
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1148
    return-object p0
.end method

.method public setSourceDomain(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1385
    if-nez p1, :cond_8

    .line 1386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1388
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1389
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->sourceDomain_:Ljava/lang/Object;

    .line 1391
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1113
    if-nez p1, :cond_8

    .line 1114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1116
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1117
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1119
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 969
    if-nez p1, :cond_8

    .line 970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 972
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 973
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->url_:Ljava/lang/Object;

    .line 975
    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1235
    if-nez p1, :cond_8

    .line 1236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1238
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1239
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->width_:Ljava/lang/Object;

    .line 1241
    return-object p0
.end method

.method public setWidthPx(I)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->bitField0_:I

    .line 1301
    iput p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->widthPx_:I

    .line 1303
    return-object p0
.end method
