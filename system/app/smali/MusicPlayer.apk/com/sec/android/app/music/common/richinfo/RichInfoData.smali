.class public Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;
    }
.end annotation


# instance fields
.field public albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

.field public performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

.field public trackInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->trackInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    .line 21
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    .line 22
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    .line 23
    return-void
.end method
