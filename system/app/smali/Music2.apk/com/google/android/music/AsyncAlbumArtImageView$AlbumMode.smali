.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
.super Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumMode"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public albumId:J

.field public artist:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$Mode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;-><init>()V

    return-void
.end method
