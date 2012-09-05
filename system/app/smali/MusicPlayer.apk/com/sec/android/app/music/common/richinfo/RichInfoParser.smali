.class public Lcom/sec/android/app/music/common/richinfo/RichInfoParser;
.super Ljava/lang/Object;
.source "RichInfoParser.java"


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

.field private static mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

.field private static mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

.field private static mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

.field private static mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

.field private static mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

.field private static mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

.field private static mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

.field private static mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field private static mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

.field private static mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

.field private static mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 854
    return-void
.end method

.method private static parseEndTag(Ljava/lang/String;)V
    .registers 4
    .parameter "current"

    .prologue
    const/4 v2, 0x0

    .line 525
    const-string v0, "/SM_RichInfo/Track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 526
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_15

    .line 527
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->trackInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    .line 528
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    .line 631
    :cond_15
    :goto_15
    return-void

    .line 530
    :cond_16
    const-string v0, "/SM_RichInfo/Track/Composers/Composer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 531
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_15

    .line 532
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->composers:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto :goto_15

    .line 535
    :cond_32
    const-string v0, "/SM_RichInfo/Track/Performers/PerformerSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 536
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 537
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->performers:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto :goto_15

    .line 540
    :cond_4a
    const-string v0, "/SM_RichInfo/Album"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 541
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    if-eqz v0, :cond_15

    .line 542
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    .line 543
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    goto :goto_15

    .line 545
    :cond_5f
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 546
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_15

    .line 547
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->albumSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    .line 548
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto :goto_15

    .line 550
    :cond_74
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo/Artwork"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 551
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    if-eqz v0, :cond_15

    .line 552
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 553
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    goto :goto_15

    .line 555
    :cond_89
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo/Artist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 556
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 557
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    .line 558
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_15

    .line 560
    :cond_9f
    const-string v0, "/SM_RichInfo/Album/Releases/Release"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 561
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    if-eqz v0, :cond_15

    .line 562
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->releases:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    goto/16 :goto_15

    .line 565
    :cond_b8
    const-string v0, "/SM_RichInfo/Album/Credits/Credit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 566
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    if-eqz v0, :cond_15

    .line 567
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    goto/16 :goto_15

    .line 574
    :cond_d1
    const-string v0, "/SM_RichInfo/Album/Discs/Disc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 575
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    if-eqz v0, :cond_15

    .line 576
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    goto/16 :goto_15

    .line 579
    :cond_ea
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 580
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_15

    .line 581
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->tracks:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    goto/16 :goto_15

    .line 584
    :cond_107
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Composers/Composer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 585
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 586
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->composers:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_15

    .line 589
    :cond_124
    const-string v0, "/SM_RichInfo/Album/Styles/Style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 590
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    if-eqz v0, :cond_15

    .line 591
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->styles:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    goto/16 :goto_15

    .line 594
    :cond_13d
    const-string v0, "/SM_RichInfo/Album/Tones/Tone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 595
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    if-eqz v0, :cond_15

    .line 596
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->tones:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    goto/16 :goto_15

    .line 599
    :cond_156
    const-string v0, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 600
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_15

    .line 601
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto/16 :goto_15

    .line 604
    :cond_16f
    const-string v0, "/SM_RichInfo/Performer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 605
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    if-eqz v0, :cond_15

    .line 606
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    .line 607
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    goto/16 :goto_15

    .line 609
    :cond_185
    const-string v0, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 610
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_15

    .line 611
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto/16 :goto_15

    .line 614
    :cond_19e
    const-string v0, "/SM_RichInfo/Performer/SimilarArtists/SimilarArtist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 615
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 616
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->similarArtists:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_15

    .line 619
    :cond_1b7
    const-string v0, "/SM_RichInfo/Performer/InfluenceArtists/InfluenceArtist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 620
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 621
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->influenceArtists:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_15

    .line 624
    :cond_1d0
    const-string v0, "/SM_RichInfo/Performer/Followers/Follower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 625
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_15

    .line 626
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->followers:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_15
.end method

