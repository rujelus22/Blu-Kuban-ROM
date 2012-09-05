.class Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;
.super Lcom/google/android/music/Worker;
.source "CreateInstantMixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/CreateInstantMixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncMixCreatorWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mInstantMixCreated:Z

.field private mStreamingAccount:Landroid/accounts/Account;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/CreateInstantMixActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const-class v0, Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/android/music/CreateInstantMixActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    .line 116
    const-string v0, "AsyncMixCreatorWorker"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 117
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    return v0
.end method

.method private getLocalIds(Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;)[J
    .registers 14
    .parameter "response"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 289
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 290
    .local v9, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 291
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "SourceAccount=? AND SourceId=?"

    .line 293
    .local v10, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 294
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->computeAccountHash(Landroid/accounts/Account;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 295
    iget-object v0, p1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 296
    .local v8, item:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    iget-object v0, v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    aput-object v0, v4, v11

    .line 297
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 300
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5b

    :try_start_49
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 301
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_5f

    .line 304
    :cond_5b
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_24

    :catchall_5f
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 307
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #item:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_64
    invoke-static {v9}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v0

    return-object v0
.end method

.method private getSeedValueAndName(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;J)Landroid/util/Pair;
    .registers 13
    .parameter "seedType"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    const/4 v7, 0x1

    .line 249
    .local v7, use2columns:Z
    sget-object v0, Lcom/google/android/music/CreateInstantMixActivity$1;->$SwitchMap$com$google$android$music$sync$google$model$MagicPlaylistRequest$MagicPlaylistSeed$SeedType:[I

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_ba

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown SeedType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_28
    invoke-static {p2, p3}, Lcom/google/android/music/store/MusicContent$XAudio;->getRemoteAudio(J)Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SourceId"

    aput-object v0, v2, v4

    const-string v0, "title"

    aput-object v0, v2, v5

    .line 268
    .local v2, projection:[Ljava/lang/String;
    :goto_37
    const/4 v6, 0x0

    .line 270
    .local v6, c:Landroid/database/Cursor;
    :try_start_38
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 272
    :cond_51
    const-string v0, "InstantMixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find row for given uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_38 .. :try_end_69} :catchall_b4

    .line 281
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v8

    :goto_6d
    return-object v0

    .line 256
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :pswitch_6e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 257
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v4

    .line 258
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 259
    goto :goto_37

    .line 261
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :pswitch_7e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 262
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v4

    .line 263
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 264
    goto :goto_37

    .line 275
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_8e
    if-eqz v7, :cond_a2

    .line 276
    const/4 v0, 0x0

    :try_start_91
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_b4

    move-result-object v0

    .line 281
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_6d

    .line 278
    :cond_a2
    const/4 v0, 0x0

    :try_start_a3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_b4

    move-result-object v0

    .line 281
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_6d

    :catchall_b4
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 249
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_28
        :pswitch_6e
        :pswitch_7e
    .end packed-switch
.end method

.method private onFailure(Ljava/lang/Object;)V
    .registers 4
    .parameter "statusCode"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    new-instance v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private onSuccess([J)V
    .registers 5
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_48

    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    new-instance v1, Lcom/google/android/music/medialist/SelectedSongList;

    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/google/android/music/medialist/SelectedSongList;-><init>(Ljava/lang/String;[J)V

    .line 317
    const-string v2, "medialist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 320
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V

    .line 322
    :cond_48
    return-void
.end method

.method private startInstantMixCreation()V
    .registers 19

    .prologue
    .line 145
    invoke-static {}, Lcom/google/android/music/sync/api/MusicApiClientFactory;->getInstance()Lcom/google/android/music/sync/api/MusicApiClientFactory;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Lcom/google/android/music/sync/api/MusicApiClientFactory;->createApiClientWithAuthInfo(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/api/MusicApiClient;

    move-result-object v1

    .line 148
    .local v1, apiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v12}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    if-nez v12, :cond_41

    .line 150
    const-string v12, "InstantMixActivity"

    const-string v13, "No streaming account found.  Should not be creating instant mixes when streaming is not setup"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 239
    :goto_40
    return-void

    .line 156
    :cond_41
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v12}, Lcom/google/android/music/CreateInstantMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 158
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "songId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 159
    .local v3, id:J
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_7d

    .line 160
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 161
    .local v9, seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_6b

    const-string v12, "albumId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6b

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 162
    :cond_6b
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_af

    const-string v12, "artistId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_af

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 164
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_7d
    const-string v12, "albumId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 165
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_9f

    .line 166
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 167
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_af

    const-string v12, "artistId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_af

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 169
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_9f
    const-string v12, "artistId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 170
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_be

    .line 171
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 178
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_af
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->getSeedValueAndName(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;J)Landroid/util/Pair;

    move-result-object v10

    .line 179
    .local v10, seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_c6

    .line 180
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 173
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .end local v10           #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_be
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Must supply an artist, album, or song id to create the instant playlist with"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 184
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .restart local v10       #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c6
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    new-instance v13, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)V

    invoke-virtual {v12, v13}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v14, 0x7f0d0106

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v13

    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->setSeedType(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v14

    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->setSeedValue(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->addSeed(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    move-result-object v6

    .line 201
    .local v6, magicPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
    :try_start_116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    invoke-interface {v1, v12, v6}, Lcom/google/android/music/sync/api/MusicApiClient;->createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;

    move-result-object v8

    .line 203
    .local v8, response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    invoke-virtual {v8}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->getStatusCode()Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-result-object v11

    .line 204
    .local v11, statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    sget-object v12, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    if-ne v11, v12, :cond_175

    iget-object v12, v8, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    if-eqz v12, :cond_175

    iget-object v12, v8, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_175

    .line 207
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->getLocalIds(Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;)[J

    move-result-object v7

    .line 209
    .local v7, musicIds:[J
    array-length v12, v7

    if-lez v12, :cond_151

    .line 210
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_14c
    .catchall {:try_start_116 .. :try_end_14c} :catchall_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_116 .. :try_end_14c} :catch_160
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_116 .. :try_end_14c} :catch_182
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_116 .. :try_end_14c} :catch_190
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_14c} :catch_19e
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_116 .. :try_end_14c} :catch_1ac
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_116 .. :try_end_14c} :catch_1ba
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_116 .. :try_end_14c} :catch_1c8

    .line 236
    .end local v7           #musicIds:[J
    :goto_14c
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_40

    .line 214
    .restart local v7       #musicIds:[J
    :cond_151
    const/4 v12, 0x5

    :try_start_152
    sget-object v13, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_15f
    .catchall {:try_start_152 .. :try_end_15f} :catchall_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_152 .. :try_end_15f} :catch_160
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_152 .. :try_end_15f} :catch_182
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_152 .. :try_end_15f} :catch_190
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_15f} :catch_19e
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_152 .. :try_end_15f} :catch_1ac
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_152 .. :try_end_15f} :catch_1ba
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_152 .. :try_end_15f} :catch_1c8

    goto :goto_14c

    .line 221
    .end local v7           #musicIds:[J
    .end local v8           #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .end local v11           #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :catch_160
    move-exception v2

    .line 222
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_161
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    .line 238
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :goto_16d
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_40

    .line 218
    .restart local v8       #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .restart local v11       #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :cond_175
    const/4 v12, 0x5

    :try_start_176
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_181
    .catchall {:try_start_176 .. :try_end_181} :catchall_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_176 .. :try_end_181} :catch_160
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_176 .. :try_end_181} :catch_182
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_176 .. :try_end_181} :catch_190
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_181} :catch_19e
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_176 .. :try_end_181} :catch_1ac
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_176 .. :try_end_181} :catch_1ba
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_176 .. :try_end_181} :catch_1c8

    goto :goto_14c

    .line 223
    .end local v8           #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .end local v11           #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :catch_182
    move-exception v2

    .line 224
    .local v2, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_183
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18c
    .catchall {:try_start_183 .. :try_end_18c} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .line 225
    .end local v2           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_190
    move-exception v2

    .line 226
    .local v2, e:Lcom/google/android/music/sync/common/SyncHttpException;
    :try_start_191
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/common/SyncHttpException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19a
    .catchall {:try_start_191 .. :try_end_19a} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .line 227
    .end local v2           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_19e
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    :try_start_19f
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a8
    .catchall {:try_start_19f .. :try_end_1a8} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .line 229
    .end local v2           #e:Ljava/io/IOException;
    :catch_1ac
    move-exception v2

    .line 230
    .local v2, e:Lcom/google/android/music/sync/api/BadRequestException;
    :try_start_1ad
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/BadRequestException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b6
    .catchall {:try_start_1ad .. :try_end_1b6} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .line 231
    .end local v2           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_1ba
    move-exception v2

    .line 232
    .local v2, e:Lcom/google/android/music/sync/api/ForbiddenException;
    :try_start_1bb
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c4
    .catchall {:try_start_1bb .. :try_end_1c4} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .line 233
    .end local v2           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_1c8
    move-exception v2

    .line 234
    .local v2, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :try_start_1c9
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d2
    .catchall {:try_start_1c9 .. :try_end_1d2} :catchall_1d6

    .line 236
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_16d

    .end local v2           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :catchall_1d6
    move-exception v12

    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    throw v12
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    .line 139
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_21
    invoke-direct {p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->startInstantMixCreation()V

    .line 142
    :cond_24
    :goto_24
    return-void

    .line 126
    :pswitch_25
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 127
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto :goto_24

    .line 131
    :pswitch_31
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onFailure(Ljava/lang/Object;)V

    goto :goto_24

    .line 135
    :pswitch_3a
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    invoke-direct {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onSuccess([J)V

    goto :goto_24

    .line 121
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_21
        :pswitch_6
        :pswitch_25
        :pswitch_3a
        :pswitch_31
    .end packed-switch
.end method
