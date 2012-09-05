.class public Lcom/google/android/music/medialist/SelectedSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "SelectedSongList.java"


# instance fields
.field private final mMusicIds:[J

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[J)V
    .registers 4
    .parameter "name"
    .parameter "musicIds"

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 32
    iput-object p2, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    .line 33
    iput-object p1, p0, Lcom/google/android/music/medialist/SelectedSongList;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 5
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemsToPlayList(Landroid/content/ContentResolver;J[J)I

    move-result v0

    return v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/medialist/SelectedSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    invoke-static {v2}, Lcom/google/android/music/medialist/SelectedSongList;->encodeArg([J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getSelectedAudioUri([J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 48
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    array-length v0, v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList;->mMusicIds:[J

    aget-wide v3, v0, v2

    :goto_b
    iget-object v7, p0, Lcom/google/android/music/medialist/SelectedSongList;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_16
    const-wide/16 v3, 0x1

    goto :goto_b
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 81
    const v0, 0x7f04004c

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for SelectedSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
