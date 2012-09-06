.class Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
.super Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistMode"
.end annotation


# instance fields
.field public id:J

.field public mainLabel:Ljava/lang/String;

.field public style:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$Mode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistMode<id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainLabel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
