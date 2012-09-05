.class Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;
.super Ljava/lang/Object;
.source "MusicAlbumCacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->loadMusicAlbums(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isBreakFromLoop:Z

.field private final synthetic val$aClearCache:Z


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->val$aClearCache:Z

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->isBreakFromLoop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 127
    const/4 v14, 0x0

    .line 128
    .local v14, lAlbumCur:Landroid/database/Cursor;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->isBreakFromLoop:Z

    if-nez v2, :cond_2c

    .line 311
    if-eqz v14, :cond_d

    .line 312
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 313
    const/4 v14, 0x0

    .line 315
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Coming out of While loop and count of the Album ->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_282

    .line 320
    :cond_2b
    :goto_2b
    return-void

    .line 130
    :cond_2c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 132
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->val$aClearCache:Z

    if-eqz v2, :cond_46

    .line 134
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 135
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;->onAlbumDetailsFecthed(Z)V

    .line 140
    :cond_46
    :try_start_46
    #calls: Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->getSelectedMusicFile()Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$2()Ljava/lang/String;

    move-result-object v21

    .line 142
    .local v21, lSelectedMusic:Ljava/lang/String;
    const/4 v2, -0x1

    sput v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 144
    if-eqz v14, :cond_53

    .line 146
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v14, 0x0

    .line 149
    :cond_53
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 151
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumURI:Landroid/net/Uri;

    .line 152
    sget-object v4, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumProjection:[Ljava/lang/String;

    .line 153
    const-string v5, "artist!=\' \'"

    .line 154
    const/4 v6, 0x0

    .line 155
    const-string v7, "album_key"

    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 157
    if-eqz v14, :cond_1

    .line 159
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 161
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->getMusicContentObsInstance()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$3()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 163
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->getMusicContentObsInstance()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    move-result-object v5

    .line 162
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    :cond_99
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This is inside loadMusicAlbums and album count -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 168
    const/16 v20, 0x0

    .line 169
    .local v20, lNotifycount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_b5
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v9, v2, :cond_de

    .line 288
    :cond_bb
    sget-boolean v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    if-eqz v2, :cond_267

    .line 290
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_c2} :catch_c4

    goto/16 :goto_1

    .line 305
    .end local v9           #i:I
    .end local v20           #lNotifycount:I
    .end local v21           #lSelectedMusic:Ljava/lang/String;
    :catch_c4
    move-exception v8

    .line 306
    .local v8, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got Exception while getting Album/songs"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->isBreakFromLoop:Z

    goto/16 :goto_1

    .line 171
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v20       #lNotifycount:I
    .restart local v21       #lSelectedMusic:Ljava/lang/String;
    :cond_de
    :try_start_de
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_ef

    .line 173
    const-string v2, "Exiting from loadAlbumDetailsThread as PEA instance is null"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 175
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v14, 0x0

    goto/16 :goto_2b

    .line 181
    :cond_ef
    const-string v2, "album"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, lAlbumName:Ljava/lang/String;
    const-string v2, "artist"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, lAlbumArtistName:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 185
    .local v17, lAlubmId:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->val$aClearCache:Z

    if-nez v2, :cond_11b

    if-eqz v15, :cond_243

    #calls: Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isMusicAlbumExists(I)Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$4(I)Z

    move-result v2

    if-nez v2, :cond_243

    .line 187
    :cond_11b
    const-string v2, "album_art"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 188
    .local v11, lAlbumArtIndex:I
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_124} :catch_c4

    move-result-object v12

    .line 190
    .local v12, lAlbumArtPath:Ljava/lang/String;
    const/16 v16, 0x0

    .line 192
    .local v16, lAlbumSongCurs:Landroid/database/Cursor;
    :try_start_127
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_158

    .line 194
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$3()Landroid/net/Uri;

    move-result-object v3

    .line 195
    sget-object v4, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumSongProjection:[Ljava/lang/String;

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "album_id=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    const/4 v6, 0x0

    .line 198
    const/4 v7, 0x0

    .line 194
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_157} :catch_1a6

    move-result-object v16

    .line 208
    :cond_158
    :goto_158
    if-eqz v16, :cond_243

    .line 210
    :try_start_15a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const/16 v22, 0x0

    .line 212
    .local v22, lSupportedbyEngine:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_160
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v10, v2, :cond_1ab

    .line 252
    if-eqz v22, :cond_24e

    .line 254
    new-instance v23, Lcom/sec/android/app/ve/data/VEAlbum;

    invoke-direct/range {v23 .. v23}, Lcom/sec/android/app/ve/data/VEAlbum;-><init>()V

    .line 255
    .local v23, lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inside Album Cache Util and Labum Name -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/sec/android/app/ve/data/VEAlbum;->setVEAlbumName(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/sec/android/app/ve/data/VEAlbum;->setVEAlbumArtPath(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/data/VEAlbum;->setVEAlbumId(I)V

    .line 259
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/sec/android/app/ve/data/VEAlbum;->setVEAlbumArtistName(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_231

    .line 262
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 263
    const/4 v14, 0x0

    .line 267
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 268
    const/16 v16, 0x0

    goto/16 :goto_2b

    .line 202
    .end local v10           #j:I
    .end local v22           #lSupportedbyEngine:Z
    .end local v23           #lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    :catch_1a6
    move-exception v8

    .line 203
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_158

    .line 214
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #j:I
    .restart local v22       #lSupportedbyEngine:Z
    :cond_1ab
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_1c3

    .line 216
    const-string v2, "Exiting from loadAlbumMusicDetailsThread as PEA instance is null"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 217
    if-eqz v14, :cond_1bc

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v14, 0x0

    .line 223
    :cond_1bc
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 224
    const/16 v16, 0x0

    goto/16 :goto_2b

    .line 229
    :cond_1c3
    const-string v2, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 230
    .local v18, lFilePath:Ljava/lang/String;
    const-string v2, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, lMimetype:Ljava/lang/String;
    if-eqz v18, :cond_22d

    const-string v2, ".mp3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f5

    const-string v2, ".3gp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 234
    :cond_1f5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 235
    const/16 v22, 0x1

    .line 237
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20c

    .line 238
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToLast()Z

    .line 212
    :cond_208
    :goto_208
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_160

    .line 241
    :cond_20c
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_208

    .line 243
    sput v17, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected Album Id is -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_208

    .line 249
    :cond_22d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_208

    .line 273
    .end local v18           #lFilePath:Ljava/lang/String;
    .end local v19           #lMimetype:Ljava/lang/String;
    .restart local v23       #lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    :cond_231
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    if-eqz v2, :cond_240

    .line 274
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;->onAlbumDetailsFecthed(Lcom/sec/android/app/ve/data/VEAlbum;)V

    .line 280
    .end local v23           #lVEAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    :cond_240
    :goto_240
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v10           #j:I
    .end local v11           #lAlbumArtIndex:I
    .end local v12           #lAlbumArtPath:Ljava/lang/String;
    .end local v16           #lAlbumSongCurs:Landroid/database/Cursor;
    .end local v22           #lSupportedbyEngine:Z
    :cond_243
    sget-boolean v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    if-nez v2, :cond_bb

    .line 286
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 169
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b5

    .line 278
    .restart local v10       #j:I
    .restart local v11       #lAlbumArtIndex:I
    .restart local v12       #lAlbumArtPath:Ljava/lang/String;
    .restart local v16       #lAlbumSongCurs:Landroid/database/Cursor;
    .restart local v22       #lSupportedbyEngine:Z
    :cond_24e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Songs of the Album -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are not supported by engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_240

    .line 295
    .end local v10           #j:I
    .end local v11           #lAlbumArtIndex:I
    .end local v12           #lAlbumArtPath:Ljava/lang/String;
    .end local v13           #lAlbumArtistName:Ljava/lang/String;
    .end local v15           #lAlbumName:Ljava/lang/String;
    .end local v16           #lAlbumSongCurs:Landroid/database/Cursor;
    .end local v17           #lAlubmId:I
    .end local v22           #lSupportedbyEngine:Z
    :cond_267
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 297
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    if-eqz v2, :cond_27b

    .line 298
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;->onAlbumDetailsFecthed(Z)V

    .line 300
    :cond_27b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;->isBreakFromLoop:Z
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_280} :catch_c4

    goto/16 :goto_1

    .line 318
    .end local v9           #i:I
    .end local v20           #lNotifycount:I
    .end local v21           #lSelectedMusic:Ljava/lang/String;
    :cond_282
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 319
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;->onAlbumDetailsFecthed(Z)V

    goto/16 :goto_2b
.end method
