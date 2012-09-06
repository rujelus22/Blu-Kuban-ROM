.class public Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
.super Ljava/lang/Object;
.source "NowPlayingRemoteViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/NowPlayingRemoteViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private mAlbumArtHeight:I

.field private mAlbumArtWidth:I

.field private mElements:I

.field private mLayoutId:I

.field private mVisibleElements:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x3c

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    .line 389
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    .line 391
    iput v1, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtWidth:I

    .line 392
    iput v1, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtHeight:I

    return-void
.end method


# virtual methods
.method public addElements(I)V
    .registers 3
    .parameter "elements"

    .prologue
    .line 419
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    .line 420
    return-void
.end method

.method public getAlbumArtHeight()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtHeight:I

    return v0
.end method

.method public getAlbumArtWidth()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtWidth:I

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mLayoutId:I

    return v0
.end method

.method public hasAlbumArt()Z
    .registers 2

    .prologue
    .line 471
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasAlbumArtist()Z
    .registers 2

    .prologue
    .line 487
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasAlbumName()Z
    .registers 2

    .prologue
    .line 479
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasArtistName()Z
    .registers 2

    .prologue
    .line 483
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasElement(I)Z
    .registers 3
    .parameter "element"

    .prologue
    .line 443
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasNextButton()Z
    .registers 2

    .prologue
    .line 455
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasPlayPauseButton()Z
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasPreviousButton()Z
    .registers 2

    .prologue
    .line 459
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasRatings()Z
    .registers 2

    .prologue
    .line 491
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hasTrackName()Z
    .registers 2

    .prologue
    .line 475
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasElement(I)Z

    move-result v0

    return v0
.end method

.method public hideElements(I)V
    .registers 4
    .parameter "elements"

    .prologue
    .line 431
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    .line 432
    return-void
.end method

.method public isAlbumArtVisible()Z
    .registers 2

    .prologue
    .line 527
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isElementVisible(I)Z

    move-result v0

    return v0
.end method

.method public isElementVisible(I)Z
    .registers 3
    .parameter "element"

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isNextVisible()Z
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isElementVisible(I)Z

    move-result v0

    return v0
.end method

.method public isPreviousVisible()Z
    .registers 2

    .prologue
    .line 511
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isElementVisible(I)Z

    move-result v0

    return v0
.end method

.method public isRatingsVisible()Z
    .registers 2

    .prologue
    .line 523
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isElementVisible(I)Z

    move-result v0

    return v0
.end method

.method public removeElements(I)V
    .registers 4
    .parameter "elements"

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mElements:I

    .line 424
    return-void
.end method

.method public setAlbumArtHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 407
    iput p1, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtHeight:I

    .line 408
    return-void
.end method

.method public setAlbumArtWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 415
    iput p1, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mAlbumArtWidth:I

    .line 416
    return-void
.end method

.method public setElement(IZ)V
    .registers 3
    .parameter "element"
    .parameter "value"

    .prologue
    .line 435
    if-eqz p2, :cond_6

    .line 436
    invoke-virtual {p0, p1}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->addElements(I)V

    .line 440
    :goto_5
    return-void

    .line 438
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->removeElements(I)V

    goto :goto_5
.end method

.method public setLayoutId(I)V
    .registers 2
    .parameter "layoutId"

    .prologue
    .line 395
    iput p1, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mLayoutId:I

    .line 396
    return-void
.end method

.method public showElements(I)V
    .registers 3
    .parameter "elements"

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->mVisibleElements:I

    .line 428
    return-void
.end method
