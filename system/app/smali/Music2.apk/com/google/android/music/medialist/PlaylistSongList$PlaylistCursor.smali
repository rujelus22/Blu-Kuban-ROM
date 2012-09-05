.class Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
.super Lcom/google/android/music/medialist/MediaList$MediaCursor;
.source "PlaylistSongList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/PlaylistSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistCursor"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mId:J

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;J)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    .line 119
    iput-wide p3, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    .line 120
    iput-object p2, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    .line 122
    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .registers 11
    .parameter "from"
    .parameter "to"

    .prologue
    .line 127
    if-eq p1, p2, :cond_2f

    .line 128
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 130
    .local v7, colidx:I
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 131
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 133
    .local v3, itemToMoveId:J
    const-wide/16 v5, 0x0

    .line 134
    .local v5, desiredPreviousItemId:J
    if-lez p2, :cond_28

    .line 135
    if-le p1, p2, :cond_1d

    .line 136
    add-int/lit8 p2, p2, -0x1

    .line 138
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 139
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 141
    :cond_28
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/MusicContent$Playlists;->movePlaylistItem(Landroid/content/ContentResolver;JJJ)V

    .line 144
    .end local v3           #itemToMoveId:J
    .end local v5           #desiredPreviousItemId:J
    .end local v7           #colidx:I
    :cond_2f
    return-void
.end method

.method public removeItem(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, colidx:I
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 151
    .local v1, itemId:J
    iget-wide v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 152
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    return-void
.end method
