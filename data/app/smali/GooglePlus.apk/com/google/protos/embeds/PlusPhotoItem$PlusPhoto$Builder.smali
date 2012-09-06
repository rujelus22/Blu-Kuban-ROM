.class public final Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusPhotoItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotoItem$PlusPhotoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;",
        "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhotoOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private isVideo_:Z

.field private name_:Ljava/lang/Object;

.field private onepickMediaId_:Ljava/lang/Object;

.field private originalContentUrl_:Ljava/lang/Object;

.field private originalLightboxPhotoId_:Ljava/lang/Object;

.field private originalMediaContainerUrl_:Ljava/lang/Object;

.field private originalMediaPlayerUrl_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private photoId_:Ljava/lang/Object;

.field private thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 896
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->albumId_:Ljava/lang/Object;

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->photoId_:Ljava/lang/Object;

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->url_:Ljava/lang/Object;

    .line 1104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 1140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 1176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 1212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalContentUrl_:Ljava/lang/Object;

    .line 1248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->name_:Ljava/lang/Object;

    .line 1284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->onepickMediaId_:Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->maybeForceBuilderInitialization()V

    .line 638
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 1

    .prologue
    .line 631
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->create()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 1

    .prologue
    .line 643
    new-instance v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 641
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->build()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 3

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    .line 685
    .local v0, result:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 686
    invoke-static {v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 688
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 6

    .prologue
    .line 702
    new-instance v1, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;-><init>(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;Lcom/google/protos/embeds/PlusPhotoItem$1;)V

    .line 703
    .local v1, result:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 704
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 705
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 706
    or-int/lit8 v2, v2, 0x1

    .line 708
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$302(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 709
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 710
    or-int/lit8 v2, v2, 0x2

    .line 712
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$402(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 714
    or-int/lit8 v2, v2, 0x4

    .line 716
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$502(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 718
    or-int/lit8 v2, v2, 0x8

    .line 720
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->photoId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$602(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 722
    or-int/lit8 v2, v2, 0x10

    .line 724
    :cond_42
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->isVideo_:Z

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$702(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Z)Z

    .line 725
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 726
    or-int/lit8 v2, v2, 0x20

    .line 728
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$802(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 730
    or-int/lit8 v2, v2, 0x40

    .line 732
    :cond_5c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaPlayerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$902(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 734
    or-int/lit16 v2, v2, 0x80

    .line 736
    :cond_69
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaContainerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1002(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 738
    or-int/lit16 v2, v2, 0x100

    .line 740
    :cond_76
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalLightboxPhotoId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1102(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 742
    or-int/lit16 v2, v2, 0x200

    .line 744
    :cond_83
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalContentUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1202(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 746
    or-int/lit16 v2, v2, 0x400

    .line 748
    :cond_90
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1302(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 750
    or-int/lit16 v2, v2, 0x800

    .line 752
    :cond_9d
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->onepickMediaId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1402(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    #setter for: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->access$1502(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;I)I

    .line 754
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->clear()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->clear()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 2

    .prologue
    .line 647
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 648
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 649
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 651
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->albumId_:Ljava/lang/Object;

    .line 653
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->photoId_:Ljava/lang/Object;

    .line 655
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->isVideo_:Z

    .line 657
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->url_:Ljava/lang/Object;

    .line 659
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 661
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 663
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 665
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalContentUrl_:Ljava/lang/Object;

    .line 667
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->name_:Ljava/lang/Object;

    .line 669
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->onepickMediaId_:Ljava/lang/Object;

    .line 671
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 672
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3

    .prologue
    .line 676
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->create()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

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
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 2

    .prologue
    .line 680
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    return-object v0
.end method

.method public hasThumbnail()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 898
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 800
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 802
    const/4 v0, 0x0

    .line 805
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 631
    check-cast p1, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

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
    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 814
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_be

    .line 819
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    :sswitch_d
    return-object p0

    .line 826
    :sswitch_e
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    .line 827
    .local v0, subBuilder:Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 828
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    .line 830
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 831
    invoke-virtual {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setThumbnail(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    goto :goto_0

    .line 835
    .end local v0           #subBuilder:Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 836
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 840
    :sswitch_37
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 841
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 845
    :sswitch_44
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 846
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->photoId_:Ljava/lang/Object;

    goto :goto_0

    .line 850
    :sswitch_51
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->isVideo_:Z

    goto :goto_0

    .line 855
    :sswitch_5e
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 860
    :sswitch_6b
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaPlayerUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 865
    :sswitch_78
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 866
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaContainerUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 870
    :sswitch_86
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 871
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalLightboxPhotoId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 875
    :sswitch_94
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 876
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalContentUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 880
    :sswitch_a2
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 885
    :sswitch_b0
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 886
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->onepickMediaId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 814
    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x22 -> :sswitch_44
        0x28 -> :sswitch_51
        0x32 -> :sswitch_5e
        0x3a -> :sswitch_6b
        0x42 -> :sswitch_78
        0x4a -> :sswitch_86
        0x52 -> :sswitch_94
        0x5a -> :sswitch_a2
        0x62 -> :sswitch_b0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 758
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 795
    :cond_6
    :goto_6
    return-object p0

    .line 759
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 760
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeThumbnail(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 762
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOwnerObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 763
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 765
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 766
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 768
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 769
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setPhotoId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 771
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasIsVideo()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 772
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getIsVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setIsVideo(Z)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 774
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 775
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 777
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOriginalMediaPlayerUrl()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 778
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaPlayerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOriginalMediaPlayerUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 780
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOriginalMediaContainerUrl()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 781
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaContainerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOriginalMediaContainerUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 783
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOriginalLightboxPhotoId()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 784
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalLightboxPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOriginalLightboxPhotoId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 786
    :cond_7c
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOriginalContentUrl()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 787
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOriginalContentUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 789
    :cond_89
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 790
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    .line 792
    :cond_96
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasOnepickMediaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 793
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOnepickMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->setOnepickMediaId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    goto/16 :goto_6
.end method

.method public mergeThumbnail(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 920
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 922
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    invoke-static {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilder(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->buildPartial()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 928
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 929
    return-object p0

    .line 925
    :cond_26
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    goto :goto_1f
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 990
    if-nez p1, :cond_8

    .line 991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 993
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 994
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->albumId_:Ljava/lang/Object;

    .line 996
    return-object p0
.end method

.method public setIsVideo(Z)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1055
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1056
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->isVideo_:Z

    .line 1058
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1263
    if-nez p1, :cond_8

    .line 1264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1266
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1267
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->name_:Ljava/lang/Object;

    .line 1269
    return-object p0
.end method

.method public setOnepickMediaId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1299
    if-nez p1, :cond_8

    .line 1300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1302
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1303
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->onepickMediaId_:Ljava/lang/Object;

    .line 1305
    return-object p0
.end method

.method public setOriginalContentUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1227
    if-nez p1, :cond_8

    .line 1228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1230
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1231
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalContentUrl_:Ljava/lang/Object;

    .line 1233
    return-object p0
.end method

.method public setOriginalLightboxPhotoId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1191
    if-nez p1, :cond_8

    .line 1192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1194
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1195
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 1197
    return-object p0
.end method

.method public setOriginalMediaContainerUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1155
    if-nez p1, :cond_8

    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1158
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1159
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 1161
    return-object p0
.end method

.method public setOriginalMediaPlayerUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1119
    if-nez p1, :cond_8

    .line 1120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1122
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1123
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 1125
    return-object p0
.end method

.method public setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 954
    if-nez p1, :cond_8

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 958
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 960
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1026
    if-nez p1, :cond_8

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1030
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->photoId_:Ljava/lang/Object;

    .line 1032
    return-object p0
.end method

.method public setThumbnail(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 904
    if-nez p1, :cond_8

    .line 905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 907
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 909
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 910
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1083
    if-nez p1, :cond_8

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->bitField0_:I

    .line 1087
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->url_:Ljava/lang/Object;

    .line 1089
    return-object p0
.end method
