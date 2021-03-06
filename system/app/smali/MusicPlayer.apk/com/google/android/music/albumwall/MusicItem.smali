.class public Lcom/google/android/music/albumwall/MusicItem;
.super Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
.source "MusicItem.java"


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field private mArtistSort:Ljava/lang/String;

.field private mMainLabel:Ljava/lang/String;

.field private mOverlayLabel:Ljava/lang/String;

.field private mPlaylistType:I

.field private mSubLabel:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 107
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-nez v2, :cond_6

    .line 111
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 110
    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    .line 111
    .local v0, o:Lcom/google/android/music/albumwall/MusicItem;
    iget v2, v0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    iget v3, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mAlbumId:J

    return-wide v0
.end method

.method public getArtistId()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistId:J

    return-wide v0
.end method

.method public getArtistSort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistSort:Ljava/lang/String;

    return-object v0
.end method

.method public getMainLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mOverlayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistType()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mPlaylistType:I

    return v0
.end method

.method public getSubLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isItemAllSongs()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 34
    iget v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 37
    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setAlbumId(J)V
    .registers 3
    .parameter "albumId"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mAlbumId:J

    .line 59
    return-void
.end method

.method public setArtistId(J)V
    .registers 3
    .parameter "artistId"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistId:J

    .line 67
    return-void
.end method

.method public setArtistSort(Ljava/lang/String;)V
    .registers 2
    .parameter "artistSort"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistSort:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMainLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "mainLabel"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOverlayLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "overlayLabel"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mOverlayLabel:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPlaylistType(I)V
    .registers 2
    .parameter "playlistType"

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mPlaylistType:I

    .line 51
    return-void
.end method

.method public setSubLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "subLabel"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getOverlayLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
