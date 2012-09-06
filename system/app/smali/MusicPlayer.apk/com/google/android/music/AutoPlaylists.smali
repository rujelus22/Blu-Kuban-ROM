.class public abstract Lcom/google/android/music/AutoPlaylists;
.super Ljava/lang/Object;
.source "AutoPlaylists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static final getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;
    .registers 7
    .parameter "autoPlaylistId"
    .parameter "preferenceSort"
    .parameter "prefs"

    .prologue
    const/4 v0, -0x1

    .line 56
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_14

    .line 57
    new-instance v1, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    if-eqz p2, :cond_f

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v0

    :cond_f
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    move-object v0, v1

    .line 65
    :goto_13
    return-object v0

    .line 59
    :cond_14
    const-wide/16 v1, -0x2

    cmp-long v1, p0, v1

    if-nez v1, :cond_27

    .line 60
    new-instance v1, Lcom/google/android/music/medialist/AllSongsList;

    if-eqz p2, :cond_22

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getAllSongsSortOrder()I

    move-result v0

    :cond_22
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    move-object v0, v1

    goto :goto_13

    .line 61
    :cond_27
    const-wide/16 v1, -0x3

    cmp-long v1, p0, v1

    if-nez v1, :cond_3e

    .line 62
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

    .line 64
    :cond_3e
    const-wide/16 v1, -0x4

    cmp-long v1, p0, v1

    if-nez v1, :cond_51

    .line 65
    new-instance v1, Lcom/google/android/music/medialist/ThumbsUpList;

    if-eqz p2, :cond_4c

    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->getThumbsUpSongsSortOrder()I

    move-result v0

    :cond_4c
    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/ThumbsUpList;-><init>(I)V

    move-object v0, v1

    goto :goto_13

    .line 67
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

.method public static getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;Z)[J
    .registers 11
    .parameter "prefs"
    .parameter "context"
    .parameter "includeAllTracksList"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/android/music/AutoPlaylists;->showLastAddedSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z

    move-result v3

    .line 83
    .local v3, includeLastAddedSongs:Z
    invoke-static {p0, p1}, Lcom/google/android/music/AutoPlaylists;->showStoreSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z

    move-result v4

    .line 84
    .local v4, includeStoreSongs:Z
    invoke-static {p0, p1}, Lcom/google/android/music/AutoPlaylists;->showThumbsSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z

    move-result v5

    .line 85
    .local v5, includeThumbsUp:Z
    const/4 v0, 0x0

    .line 86
    .local v0, count:I
    if-eqz v3, :cond_11

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_11
    if-eqz p2, :cond_15

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_15
    if-eqz v4, :cond_19

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    :cond_19
    if-eqz v5, :cond_1d

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 98
    :cond_1d
    new-array v2, v0, [J

    .line 99
    .local v2, ids:[J
    const/4 v0, 0x0

    .line 100
    if-eqz v5, :cond_45

    .line 101
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    const-wide/16 v6, -0x4

    aput-wide v6, v2, v0

    .line 103
    :goto_28
    if-eqz v3, :cond_31

    .line 104
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const-wide/16 v6, -0x1

    aput-wide v6, v2, v1

    move v1, v0

    .line 106
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_31
    if-eqz v4, :cond_3a

    .line 107
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const-wide/16 v6, -0x3

    aput-wide v6, v2, v1

    move v1, v0

    .line 109
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_3a
    if-eqz p2, :cond_43

    .line 110
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const-wide/16 v6, -0x2

    aput-wide v6, v2, v1

    .line 112
    :goto_42
    return-object v2

    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_43
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_42

    :cond_45
    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_28
.end method

.method public static isAutoPlaylistId(J)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 39
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

.method private static showLastAddedSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z
    .registers 3
    .parameter "prefs"
    .parameter "context"

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContent;->existsContent(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static showStoreSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z
    .registers 3
    .parameter "prefs"
    .parameter "context"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getStoreAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContent;->existsContent(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 125
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static showThumbsSongs(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;)Z
    .registers 3
    .parameter "prefs"
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContent;->existsContent(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
