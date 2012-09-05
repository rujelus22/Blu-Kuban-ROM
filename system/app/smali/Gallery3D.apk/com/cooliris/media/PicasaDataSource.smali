.class public final Lcom/cooliris/media/PicasaDataSource;
.super Ljava/lang/Object;
.source "PicasaDataSource.java"

# interfaces
.implements Lcom/cooliris/media/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/PicasaDataSource$1;,
        Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
    }
.end annotation


# static fields
.field public static final sThumbnailCache:Lcom/cooliris/media/DiskCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIncludeVideos:Z

.field private mProviderClient:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "picasa-thumbs"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private addItemsToFeed(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V
    .registers 22
    .parameter "feed"
    .parameter "set"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/PicasaDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 162
    .local v2, client:Landroid/content/ContentProviderClient;
    const/4 v9, 0x0

    .line 165
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_5
    sget-object v15, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    .line 166
    .local v15, photosSchema:Lcom/cooliris/picasa/EntrySchema;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "album_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 169
    .local v16, whereInAlbum:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/PicasaDataSource;->mIncludeVideos:Z

    if-nez v3, :cond_27

    .line 170
    const-string v3, " AND content_type LIKE \"im%\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_27
    sget-object v3, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Lcom/cooliris/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 174
    new-instance v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;-><init>(Lcom/cooliris/media/PicasaDataSource$1;)V

    .line 175
    .local v14, photo:Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 178
    .local v8, count:I
    if-nez v8, :cond_46

    .line 179
    invoke-virtual/range {p1 .. p2}, Lcom/cooliris/media/MediaFeed;->removeMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 183
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v3

    if-nez v3, :cond_55

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->clear()V

    .line 187
    :cond_55
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 190
    add-int/lit8 v13, p3, 0x1

    .line 191
    .local v13, newIndex:I
    if-gt v13, v8, :cond_6a

    invoke-interface {v9, v13}, Landroid/database/Cursor;->move(I)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 193
    :cond_6a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 195
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V
    :try_end_76
    .catchall {:try_start_5 .. :try_end_76} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_76} :catch_fe

    .line 231
    if-eqz v9, :cond_7b

    .line 232
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v8           #count:I
    .end local v13           #newIndex:I
    .end local v14           #photo:Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
    .end local v15           #photosSchema:Lcom/cooliris/picasa/EntrySchema;
    .end local v16           #whereInAlbum:Ljava/lang/StringBuffer;
    :cond_7b
    :goto_7b
    return-void

    .line 198
    .restart local v8       #count:I
    .restart local v13       #newIndex:I
    .restart local v14       #photo:Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
    .restart local v15       #photosSchema:Lcom/cooliris/picasa/EntrySchema;
    .restart local v16       #whereInAlbum:Ljava/lang/StringBuffer;
    :cond_7c
    :try_start_7c
    move-object/from16 v0, p2

    iget v3, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    if-nez v3, :cond_9a

    .line 199
    invoke-virtual {v15, v9, v14}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 200
    iget-wide v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->dateTaken:J

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 201
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 202
    invoke-virtual {v15, v9, v14}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 203
    iget-wide v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->dateTaken:J

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 204
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 206
    :cond_9a
    const/4 v11, 0x0

    .local v11, i:I
    :goto_9b
    if-ge v11, v8, :cond_f2

    .line 207
    invoke-virtual {v15, v9, v14}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 208
    new-instance v12, Lcom/cooliris/media/MediaItem;

    invoke-direct {v12}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 209
    .local v12, item:Lcom/cooliris/media/MediaItem;
    iget-wide v3, v14, Lcom/cooliris/picasa/Entry;->id:J

    iput-wide v3, v12, Lcom/cooliris/media/MediaItem;->mId:J

    .line 210
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->editUri:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mEditUri:Ljava/lang/String;

    .line 211
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->contentType:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 212
    iget-wide v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->dateTaken:J

    iput-wide v3, v12, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 213
    iget-wide v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->latitude:D

    iput-wide v3, v12, Lcom/cooliris/media/MediaItem;->mLatitude:D

    .line 214
    iget-wide v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->longitude:D

    iput-wide v3, v12, Lcom/cooliris/media/MediaItem;->mLongitude:D

    .line 215
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->thumbnailUrl:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 216
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->screennailUrl:Ljava/lang/String;

    if-eqz v3, :cond_cd

    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->screennailUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f8

    :cond_cd
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->thumbnailUrl:Ljava/lang/String;

    :goto_cf
    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 218
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->contentUrl:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 219
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->title:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 220
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->htmlPageUrl:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mWeblink:Ljava/lang/String;

    .line 221
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->summary:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mDescription:Ljava/lang/String;

    .line 222
    iget-object v3, v12, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    iput-object v3, v12, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/cooliris/media/MediaFeed;->addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    .line 224
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ef
    .catchall {:try_start_7c .. :try_end_ef} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_ef} :catch_fe

    move-result v3

    if-nez v3, :cond_fb

    .line 231
    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    :cond_f2
    if-eqz v9, :cond_7b

    .line 232
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    .line 216
    .restart local v12       #item:Lcom/cooliris/media/MediaItem;
    :cond_f8
    :try_start_f8
    iget-object v3, v14, Lcom/cooliris/media/PicasaDataSource$PhotoProjection;->screennailUrl:Ljava/lang/String;
    :try_end_fa
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fa} :catch_fe

    goto :goto_cf

    .line 206
    :cond_fb
    add-int/lit8 v11, v11, 0x1

    goto :goto_9b

    .line 228
    .end local v8           #count:I
    .end local v11           #i:I
    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .end local v13           #newIndex:I
    .end local v14           #photo:Lcom/cooliris/media/PicasaDataSource$PhotoProjection;
    .end local v15           #photosSchema:Lcom/cooliris/picasa/EntrySchema;
    .end local v16           #whereInAlbum:Ljava/lang/StringBuffer;
    :catch_fe
    move-exception v10

    .line 229
    .local v10, e:Ljava/lang/Exception;
    :try_start_ff
    const-string v3, "PicasaDataSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred loading photos for album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_ff .. :try_end_11b} :catchall_122

    .line 231
    if-eqz v9, :cond_7b

    .line 232
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7b

    .line 231
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_122
    move-exception v3

    if-eqz v9, :cond_128

    .line 232
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_128
    throw v3
