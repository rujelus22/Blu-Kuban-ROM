.class public Lcom/google/android/music/MusicUserContentBinder;
.super Lcom/google/android/play/IUserContentService$Stub;
.source "MusicUserContentBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicUserContentBinder$MusicUserContentService;
    }
.end annotation


# static fields
.field private static volatile sAlbumArtReceiverRegistered:Z

.field private static final sAlbumChangeReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/MusicUserContentBinder;->sAlbumArtReceiverRegistered:Z

    .line 52
    new-instance v0, Lcom/google/android/music/MusicUserContentBinder$1;

    invoke-direct {v0}, Lcom/google/android/music/MusicUserContentBinder$1;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUserContentBinder;->sAlbumChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "mContext"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/play/IUserContentService$Stub;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private getWhatsNext(I)Ljava/util/List;
    .registers 6
    .parameter "numItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 81
    .local v2, whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0, v2, p1}, Lcom/google/android/music/MusicUserContentBinder;->populateRecents(Ljava/util/List;I)V

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_23

    .line 84
    iget-object v3, p0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 86
    .local v0, pref:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_13
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_24

    move-result-object v1

    .line 88
    .local v1, streamingAccount:Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 92
    if-eqz v1, :cond_23

    invoke-static {v1}, Lcom/google/android/music/MusicUserContentBinder;->isSyncPendingOrActive(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 94
    const/4 v2, 0x0

    .line 97
    .end local v0           #pref:Lcom/google/android/music/jumper/MusicPreferences;
    .end local v1           #streamingAccount:Landroid/accounts/Account;
    .end local v2           #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_23
    return-object v2

    .line 88
    .restart local v0       #pref:Lcom/google/android/music/jumper/MusicPreferences;
    .restart local v2       #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_24
    move-exception v3

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v3
.end method

.method private static isSyncPendingOrActive(Landroid/accounts/Account;)Z
    .registers 2
    .parameter "account"

    .prologue
    .line 101
    const-string v0, "com.google.android.music.MusicContent"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.google.android.music.MusicContent"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static notifyContentChanged(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.CONTENT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, i:Landroid/content/Intent;
    const-string v1, "Play.DataType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "Play.BackendId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    const-string v1, "MusicUserContentService"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 285
    const-string v1, "MusicUserContentService"

    const-string v2, "Sending out com.google.android.play.CONTENT_UPDATE broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_25
    return-void
.end method

.method private populateRecents(Ljava/util/List;I)V
    .registers 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 112
    const-string v1, "MusicUserContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    .line 113
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RECENT.RecentAlbumId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MUSIC.Album"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MUSIC.AlbumArtist"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "RECENT.RecentListId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LISTS.Name"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "LISTS.ListType"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RECENT.ItemDate"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "MUSIC.AlbumArtLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ARTWORK.LocalLocation"

    aput-object v3, v1, v2

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/store/Store;->getRecentsJoinedWithArtwork([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 135
    if-nez v9, :cond_4f

    .line 136
    const-string v1, "MusicUserContentService"

    const-string v2, "Recent URI returned a null cursor.  Not returning any recents"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_4e
    return-void

    .line 140
    :cond_4f
    :try_start_4f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int v10, v1, p2

    .line 141
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v11

    .line 142
    :cond_59
    :goto_59
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_198

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v10, :cond_198

    .line 143
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 145
    const-wide/16 v3, -0x1

    .line 146
    const-wide/16 v1, -0x1

    .line 149
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1a9

    .line 150
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v6, v3

    .line 152
    :goto_7b
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 153
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v4, v1

    .line 159
    :goto_88
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_147

    .line 160
    new-instance v3, Lcom/google/android/music/medialist/AlbumSongList;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v6, v7, v1, v2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 164
    const/16 v2, 0x8

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    .line 165
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    if-eqz v4, :cond_13f

    .line 170
    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-static {v6, v7, v2, v5}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getFauxAlbumArtUri(JII)Landroid/net/Uri;

    move-result-object v2

    .line 174
    const/4 v5, 0x7

    invoke-interface {v9, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_dd

    .line 175
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    const-class v15, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v14, "com.android.music.REMOTE_ALBUM_ART_REQUESTED"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v14, "albumId"

    invoke-virtual {v5, v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    :cond_dd
    :goto_dd
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 199
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    const-class v14, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v6, v7, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const-string v7, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    const-string v1, "medialist"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v1, "Play.ViewIntent"

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    const-string v1, "Play.LastUpdateTimeMillis"

    invoke-virtual {v5, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    const-string v1, "Play.ImageUri"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    const-string v1, "Play.IsGenerated"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    if-eqz v8, :cond_59

    .line 215
    const-string v1, "MusicUserContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding bundle to return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_4f .. :try_end_138} :catchall_13a

    goto/16 :goto_59

    .line 220
    :catchall_13a
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 181
    :cond_13f
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v14, -0x1

    :try_start_142
    invoke-static {v6, v7, v2, v5, v14}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getAlbumArtUri(JZII)Landroid/net/Uri;

    move-result-object v2

    goto :goto_dd

    .line 185
    :cond_147
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-nez v1, :cond_177

    .line 186
    const-string v1, "MusicUserContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recents must return an album or playlist (albumId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playlistId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 191
    :cond_177
    new-instance v3, Lcom/google/android/music/medialist/PlaylistSongList;

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v3, v1, v2, v6, v7}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 193
    invoke-static {v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 194
    const/4 v2, -0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v2, v6}, Lcom/google/android/music/store/MusicContent$PlaylistArt;->getPlaylistArtUri(JII)Landroid/net/Uri;

    move-result-object v2

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_dd

    .line 218
    :cond_198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicUserContentBinder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/google/android/music/MusicUserContentBinder;->registerAlbumArtListeners(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1a1
    .catchall {:try_start_142 .. :try_end_1a1} :catchall_13a

    .line 220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4e

    :cond_1a6
    move-wide v4, v1

    goto/16 :goto_88

    :cond_1a9
    move-wide v6, v3

    goto/16 :goto_7b
.end method

.method private registerAlbumArtListeners(Landroid/content/Context;Ljava/util/List;)V
    .registers 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, albumsToWatchForChanges:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    .local v1, appContext:Landroid/content/Context;
    sget-object v8, Lcom/google/android/music/MusicUserContentBinder;->sAlbumChangeReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v8

    .line 227
    :try_start_7
    sget-boolean v7, Lcom/google/android/music/MusicUserContentBinder;->sAlbumArtReceiverRegistered:Z

    if-eqz v7, :cond_13

    .line 228
    sget-object v7, Lcom/google/android/music/MusicUserContentBinder;->sAlbumChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    const/4 v7, 0x0

    sput-boolean v7, Lcom/google/android/music/MusicUserContentBinder;->sAlbumArtReceiverRegistered:Z

    .line 231
    :cond_13
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1d

    .line 232
    :cond_1b
    monitor-exit v8

    .line 258
    :goto_1c
    return-void

    .line 235
    :cond_1d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 236
    .local v0, albumId:Ljava/lang/Long;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v7, "com.google.android.music.AlbumArtChanged"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v6

    .line 239
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 242
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_75

    .line 244
    :try_start_57
    const-string v7, "vnd.android.cursor.item/vnd.google.music.album"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_75
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_57 .. :try_end_5c} :catch_78

    .line 249
    :try_start_5c
    sget-object v7, Lcom/google/android/music/MusicUserContentBinder;->sAlbumChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.google.android.music.AlbumArtChanged"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v5, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    const-string v7, "albumId"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_21

    .line 257
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :catchall_75
    move-exception v7

    monitor-exit v8
    :try_end_77
    .catchall {:try_start_5c .. :try_end_77} :catchall_75

    throw v7

    .line 245
    .restart local v0       #albumId:Ljava/lang/Long;
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_78
    move-exception v2

    .line 246
    .local v2, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :try_start_79
    const-string v7, "MusicUserContentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting data type on filter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 256
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v2           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_96
    const/4 v7, 0x1

    sput-boolean v7, Lcom/google/android/music/MusicUserContentBinder;->sAlbumArtReceiverRegistered:Z

    .line 257
    monitor-exit v8
    :try_end_9a
    .catchall {:try_start_79 .. :try_end_9a} :catchall_75

    goto :goto_1c
.end method


# virtual methods
.method public getDocuments(II)Ljava/util/List;
    .registers 6
    .parameter "dataTypeToFetch"
    .parameter "numItemsToReturn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_26

    .line 70
    const-string v0, "MusicUserContentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dataTypeToFetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 68
    :pswitch_21
    invoke-direct {p0, p2}, Lcom/google/android/music/MusicUserContentBinder;->getWhatsNext(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method