.method private static parseStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "current"
    .parameter "value"

    .prologue
    .line 430
    const-string v0, "/SM_RichInfo/Track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 431
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    .line 517
    :cond_14
    :goto_14
    return-void

    .line 432
    :cond_15
    const-string v0, "/SM_RichInfo/Track/Composers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 433
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->composers:Ljava/util/ArrayList;

    goto :goto_14

    .line 434
    :cond_27
    const-string v0, "/SM_RichInfo/Track/Composers/Composer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 435
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto :goto_14

    .line 436
    :cond_3c
    const-string v0, "/SM_RichInfo/Track/Performers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 437
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->performers:Ljava/util/ArrayList;

    goto :goto_14

    .line 438
    :cond_4e
    const-string v0, "/SM_RichInfo/Track/Performers/PerformerSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 439
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto :goto_14

    .line 440
    :cond_63
    const-string v0, "/SM_RichInfo/Album"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 441
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    goto :goto_14

    .line 442
    :cond_78
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 443
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto :goto_14

    .line 444
    :cond_8d
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo/Artwork@uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 445
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 446
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    goto/16 :goto_14

    .line 447
    :cond_a7
    const-string v0, "/SM_RichInfo/Album/AlbumSimpleInfo/Artist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 448
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 449
    :cond_bd
    const-string v0, "/SM_RichInfo/Album/Releases"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 450
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->releases:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 451
    :cond_d0
    const-string v0, "/SM_RichInfo/Album/Releases/Release"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 452
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    goto/16 :goto_14

    .line 453
    :cond_e6
    const-string v0, "/SM_RichInfo/Album/Credits"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 454
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 455
    :cond_f9
    const-string v0, "/SM_RichInfo/Album/Credits/Credit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 456
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    goto/16 :goto_14

    .line 457
    :cond_10f
    const-string v0, "/SM_RichInfo/Album/Credits/Credit/PerformerSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 458
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->PerformerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 459
    :cond_127
    const-string v0, "/SM_RichInfo/Album/Discs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 460
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 461
    :cond_13a
    const-string v0, "/SM_RichInfo/Album/Discs/Disc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 462
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    goto/16 :goto_14

    .line 463
    :cond_150
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 464
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->tracks:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 465
    :cond_163
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 466
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    goto/16 :goto_14

    .line 467
    :cond_179
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Composers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 468
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->composers:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 469
    :cond_18c
    const-string v0, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Composers/Composer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 470
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 471
    :cond_1a2
    const-string v0, "/SM_RichInfo/Album/Styles"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 472
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->styles:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 473
    :cond_1b5
    const-string v0, "/SM_RichInfo/Album/Styles/Style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 474
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    goto/16 :goto_14

    .line 475
    :cond_1cb
    const-string v0, "/SM_RichInfo/Album/Tones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 476
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->tones:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 477
    :cond_1de
    const-string v0, "/SM_RichInfo/Album/Tones/Tone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 478
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    goto/16 :goto_14

    .line 479
    :cond_1f4
    const-string v0, "/SM_RichInfo/Album/SimilarAlbums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 480
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 481
    :cond_207
    const-string v0, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 482
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto/16 :goto_14

    .line 483
    :cond_21d
    const-string v0, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Artist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_235

    .line 484
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 488
    :cond_235
    const-string v0, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Artwork@uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 489
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 490
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    goto/16 :goto_14

    .line 491
    :cond_253
    const-string v0, "/SM_RichInfo/Performer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 492
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    goto/16 :goto_14

    .line 493
    :cond_269
    const-string v0, "/SM_RichInfo/Performer/PerformerSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 494
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->performerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 495
    :cond_281
    const-string v0, "/SM_RichInfo/Performer/Albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 496
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 497
    :cond_294
    const-string v0, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 498
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    goto/16 :goto_14

    .line 499
    :cond_2aa
    const-string v0, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Artist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 500
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 501
    :cond_2c2
    const-string v0, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Artwork@uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 502
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 503
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    goto/16 :goto_14

    .line 504
    :cond_2e0
    const-string v0, "/SM_RichInfo/Performer/SimilarArtists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 505
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->similarArtists:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 506
    :cond_2f3
    const-string v0, "/SM_RichInfo/Performer/SimilarArtists/SimilarArtist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_309

    .line 507
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 508
    :cond_309
    const-string v0, "/SM_RichInfo/Performer/InfluenceArtists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31c

    .line 509
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->influenceArtists:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 510
    :cond_31c
    const-string v0, "/SM_RichInfo/Performer/InfluenceArtists/InfluenceArtist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 511
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14

    .line 512
    :cond_332
    const-string v0, "/SM_RichInfo/Performer/Followers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 513
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->followers:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 514
    :cond_345
    const-string v0, "/SM_RichInfo/Performer/Followers/Follower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 515
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    goto/16 :goto_14
.end method