.end method

.method public static final getAccountStatus(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/cooliris/picasa/PicasaApi;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 58
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v5, v1

    .line 59
    .local v5, numAccounts:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    .local v2, accountsEnabled:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v5, :cond_25

    .line 61
    aget-object v0, v1, v3

    .line 62
    .local v0, account:Landroid/accounts/Account;
    const-string v7, "com.cooliris.picasa.contentprovider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 64
    .local v4, isEnabled:Z
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/cooliris/picasa/PicasaApi;->canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, username:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 68
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #isEnabled:Z
    .end local v6           #username:Ljava/lang/String;
    :cond_25
    return-object v2
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getThumbnailCache()Lcom/cooliris/media/DiskCache;
    .registers 2

    .prologue
    .line 272
    sget-object v0, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    return-object v0
.end method

.method public loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V
    .registers 5
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 91
    if-nez p2, :cond_3

    .line 97
    :goto_2
    return-void

    .line 95
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cooliris/media/PicasaDataSource;->addItemsToFeed(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V

    goto :goto_2
.end method

.method public loadMediaSets(Lcom/cooliris/media/MediaFeed;)V
    .registers 6
    .parameter "feed"

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-object v0, p0, Lcom/cooliris/media/PicasaDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_13

    .line 75
    iget-object v0, p0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.cooliris.picasa.contentprovider"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/PicasaDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/cooliris/picasa/PicasaService;->requestSync(Landroid/content/Context;IJ)V

    .line 82
    invoke-virtual {p0, p1, v3}, Lcom/cooliris/media/PicasaDataSource;->loadMediaSetsIntoFeed(Lcom/cooliris/media/MediaFeed;Z)V

    .line 83
    return-void
.end method

.method protected loadMediaSetsIntoFeed(Lcom/cooliris/media/MediaFeed;Z)V
    .registers 22
    .parameter "feed"
    .parameter "sync"

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cooliris/media/PicasaDataSource;->getAccountStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    .line 101
    .local v10, accountsEnabled:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/PicasaDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 102
    .local v2, client:Landroid/content/ContentProviderClient;
    const/4 v13, 0x0

    .line 104
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_10

    .line 154
    :cond_f
    :goto_f
    return-void

    .line 107
    :cond_10
    :try_start_10
    sget-object v12, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    .line 108
    .local v12, albumSchema:Lcom/cooliris/picasa/EntrySchema;
    sget-object v3, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lcom/cooliris/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "user, date_published DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 110
    new-instance v11, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v11}, Lcom/cooliris/picasa/AlbumEntry;-><init>()V

    .line 112
    .local v11, album:Lcom/cooliris/picasa/AlbumEntry;
    if-eqz v13, :cond_95

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 113
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 114
    .local v16, numAlbums:I
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v17, picasaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    :cond_3a
    invoke-virtual {v12, v13, v11}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 117
    iget-object v3, v11, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, userLowerCase:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 119
    .local v9, accountEnabledObj:Ljava/lang/Boolean;
    if-nez v9, :cond_a1

    const/4 v8, 0x0

    .line 121
    .local v8, accountEnabled:Z
    :goto_4e
    if-eqz v8, :cond_8f

    .line 122
    iget v3, v11, Lcom/cooliris/picasa/AlbumEntry;->numPhotos:I

    if-lez v3, :cond_8f

    .line 123
    iget-wide v3, v11, Lcom/cooliris/picasa/Entry;->id:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/cooliris/media/MediaFeed;->getMediaSet(J)Lcom/cooliris/media/MediaSet;

    move-result-object v15

    .line 124
    .local v15, mediaSet:Lcom/cooliris/media/MediaSet;
    if-nez v15, :cond_a6

    .line 125
    iget-wide v3, v11, Lcom/cooliris/picasa/Entry;->id:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v4, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v15

    .line 126
    iget-object v3, v11, Lcom/cooliris/picasa/AlbumEntry;->title:Ljava/lang/String;

    iput-object v3, v15, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 127
    iget-object v3, v11, Lcom/cooliris/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    iput-object v3, v15, Lcom/cooliris/media/MediaSet;->mEditUri:Ljava/lang/String;

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 129
    iget v3, v11, Lcom/cooliris/picasa/AlbumEntry;->numPhotos:I

    invoke-virtual {v15, v3}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 134
    :goto_79
    iget-wide v3, v11, Lcom/cooliris/picasa/Entry;->id:J

    iput-wide v3, v15, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    .line 135
    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/cooliris/media/MediaSet;->mIsLocal:Z

    .line 136
    iget-boolean v3, v11, Lcom/cooliris/picasa/AlbumEntry;->photosDirty:Z

    iput-boolean v3, v15, Lcom/cooliris/media/MediaSet;->mSyncPending:Z

    .line 137
    invoke-virtual {v15}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v3

    if-eqz v3, :cond_8f

    .line 138
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v15           #mediaSet:Lcom/cooliris/media/MediaSet;
    :cond_8f
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 145
    .end local v8           #accountEnabled:Z
    .end local v9           #accountEnabledObj:Ljava/lang/Boolean;
    .end local v16           #numAlbums:I
    .end local v17           #picasaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v18           #userLowerCase:Ljava/lang/String;
    :cond_95
    if-eqz v13, :cond_9a

    .line 146
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catchall {:try_start_10 .. :try_end_9a} :catchall_bb
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_9a} :catch_ac

    .line 150
    :cond_9a
    if-eqz v13, :cond_f

    .line 151
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 119
    .restart local v9       #accountEnabledObj:Ljava/lang/Boolean;
    .restart local v16       #numAlbums:I
    .restart local v17       #picasaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .restart local v18       #userLowerCase:Ljava/lang/String;
    :cond_a1
    :try_start_a1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_4e

    .line 132
    .restart local v8       #accountEnabled:Z
    .restart local v15       #mediaSet:Lcom/cooliris/media/MediaSet;
    :cond_a6
    iget v3, v11, Lcom/cooliris/picasa/AlbumEntry;->numPhotos:I

    invoke-virtual {v15, v3}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_bb
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_ab} :catch_ac

    goto :goto_79

    .line 147
    .end local v8           #accountEnabled:Z
    .end local v9           #accountEnabledObj:Ljava/lang/Boolean;
    .end local v11           #album:Lcom/cooliris/picasa/AlbumEntry;
    .end local v12           #albumSchema:Lcom/cooliris/picasa/EntrySchema;
    .end local v15           #mediaSet:Lcom/cooliris/media/MediaSet;
    .end local v16           #numAlbums:I
    .end local v17           #picasaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v18           #userLowerCase:Ljava/lang/String;
    :catch_ac
    move-exception v14

    .line 148
    .local v14, e:Landroid/os/RemoteException;
    :try_start_ad
    const-string v3, "PicasaDataSource"

    const-string v4, "Error occurred loading albums"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_bb

    .line 150
    if-eqz v13, :cond_f

    .line 151
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 150
    .end local v14           #e:Landroid/os/RemoteException;
    :catchall_bb
    move-exception v3

    if-eqz v13, :cond_c1

    .line 151
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c1
    throw v3
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 20
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    if-nez p1, :cond_94

    .line 241
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/PicasaDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 242
    .local v3, client:Landroid/content/ContentProviderClient;
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, numBuckets:I
    :goto_b
    if-eq v5, v10, :cond_94

    .line 243
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaBucket;

    .line 244
    .local v2, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v8, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 245
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-nez v8, :cond_55

    .line 247
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v14, v14, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, albumUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/cooliris/media/Gallery;

    invoke-virtual {v13}, Lcom/cooliris/media/Gallery;->getProgressBarMaxCount()I

    move-result v12

    .line 251
    .local v12, totalItemCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/cooliris/media/Gallery;

    invoke-virtual {v13, v12}, Lcom/cooliris/media/Gallery;->setProgressIncrease(I)V

    .line 242
    .end local v1           #albumUri:Ljava/lang/String;
    .end local v12           #totalItemCount:I
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 254
    :cond_55
    const/4 v9, 0x0

    .local v9, j:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, numItems:I
    :goto_5a
    if-eq v9, v11, :cond_52

    .line 255
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaItem;

    .line 256
    .local v6, item:Lcom/cooliris/media/MediaItem;
    if-eqz v6, :cond_88

    .line 257
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v6, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, itemUri:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    .end local v7           #itemUri:Ljava/lang/String;
    :cond_88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/PicasaDataSource;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/cooliris/media/Gallery;

    invoke-virtual {v13}, Lcom/cooliris/media/Gallery;->setProgressIncrease()V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_91} :catch_96

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 265
    .end local v2           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v3           #client:Landroid/content/ContentProviderClient;
    .end local v5           #i:I
    .end local v6           #item:Lcom/cooliris/media/MediaItem;
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v9           #j:I
    .end local v10           #numBuckets:I
    .end local v11           #numItems:I
    :cond_94
    const/4 v13, 0x1

    .line 267
    :goto_95
    return v13

    .line 266
    :catch_96
    move-exception v4

    .line 267
    .local v4, e:Landroid/os/RemoteException;
    const/4 v13, 0x0

    goto :goto_95
