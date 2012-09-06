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
    .line 121
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
    .line 129
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    .line 130
    const-string v0, "AsyncMixCreatorWorker"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 131
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    return v0
.end method

.method private getLocalIds(Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;)[J
    .registers 14
    .parameter "response"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 313
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 314
    .local v9, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 315
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "SourceAccount=? AND SourceId=?"

    .line 317
    .local v10, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 318
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->computeAccountHash(Landroid/accounts/Account;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 319
    iget-object v0, p1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 320
    .local v8, item:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    iget-object v0, v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    aput-object v0, v4, v11

    .line 321
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_57

    :try_start_45
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 325
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_5b

    .line 328
    :cond_57
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_24

    :catchall_5b
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 331
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #item:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_60
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

    .line 271
    const/4 v7, 0x1

    .line 273
    .local v7, use2columns:Z
    sget-object v0, Lcom/google/android/music/CreateInstantMixActivity$1;->$SwitchMap$com$google$android$music$sync$google$model$MagicPlaylistRequest$MagicPlaylistSeed$SeedType:[I

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_b6

    .line 290
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

    .line 275
    :pswitch_28
    invoke-static {p2, p3}, Lcom/google/android/music/store/MusicContent$XAudio;->getRemoteAudio(J)Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SourceId"

    aput-object v0, v2, v4

    const-string v0, "title"

    aput-object v0, v2, v5

    .line 292
    .local v2, projection:[Ljava/lang/String;
    :goto_37
    const/4 v6, 0x0

    .line 294
    .local v6, c:Landroid/database/Cursor;
    :try_start_38
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 296
    :cond_4d
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
    :try_end_65
    .catchall {:try_start_38 .. :try_end_65} :catchall_b0

    .line 305
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v8

    :goto_69
    return-object v0

    .line 280
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :pswitch_6a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 281
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v4

    .line 282
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 283
    goto :goto_37

    .line 285
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :pswitch_7a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v4

    .line 287
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 288
    goto :goto_37

    .line 299
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_8a
    if-eqz v7, :cond_9e

    .line 300
    const/4 v0, 0x0

    :try_start_8d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_b0

    move-result-object v0

    .line 305
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_69

    .line 302
    :cond_9e
    const/4 v0, 0x0

    :try_start_9f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_b0

    move-result-object v0

    .line 305
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_69

    :catchall_b0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 273
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_28
        :pswitch_6a
        :pswitch_7a
    .end packed-switch
.end method

.method private onFailure(Ljava/lang/Object;)V
    .registers 4
    .parameter "statusCode"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    new-instance v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method private onSuccess([J)V
    .registers 5
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_48

    .line 336
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    new-instance v1, Lcom/google/android/music/medialist/SelectedSongList;

    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/google/android/music/medialist/SelectedSongList;-><init>(Ljava/lang/String;[J)V

    .line 341
    const-string v2, "medialist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 344
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V

    .line 346
    :cond_48
    return-void
.end method

.method private startInstantMixCreation()V
    .registers 19

    .prologue
    .line 161
    invoke-static {}, Lcom/google/android/music/sync/api/MusicApiClientFactory;->getInstance()Lcom/google/android/music/sync/api/MusicApiClientFactory;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

    .line 165
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

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    if-nez v12, :cond_45

    .line 167
    const-string v12, "InstantMixActivity"

    const-string v13, "No streaming account found.  Should not be creating instant mixes when streaming is not setup"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 263
    :goto_44
    return-void

    .line 173
    :cond_45
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v12}, Lcom/google/android/music/CreateInstantMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 175
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "songId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 176
    .local v3, id:J
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_81

    .line 177
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 178
    .local v9, seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_6f

    const-string v12, "albumId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6f

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 179
    :cond_6f
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_b3

    const-string v12, "artistId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b3

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 181
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_81
    const-string v12, "albumId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 182
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_a3

    .line 183
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 184
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v12, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v12, :cond_b3

    const-string v12, "artistId"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b3

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 186
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_a3
    const-string v12, "artistId"

    const-wide/16 v13, -0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 187
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_c2

    .line 188
    sget-object v9, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 195
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_b3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->getSeedValueAndName(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;J)Landroid/util/Pair;

    move-result-object v10

    .line 196
    .local v10, seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_ca

    .line 197
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto :goto_44

    .line 190
    .end local v9           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .end local v10           #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Must supply an artist, album, or song id to create the instant playlist with"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 201
    .restart local v9       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .restart local v10       #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ca
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    new-instance v13, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)V

    invoke-virtual {v12, v13}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v14, 0x7f0d0142

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

    .line 218
    .local v6, magicPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    invoke-interface {v1, v12, v6}, Lcom/google/android/music/sync/api/MusicApiClient;->createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;

    move-result-object v8

    .line 220
    .local v8, response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    invoke-virtual {v8}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->getStatusCode()Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-result-object v11

    .line 221
    .local v11, statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    sget-object v12, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    if-ne v11, v12, :cond_19e

    iget-object v12, v8, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    if-eqz v12, :cond_19e

    iget-object v12, v8, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_19e

    .line 224
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 225
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->getLocalIds(Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;)[J

    move-result-object v7

    .line 226
    .local v7, musicIds:[J
    array-length v12, v7

    const/4 v13, 0x1

    if-le v12, v13, :cond_156

    .line 227
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_151
    .catchall {:try_start_11a .. :try_end_151} :catchall_23c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_11a .. :try_end_151} :catch_189
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_11a .. :try_end_151} :catch_1e5
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_11a .. :try_end_151} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_151} :catch_201
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_11a .. :try_end_151} :catch_20f
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_11a .. :try_end_151} :catch_21e
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_11a .. :try_end_151} :catch_22d

    .line 260
    .end local v7           #musicIds:[J
    :goto_151
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_44

    .line 231
    .restart local v7       #musicIds:[J
    :cond_156
    const/4 v12, 0x5

    :try_start_157
    sget-object v13, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v12}, Lcom/google/android/music/CreateInstantMixActivity;->access$400(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v12

    const-string v13, "failure"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "actionArea"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "createInstantMix"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "failureReason"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "musicIds.length <= 0"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_188
    .catchall {:try_start_157 .. :try_end_188} :catchall_23c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_157 .. :try_end_188} :catch_189
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_157 .. :try_end_188} :catch_1e5
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_157 .. :try_end_188} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_188} :catch_201
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_157 .. :try_end_188} :catch_20f
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_157 .. :try_end_188} :catch_21e
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_157 .. :try_end_188} :catch_22d

    goto :goto_151

    .line 245
    .end local v7           #musicIds:[J
    .end local v8           #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .end local v11           #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :catch_189
    move-exception v2

    .line 246
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_18a
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_193
    .catchall {:try_start_18a .. :try_end_193} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    .line 262
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :goto_196
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_44

    .line 238
    .restart local v8       #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .restart local v11       #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :cond_19e
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v12}, Lcom/google/android/music/CreateInstantMixActivity;->access$400(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v12

    const-string v13, "failure"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "actionArea"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "createInstantMix"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "failureReason"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalid response code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1e3
    .catchall {:try_start_19e .. :try_end_1e3} :catchall_23c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_19e .. :try_end_1e3} :catch_189
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_19e .. :try_end_1e3} :catch_1e5
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_19e .. :try_end_1e3} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1e3} :catch_201
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_19e .. :try_end_1e3} :catch_20f
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_19e .. :try_end_1e3} :catch_21e
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_19e .. :try_end_1e3} :catch_22d

    goto/16 :goto_151

    .line 247
    .end local v8           #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .end local v11           #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :catch_1e5
    move-exception v2

    .line 248
    .local v2, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_1e6
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ef
    .catchall {:try_start_1e6 .. :try_end_1ef} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_196

    .line 249
    .end local v2           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1f3
    move-exception v2

    .line 250
    .local v2, e:Lcom/google/android/music/sync/common/SyncHttpException;
    :try_start_1f4
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/common/SyncHttpException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_196

    .line 251
    .end local v2           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_201
    move-exception v2

    .line 252
    .local v2, e:Ljava/io/IOException;
    :try_start_202
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20b
    .catchall {:try_start_202 .. :try_end_20b} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_196

    .line 253
    .end local v2           #e:Ljava/io/IOException;
    :catch_20f
    move-exception v2

    .line 254
    .local v2, e:Lcom/google/android/music/sync/api/BadRequestException;
    :try_start_210
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/BadRequestException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_219
    .catchall {:try_start_210 .. :try_end_219} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_196

    .line 255
    .end local v2           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_21e
    move-exception v2

    .line 256
    .local v2, e:Lcom/google/android/music/sync/api/ForbiddenException;
    :try_start_21f
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_228
    .catchall {:try_start_21f .. :try_end_228} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_196

    .line 257
    .end local v2           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_22d
    move-exception v2

    .line 258
    .local v2, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :try_start_22e
    const-string v12, "InstantMixActivity"

    invoke-virtual {v2}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_237
    .catchall {:try_start_22e .. :try_end_237} :catchall_23c

    .line 260
    invoke-interface {v1}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_196

    .end local v2           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :catchall_23c
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

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    .line 153
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

    .line 137
    :pswitch_21
    invoke-direct {p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->startInstantMixCreation()V

    .line 156
    :cond_24
    :goto_24
    return-void

    .line 140
    :pswitch_25
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 141
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto :goto_24

    .line 145
    :pswitch_31
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onFailure(Ljava/lang/Object;)V

    goto :goto_24

    .line 149
    :pswitch_3a
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    invoke-direct {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onSuccess([J)V

    goto :goto_24

    .line 135
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
