.class public Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;
.super Lcom/google/android/music/MediaPlaybackLayout;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandscapeCompactMediaPlaybackLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 397
    return-void
.end method


# virtual methods
.method protected getExpandedAlbumSize()I
    .registers 5

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumMarginTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 402
    .local v0, albumMaxHeight:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumMarginRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 405
    .local v1, maxWidth:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v0

    .line 413
    .local v0, expandedAlbumSize:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVirtualSize(II)V

    .line 415
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->layoutArtUpperLeft(II)V

    .line 417
    invoke-super/range {p0 .. p5}, Lcom/google/android/music/MediaPlaybackLayout;->onLayout(ZIIII)V

    .line 418
    return-void
.end method
