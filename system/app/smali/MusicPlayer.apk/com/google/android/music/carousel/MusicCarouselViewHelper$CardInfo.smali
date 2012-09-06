.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardInfo"
.end annotation


# instance fields
.field mActiveDetailTexture:Z

.field mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

.field mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    .registers 2
    .parameter "record"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 266
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 270
    instance-of v1, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 271
    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 272
    .local v0, otherCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-virtual {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 274
    .end local v0           #otherCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method