.method private static parseTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "current"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    const-string v2, "/SM_RichInfo/Track/TrackID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 642
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->trackId:Ljava/lang/String;

    .line 846
    :cond_e
    :goto_e
    return-void

    .line 643
    :cond_f
    const-string v2, "/SM_RichInfo/Track/Title"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 644
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->title:Ljava/lang/String;

    goto :goto_e

    .line 645
    :cond_1c
    const-string v2, "/SM_RichInfo/Track/GenreDesc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 646
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->genreDesc:Ljava/lang/String;

    goto :goto_e

    .line 647
    :cond_29
    const-string v2, "/SM_RichInfo/Track/PlayLength"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 649
    :try_start_31
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->playLength:I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_e

    .line 650
    :catch_3a
    move-exception v0

    goto :goto_e

    .line 652
    :cond_3c
    const-string v2, "/SM_RichInfo/Track/IsPick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 653
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_4e
    iput-boolean v0, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->isPick:Z

    goto :goto_e

    :cond_51
    move v0, v1

    goto :goto_4e

    .line 654
    :cond_53
    const-string v2, "/SM_RichInfo/Track/ISRC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 655
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->isrc:Ljava/lang/String;

    goto :goto_e

    .line 656
    :cond_60
    const-string v2, "/SM_RichInfo/Track/Composers/Composer/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 657
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 658
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto :goto_e

    .line 659
    :cond_71
    const-string v2, "/SM_RichInfo/Track/Composers/Composer/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 660
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 661
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto :goto_e

    .line 662
    :cond_82
    const-string v2, "/SM_RichInfo/Track/Performers/PerformerSimpleInfo/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 663
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 664
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 665
    :cond_94
    const-string v2, "/SM_RichInfo/Track/Performers/PerformerSimpleInfo/NAME"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 666
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 667
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 668
    :cond_a6
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/AlbumID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 669
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 670
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->albumId:Ljava/lang/String;

    goto/16 :goto_e

    .line 671
    :cond_b8
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/Title"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 672
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 673
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->title:Ljava/lang/String;

    goto/16 :goto_e

    .line 674
    :cond_ca
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/Rating"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 675
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 677
    :try_start_d6
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->rating:I
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d6 .. :try_end_de} :catch_e0

    goto/16 :goto_e

    .line 678
    :catch_e0
    move-exception v0

    goto/16 :goto_e

    .line 681
    :cond_e3
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/Artist/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 682
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 683
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 684
    :cond_f5
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/Artist/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 685
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 686
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 687
    :cond_107
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/IsPick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 688
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v2, :cond_e

    .line 689
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    :goto_11d
    iput-boolean v0, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->isPick:Z

    goto/16 :goto_e

    :cond_121
    move v0, v1

    goto :goto_11d

    .line 690
    :cond_123
    const-string v2, "/SM_RichInfo/Album/AlbumSimpleInfo/Artwork"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 691
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    if-eqz v0, :cond_e

    .line 692
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtworkInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    goto/16 :goto_e

    .line 693
    :cond_135
    const-string v2, "/SM_RichInfo/Album/GenreDesc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 694
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->genreDesc:Ljava/lang/String;

    goto/16 :goto_e

    .line 695
    :cond_143
    const-string v2, "/SM_RichInfo/Album/Review"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 696
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->review:Ljava/lang/String;

    goto/16 :goto_e

    .line 697
    :cond_151
    const-string v2, "/SM_RichInfo/Album/Date"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 698
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbum:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->date:Ljava/lang/String;

    goto/16 :goto_e

    .line 699
    :cond_15f
    const-string v2, "/SM_RichInfo/Album/Releases/Release/Media"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 700
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    if-eqz v0, :cond_e

    .line 701
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;->media:Ljava/lang/String;

    goto/16 :goto_e

    .line 702
    :cond_171
    const-string v2, "/SM_RichInfo/Album/Releases/Release/Label"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 703
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    if-eqz v0, :cond_e

    .line 704
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mReleaseInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;->label:Ljava/lang/String;

    goto/16 :goto_e

    .line 705
    :cond_183
    const-string v2, "/SM_RichInfo/Album/Credits/Credit/CreditID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 706
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    if-eqz v0, :cond_e

    .line 707
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->creditId:Ljava/lang/String;

    goto/16 :goto_e

    .line 708
    :cond_195
    const-string v2, "/SM_RichInfo/Album/Credits/Credit/Role"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 709
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    if-eqz v0, :cond_e

    .line 710
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->role:Ljava/lang/String;

    goto/16 :goto_e

    .line 711
    :cond_1a7
    const-string v2, "/SM_RichInfo/Album/Credits/Credit/PerformerSimpleInfo/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 712
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    if-eqz v0, :cond_e

    .line 713
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->PerformerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 714
    :cond_1bb
    const-string v2, "/SM_RichInfo/Album/Credits/Credit/PerformerSimpleInfo/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 715
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    if-eqz v0, :cond_e

    .line 716
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mCredit:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->PerformerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 717
    :cond_1cf
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/TotalRunningTime"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e8

    .line 718
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    if-eqz v0, :cond_e

    .line 720
    :try_start_1db
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->totalRunningTime:I
    :try_end_1e3
    .catch Ljava/lang/NumberFormatException; {:try_start_1db .. :try_end_1e3} :catch_1e5

    goto/16 :goto_e

    .line 721
    :catch_1e5
    move-exception v0

    goto/16 :goto_e

    .line 724
    :cond_1e8
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/CurrentMediaNumber"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_201

    .line 725
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    if-eqz v0, :cond_e

    .line 727
    :try_start_1f4
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mDisc:Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->currentMediaNumber:I
    :try_end_1fc
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_1fc} :catch_1fe

    goto/16 :goto_e

    .line 728
    :catch_1fe
    move-exception v0

    goto/16 :goto_e

    .line 732
    :cond_201
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/TrackID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_213

    .line 733
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_e

    .line 734
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->trackId:Ljava/lang/String;

    goto/16 :goto_e

    .line 735
    :cond_213
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Title"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 736
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_e

    .line 737
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->title:Ljava/lang/String;

    goto/16 :goto_e

    .line 738
    :cond_225
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/GenreDesc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 739
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_e

    .line 740
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->genreDesc:Ljava/lang/String;

    goto/16 :goto_e

    .line 741
    :cond_237
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/PlayLength"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_250

    .line 742
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_e

    .line 744
    :try_start_243
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->playLength:I
    :try_end_24b
    .catch Ljava/lang/NumberFormatException; {:try_start_243 .. :try_end_24b} :catch_24d

    goto/16 :goto_e

    .line 745
    :catch_24d
    move-exception v0

    goto/16 :goto_e

    .line 748
    :cond_250
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/IsPick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 749
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v2, :cond_e

    .line 750
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26a

    :goto_266
    iput-boolean v0, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->isPick:Z

    goto/16 :goto_e

    :cond_26a
    move v0, v1

    goto :goto_266

    .line 751
    :cond_26c
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/ISRC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27e

    .line 752
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    if-eqz v0, :cond_e

    .line 753
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mTrack:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->isrc:Ljava/lang/String;

    goto/16 :goto_e

    .line 754
    :cond_27e
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Composers/Composer/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 755
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 756
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 757
    :cond_290
    const-string v2, "/SM_RichInfo/Album/Discs/Disc/Tracks/Track/Composers/Composer/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a2

    .line 758
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 759
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 760
    :cond_2a2
    const-string v2, "/SM_RichInfo/Album/Styles/Style/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b4

    .line 761
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    if-eqz v0, :cond_e

    .line 762
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;->styleId:Ljava/lang/String;

    goto/16 :goto_e

    .line 763
    :cond_2b4
    const-string v2, "/SM_RichInfo/Album/Styles/Style/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 764
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    if-eqz v0, :cond_e

    .line 765
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mStyleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 766
    :cond_2c6
    const-string v2, "/SM_RichInfo/Album/Tones/Tone/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d8

    .line 767
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    if-eqz v0, :cond_e

    .line 768
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;->toneId:Ljava/lang/String;

    goto/16 :goto_e

    .line 769
    :cond_2d8
    const-string v2, "/SM_RichInfo/Album/Tones/Tone/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ea

    .line 770
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    if-eqz v0, :cond_e

    .line 771
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mToneInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 772
    :cond_2ea
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/AlbumID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2fc

    .line 773
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 774
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->albumId:Ljava/lang/String;

    goto/16 :goto_e

    .line 775
    :cond_2fc
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Title"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30e

    .line 776
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 777
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->title:Ljava/lang/String;

    goto/16 :goto_e

    .line 778
    :cond_30e
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Rating"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_327

    .line 779
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 781
    :try_start_31a
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->rating:I
    :try_end_322
    .catch Ljava/lang/NumberFormatException; {:try_start_31a .. :try_end_322} :catch_324

    goto/16 :goto_e

    .line 782
    :catch_324
    move-exception v0

    goto/16 :goto_e

    .line 785
    :cond_327
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Artist/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33b

    .line 786
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 787
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 788
    :cond_33b
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Artist/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 789
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 790
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 791
    :cond_34f
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/IsPick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36b

    .line 792
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v2, :cond_e

    .line 793
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_369

    :goto_365
    iput-boolean v0, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->isPick:Z

    goto/16 :goto_e

    :cond_369
    move v0, v1

    goto :goto_365

    .line 794
    :cond_36b
    const-string v2, "/SM_RichInfo/Album/SimilarAlbums/SimilarAlbum/Artwork"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 795
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 796
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    goto/16 :goto_e

    .line 797
    :cond_37f
    const-string v2, "/SM_RichInfo/Performer/PerformerSimpleInfo/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38f

    .line 798
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->performerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 799
    :cond_38f
    const-string v2, "/SM_RichInfo/Performer/PerformerSimpleInfo/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39f

    .line 800
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->performerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 801
    :cond_39f
    const-string v2, "/SM_RichInfo/Performer/Biography"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ad

    .line 802
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mPerformerInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->biography:Ljava/lang/String;

    goto/16 :goto_e

    .line 803
    :cond_3ad
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/AlbumID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3bf

    .line 804
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 805
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->albumId:Ljava/lang/String;

    goto/16 :goto_e

    .line 806
    :cond_3bf
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Title"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d1

    .line 807
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 808
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->title:Ljava/lang/String;

    goto/16 :goto_e

    .line 809
    :cond_3d1
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Rating"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ea

    .line 810
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 812
    :try_start_3dd
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->rating:I
    :try_end_3e5
    .catch Ljava/lang/NumberFormatException; {:try_start_3dd .. :try_end_3e5} :catch_3e7

    goto/16 :goto_e

    .line 813
    :catch_3e7
    move-exception v0

    goto/16 :goto_e

    .line 815
    :cond_3ea
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Artist/ID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3fe

    .line 816
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 817
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 818
    :cond_3fe
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Artist/Name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_412

    .line 819
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 820
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 821
    :cond_412
    const-string v2, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/IsPick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42e

    .line 822
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v2, :cond_e

    .line 823
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42c

    :goto_428
    iput-boolean v0, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->isPick:Z

    goto/16 :goto_e

    :cond_42c
    move v0, v1

    goto :goto_428

    .line 824
    :cond_42e
    const-string v0, "/SM_RichInfo/Performer/Albums/AlbumSimpleInfo/Artwork"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_442

    .line 825
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v0, :cond_e

    .line 826
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mAlbumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    goto/16 :goto_e

    .line 827
    :cond_442
    const-string v0, "/SM_RichInfo/Performer/SimilarArtists/SimilarArtist/ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_454

    .line 828
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 829
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 830
    :cond_454
    const-string v0, "/SM_RichInfo/Performer/SimilarArtists/SimilarArtist/Name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_466

    .line 831
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 832
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 833
    :cond_466
    const-string v0, "/SM_RichInfo/Performer/InfluenceArtists/InfluenceArtist/ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_478

    .line 834
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 835
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 836
    :cond_478
    const-string v0, "/SM_RichInfo/Performer/InfluenceArtists/InfluenceArtist/Name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48a

    .line 837
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 838
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 839
    :cond_48a
    const-string v0, "/SM_RichInfo/Performer/Followers/Follower/ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49c

    .line 840
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 841
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->id:Ljava/lang/String;

    goto/16 :goto_e

    .line 842
    :cond_49c
    const-string v0, "/SM_RichInfo/Performer/Followers/Follower/Name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 843
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    if-eqz v0, :cond_e

    .line 844
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mArtistInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iput-object p1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    goto/16 :goto_e
.end method

