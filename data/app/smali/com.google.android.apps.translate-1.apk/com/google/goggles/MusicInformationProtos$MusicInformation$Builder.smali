.class public final Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MusicInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/MusicInformationProtos$MusicInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/MusicInformationProtos$MusicInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/MusicInformationProtos$MusicInformation;",
        "Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;",
        ">;",
        "Lcom/google/goggles/MusicInformationProtos$MusicInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Ljava/lang/Object;

.field private artist_:Ljava/lang/Object;

.field private artworkUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private googleMusicAlbumId_:Ljava/lang/Object;

.field private googleMusicTrackId_:Ljava/lang/Object;

.field private recordLabel_:Ljava/lang/Object;

.field private track_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 633
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 454
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->maybeForceBuilderInitialization()V

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 1

    .prologue
    .line 448
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->create()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 502
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 505
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 1

    .prologue
    .line 460
    new-instance v0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 458
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 493
    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 495
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->build()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 509
    new-instance v2, Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;-><init>(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;Lcom/google/goggles/MusicInformationProtos$1;)V

    .line 510
    iget v3, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 511
    const/4 v1, 0x0

    .line 512
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_63

    .line 515
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artist_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$302(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 517
    or-int/lit8 v0, v0, 0x2

    .line 519
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->track_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$402(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 521
    or-int/lit8 v0, v0, 0x4

    .line 523
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->album_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$502(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 525
    or-int/lit8 v0, v0, 0x8

    .line 527
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->artworkUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$602(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 529
    or-int/lit8 v0, v0, 0x10

    .line 531
    :cond_40
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicTrackId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$702(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 533
    or-int/lit8 v0, v0, 0x20

    .line 535
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->googleMusicAlbumId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$802(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 537
    or-int/lit8 v0, v0, 0x40

    .line 539
    :cond_5a
    iget-object v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->recordLabel_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$902(Lcom/google/goggles/MusicInformationProtos$MusicInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    #setter for: Lcom/google/goggles/MusicInformationProtos$MusicInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->access$1002(Lcom/google/goggles/MusicInformationProtos$MusicInformation;I)I

    .line 541
    return-object v2

    :cond_63
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 466
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 468
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 470
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 472
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 474
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 476
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 478
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clear()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clear()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAlbum()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 729
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 730
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 732
    return-object p0
.end method

.method public clearArtist()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 657
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 658
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 660
    return-object p0
.end method

.method public clearArtworkUrl()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 766
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 768
    return-object p0
.end method

.method public clearGoogleMusicAlbumId()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 837
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 838
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 840
    return-object p0
.end method

.method public clearGoogleMusicTrackId()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 801
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 802
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 804
    return-object p0
.end method

.method public clearRecordLabel()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 873
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 874
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getRecordLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 876
    return-object p0
.end method

.method public clearTrack()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 694
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getTrack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 696
    return-object p0
.end method

.method public clone()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3

    .prologue
    .line 483
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->create()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clone()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clone()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clone()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

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
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->clone()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 711
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 712
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 713
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 716
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getArtist()Ljava/lang/String;
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 639
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 640
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 641
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 644
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 747
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 748
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 749
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 752
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2

    .prologue
    .line 487
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleMusicAlbumId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 819
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 820
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 821
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 824
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getGoogleMusicTrackId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 783
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 784
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 785
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 788
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getRecordLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 855
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 856
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 857
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 860
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTrack()Ljava/lang/String;
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 675
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 676
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 677
    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 680
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 707
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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

.method public hasArtist()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 635
    iget v1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasArtworkUrl()Z
    .registers 3

    .prologue
    .line 743
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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

.method public hasGoogleMusicAlbumId()Z
    .registers 3

    .prologue
    .line 815
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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

.method public hasGoogleMusicTrackId()Z
    .registers 3

    .prologue
    .line 779
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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

.method public hasRecordLabel()Z
    .registers 3

    .prologue
    .line 851
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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

.method public hasTrack()Z
    .registers 3

    .prologue
    .line 671
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

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
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 545
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 567
    :cond_6
    :goto_6
    return-object p0

    .line 546
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasArtist()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 547
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setArtist(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 549
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasTrack()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 550
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setTrack(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 552
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 553
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setAlbum(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 555
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasArtworkUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 556
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setArtworkUrl(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 558
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasGoogleMusicTrackId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 559
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setGoogleMusicTrackId(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 561
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasGoogleMusicAlbumId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 562
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getGoogleMusicAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setGoogleMusicAlbumId(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 564
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->hasRecordLabel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 565
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getRecordLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->setRecordLabel(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 580
    sparse-switch v0, :sswitch_data_6a

    .line 585
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :sswitch_d
    return-object p0

    .line 592
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    goto :goto_0

    .line 597
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    goto :goto_0

    .line 602
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 603
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    goto :goto_0

    .line 607
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 608
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 612
    :sswitch_42
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 613
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    goto :goto_0

    .line 617
    :sswitch_4f
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 618
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    goto :goto_0

    .line 622
    :sswitch_5c
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 623
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 580
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_5c
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
    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 448
    check-cast p1, Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

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
    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 720
    if-nez p1, :cond_8

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 723
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 724
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 726
    return-object p0
.end method

.method setAlbum(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 735
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 736
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->album_:Ljava/lang/Object;

    .line 738
    return-void
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 648
    if-nez p1, :cond_8

    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 652
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 654
    return-object p0
.end method

.method setArtist(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 663
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 664
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artist_:Ljava/lang/Object;

    .line 666
    return-void
.end method

.method public setArtworkUrl(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 756
    if-nez p1, :cond_8

    .line 757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 759
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 760
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 762
    return-object p0
.end method

.method setArtworkUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 771
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 772
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->artworkUrl_:Ljava/lang/Object;

    .line 774
    return-void
.end method

.method public setGoogleMusicAlbumId(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 828
    if-nez p1, :cond_8

    .line 829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 831
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 832
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 834
    return-object p0
.end method

.method setGoogleMusicAlbumId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 843
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 844
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicAlbumId_:Ljava/lang/Object;

    .line 846
    return-void
.end method

.method public setGoogleMusicTrackId(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 792
    if-nez p1, :cond_8

    .line 793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 795
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 796
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 798
    return-object p0
.end method

.method setGoogleMusicTrackId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 807
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 808
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->googleMusicTrackId_:Ljava/lang/Object;

    .line 810
    return-void
.end method

.method public setRecordLabel(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 864
    if-nez p1, :cond_8

    .line 865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 867
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 868
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 870
    return-object p0
.end method

.method setRecordLabel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 879
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 880
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->recordLabel_:Ljava/lang/Object;

    .line 882
    return-void
.end method

.method public setTrack(Ljava/lang/String;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 684
    if-nez p1, :cond_8

    .line 685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 687
    :cond_8
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 688
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 690
    return-object p0
.end method

.method setTrack(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 699
    iget v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->bitField0_:I

    .line 700
    iput-object p1, p0, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->track_:Ljava/lang/Object;

    .line 702
    return-void
.end method