.end method

.method public refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V
    .registers 9
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    .line 325
    if-eqz p2, :cond_65

    array-length v5, p2

    if-lez v5, :cond_65

    .line 326
    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/cooliris/media/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 328
    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v2

    .line 329
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 330
    .local v3, numMediaSets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_65

    .line 332
    :try_start_1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 333
    .local v4, set:Lcom/cooliris/media/MediaSet;
    iget-object v5, v4, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    instance-of v5, v5, Lcom/cooliris/media/PicasaDataSource;

    if-eqz v5, :cond_2d

    .line 334
    iput-object p0, v4, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 335
    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->refresh()V
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_2d} :catch_30

    .line 330
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 337
    :catch_30
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2d

    .line 341
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #i:I
    .end local v2           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v3           #numMediaSets:I
    :cond_35
    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/cooliris/media/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 346
    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v2

    .line 347
    .restart local v2       #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 348
    .restart local v3       #numMediaSets:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4a
    if-ge v1, v3, :cond_65

    .line 350
    :try_start_4c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 351
    .restart local v4       #set:Lcom/cooliris/media/MediaSet;
    iget-object v5, v4, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    instance-of v5, v5, Lcom/cooliris/media/PicasaDataSource;

    if-eqz v5, :cond_5d

    .line 352
    iput-object p0, v4, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 353
    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->refresh()V
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_5d} :catch_60

    .line 348
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 355
    :catch_60
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_5d

    .line 361
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #i:I
    .end local v2           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v3           #numMediaSets:I
    :cond_65
    return-void
.end method

.method public setMimeFilter(Z)V
    .registers 2
    .parameter "includeVideos"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/cooliris/media/PicasaDataSource;->mIncludeVideos:Z

    .line 158
    return-void
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method