.method private static parseXML(Ljava/io/InputStream;)Lcom/sec/android/app/music/common/richinfo/RichInfoData;
    .registers 11
    .parameter "input"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 321
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 322
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 323
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 324
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF8"

    invoke-interface {v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, current:Ljava/lang/StringBuffer;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1d} :catch_74
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1d} :catch_9f

    move-result v2

    .line 330
    .local v2, eventType:I
    :goto_1e
    if-eq v2, v9, :cond_ae

    .line 331
    packed-switch v2, :pswitch_data_b2

    .line 382
    :cond_23
    :goto_23
    :pswitch_23
    :try_start_23
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_a4
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_26} :catch_9f

    move-result v2

    goto :goto_1e

    .line 341
    :pswitch_28
    :try_start_28
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-eqz v7, :cond_6a

    .line 350
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v4, v7, :cond_23

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parseStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 361
    .end local v4           #i:I
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parseStartTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_73} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_73} :catch_9f

    goto :goto_23

    .line 388
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_74
    move-exception v1

    .line 389
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 398
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_78
    return-object v6

    .line 365
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_79
    :try_start_79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parseEndTag(Ljava/lang/String;)V

    .line 366
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_8d} :catch_74
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8d} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_8d} :catch_9f

    goto :goto_23

    .line 391
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_8e
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 376
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_93
    :try_start_93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parseTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_9e} :catch_74
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9e} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_9e} :catch_9f

    goto :goto_23

    .line 394
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_9f
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_78

    .line 383
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_a4
    move-exception v1

    .line 384
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a5
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 385
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_ab} :catch_74
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_a5 .. :try_end_ab} :catch_9f

    move-result v2

    .line 386
    goto/16 :goto_1e

    .line 398
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_ae
    sget-object v6, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    goto :goto_78

    .line 331
    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_28
        :pswitch_79
        :pswitch_93
    .end packed-switch
.end method

.method public static parsingRichInfoXML(Ljava/io/InputStream;)Lcom/sec/android/app/music/common/richinfo/RichInfoData;
    .registers 2
    .parameter "input"

    .prologue
    .line 314
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct {v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoData;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->mRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    .line 315
    invoke-static {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parseXML(Ljava/io/InputStream;)Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    move-result-object v0

    return-object v0
.end method
