.class public abstract Lcom/google/android/music/AutoPlaylists;
.super Ljava/lang/Object;
.source "AutoPlaylists.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;
    .registers 7
    .parameter "autoPlaylistId"
    .parameter "preferenceSort"
    .parameter "prefs"

    .prologue
    const/4 v0, -0x1

    .line 47
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_14

    .line 48
    new-instance v1, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    if-eqz p2, :cond_f

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v0

    :cond_f
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    move-object v0, v1

    .line 56
    :goto_13
    return-object v0

    .line 50
    :cond_14
    const-wide/16 v1, -0x2

    cmp-long v1, p0, v1

    if-nez v1, :cond_27

    .line 51
    new-instance v1, Lcom/google/android/music/medialist/AllSongsList;

    if-eqz p2, :cond_22

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getAllSongsSortOrder()I

    move-result v0

    :cond_22
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    move-object v0, v1

    goto :goto_13

    .line 52
    :cond_27
    const-wide/16 v1, -0x3

    cmp-long v1, p0, v1

    if-nez v1, :cond_3e

    .line 53
    new-instance v1, Lcom/google/android/music/medialist/StoreSongList;

    if-eqz p2, :cond_35

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreSongsSortOrder()I

    move-result v0

    :cond_35
    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/music/medialist/StoreSongList;-><init>(IZ)V

    move-object v0, v1

    goto :goto_13

    .line 55
    :cond_3e
    const-wide/16 v1, -0x4

    cmp-long v1, p0, v1

    if-nez v1, :cond_51

    .line 56
    new-instance v1, Lcom/google/android/music/medialist/ThumbsUpList;

    if-eqz p2, :cond_4c

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getThumbsUpSongsSortOrder()I

    move-result v0

    :cond_4c
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/ThumbsUpList;-><init>(I)V

    move-object v0, v1

    goto :goto_13

    .line 58
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected auto-playlist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;Z)[J
    .registers 10
    .parameter "prefs"
    .parameter "resolver"
    .parameter "includeAllTracksList"

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/google/android/music/AutoPlaylists;->showStoreSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;)Z

    move-result v3

    .line 74
    .local v3, includeStoreSongs:Z
    invoke-static {p0, p1}, Lcom/google/android/music/AutoPlaylists;->showThumbsSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;)Z

    move-result v4

    .line 75
    .local v4, includeThumbsUp:Z
    const/4 v0, 0x1

    .line 76
    .local v0, count:I
    if-eqz p2, :cond_d

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_d
    if-eqz v3, :cond_11

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_11
    if-eqz v4, :cond_15

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_15
    new-array v2, v0, [J

    .line 86
    .local v2, ids:[J
    const/4 v0, 0x0

    .line 87
    if-eqz v4, :cond_21

    .line 88
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    const-wide/16 v5, -0x4

    aput-wide v5, v2, v0

    move v0, v1

    .line 90
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_21
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .restart local v1       #count:I
    const-wide/16 v5, -0x1

    aput-wide v5, v2, v0

    .line 91
    if-eqz v3, :cond_30

    .line 92
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const-wide/16 v5, -0x3

    aput-wide v5, v2, v1

    move v1, v0

    .line 94
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_30
    if-eqz p2, :cond_39

    .line 95
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const-wide/16 v5, -0x2

    aput-wide v5, v2, v1

    .line 97
    :goto_38
    return-object v2

    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_39
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_38
.end method

.method public static isAutoPlaylistId(J)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 30
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-gtz v0, :cond_e

    const-wide/16 v0, -0x4

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static showStoreSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;)Z
    .registers 3
    .parameter "prefs"
    .parameter "resolver"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getStoreAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContent;->existsContent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    .line 110
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static showThumbsSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;)Z
    .registers 3
    .parameter "prefs"
    .parameter "resolver"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContent;->existsContent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
