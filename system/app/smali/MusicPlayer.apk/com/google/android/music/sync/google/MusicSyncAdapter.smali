.class public Lcom/google/android/music/sync/google/MusicSyncAdapter;
.super Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/MusicSyncAdapter$2;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private mInitialPlaylistEntryVersion:J

.field private mInitialPlaylistVersion:J

.field private mInitialTrackVersion:J

.field private mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;-><init>(Landroid/content/Context;)V

    .line 253
    const-string v0, "MusicSyncAdapter"

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    .line 255
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/sync/google/MusicSyncAdapter;Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/api/MusicApiClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    return-object p1
.end method

.method private createAlbumIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 742
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v1, "medialist"

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    const-string v1, "googlemusic"

    const-string v2, "showTrackListing"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 747
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createFreeAndPurchasedIntent()Landroid/app/PendingIntent;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 724
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    const-string v0, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 730
    :try_start_15
    const-string v2, "googlemusic"

    const-string v3, "playlist"

    const-string v4, "storeSongs"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 731
    const-string v2, "medialist"

    const-wide/16 v3, -0x3

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v0}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_38

    .line 735
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 735
    :catchall_38
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v0
.end method

.method private getChangesFromServerAsDom(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x0

    .line 564
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;

    const-string v1, "downstream_state"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;

    .line 566
    const-class v0, Ljava/lang/String;

    const-string v1, "continuation"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 567
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v0, :cond_4b

    .line 568
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetcher: Getting changes from server for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with continuation token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_downstream_page_size"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 576
    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v0

    .line 577
    sget-object v1, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_20c

    .line 606
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feed type for downstream sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_83
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_4b .. :try_end_83} :catch_83
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_83} :catch_138
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_4b .. :try_end_83} :catch_163
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_4b .. :try_end_83} :catch_16a
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_4b .. :try_end_83} :catch_171
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_4b .. :try_end_83} :catch_178
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_4b .. :try_end_83} :catch_186

    .line 609
    :catch_83
    move-exception v0

    .line 610
    const-string v1, "MusicSyncAdapter"

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on fetch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 579
    :pswitch_b0
    :try_start_b0
    const-class v0, Ljava/lang/String;

    const-string v1, "etag_track"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-wide v4, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/music/sync/api/MusicApiClient;->getTracks(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    .line 582
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_d2

    .line 583
    const-string v1, "etag_track"

    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b0 .. :try_end_d2} :catch_83
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_d2} :catch_138
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b0 .. :try_end_d2} :catch_163
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b0 .. :try_end_d2} :catch_16a
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b0 .. :try_end_d2} :catch_171
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_b0 .. :try_end_d2} :catch_178
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_b0 .. :try_end_d2} :catch_186

    .line 629
    :cond_d2
    :goto_d2
    const-string v1, "continuation"

    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mContinuationToken:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    if-nez v1, :cond_18e

    .line 631
    const-string v1, "MusicSyncAdapter"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 632
    const-string v1, "MusicSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mutations found for feed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_101
    :goto_101
    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mContinuationToken:Ljava/lang/String;

    if-nez v0, :cond_209

    .line 656
    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->onDoneWithFeed()V

    .line 657
    const-string v0, "continuation"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v0

    if-eqz v0, :cond_114

    move v8, v9

    .line 660
    :cond_114
    :goto_114
    return v8

    .line 588
    :pswitch_115
    :try_start_115
    const-class v0, Ljava/lang/String;

    const-string v1, "etag_playlist"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-wide v4, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylists(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    .line 591
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_d2

    .line 592
    const-string v1, "etag_playlist"

    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_137
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_115 .. :try_end_137} :catch_83
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_137} :catch_138
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_115 .. :try_end_137} :catch_163
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_115 .. :try_end_137} :catch_16a
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_115 .. :try_end_137} :catch_171
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_115 .. :try_end_137} :catch_178
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_115 .. :try_end_137} :catch_186

    goto :goto_d2

    .line 612
    :catch_138
    move-exception v0

    .line 613
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 597
    :pswitch_13f
    :try_start_13f
    const-class v0, Ljava/lang/String;

    const-string v1, "etag_playlist_entry"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-wide v4, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylistEntries(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    .line 600
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_d2

    .line 601
    const-string v1, "etag_playlist_entry"

    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_161
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_13f .. :try_end_161} :catch_83
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_161} :catch_138
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_13f .. :try_end_161} :catch_163
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_13f .. :try_end_161} :catch_16a
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_13f .. :try_end_161} :catch_171
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_13f .. :try_end_161} :catch_178
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_13f .. :try_end_161} :catch_186

    goto/16 :goto_d2

    .line 614
    :catch_163
    move-exception v0

    .line 615
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 616
    :catch_16a
    move-exception v0

    .line 617
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 618
    :catch_171
    move-exception v0

    .line 619
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 620
    :catch_178
    move-exception v0

    .line 621
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    .line 622
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getRetryAfter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/sync/common/SoftSyncException;->setRetryAfter(J)V

    .line 623
    throw v1

    .line 624
    :catch_186
    move-exception v0

    .line 626
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    invoke-direct {v0, v11, v11, v11}, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;-><init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2

    :cond_18e
    move v1, v8

    .line 636
    :cond_18f
    :goto_18f
    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 637
    add-int/lit8 v1, v1, 0x1

    .line 639
    :try_start_199
    iget-object v2, v0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->put(Ljava/lang/Object;)V
    :try_end_1a2
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_199 .. :try_end_1a2} :catch_1a3
    .catch Ljava/lang/InterruptedException; {:try_start_199 .. :try_end_1a2} :catch_1cc

    goto :goto_18f

    .line 640
    :catch_1a3
    move-exception v2

    .line 641
    const-string v2, "MusicSyncAdapter"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 642
    const-string v0, "MusicSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The reader has killed the fetch queue, so there\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no point in having the fetcher continue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_114

    .line 646
    :catch_1cc
    move-exception v0

    .line 647
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 650
    :cond_1d3
    const-string v2, "MusicSyncAdapter"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 651
    const-string v2, "MusicSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  mutation(s) found."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_101

    :cond_209
    move v8, v9

    .line 660
    goto/16 :goto_114

    .line 577
    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_115
        :pswitch_13f
    .end packed-switch
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .registers 21
    .parameter "account"

    .prologue
    .line 365
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v17, newFeeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "track-update"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v1, "playlist-update"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v1, "playlist-entry-update"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 371
    .local v11, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 372
    .local v9, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "feed"

    aput-object v2, v3, v1

    .line 373
    .local v3, projection:[Ljava/lang/String;
    const-string v18, "_sync_account=? AND _sync_account_type=? AND authority=?"

    .line 376
    .local v18, where:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.music.MusicContent"

    aput-object v2, v5, v1

    .line 378
    .local v5, values:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 380
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_62

    .line 381
    const-string v1, "MusicSyncAdapter"

    const-string v2, "Can\'t find sync subscription feeds."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_61
    return-void

    .line 385
    :cond_62
    :goto_62
    :try_start_62
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 386
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 387
    .local v14, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 388
    .local v12, feed:Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_7a

    goto :goto_62

    .line 391
    .end local v12           #feed:Ljava/lang/String;
    .end local v14           #id:J
    :catchall_7a
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 394
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_86
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 396
    .local v16, newFeed:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 398
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v1, "_sync_account"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "feed"

    move-object/from16 v0, v16

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "service"

    const-string v2, "sj"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "authority"

    const-string v2, "com.google.android.music.MusicContent"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_86

    .line 408
    .end local v8           #contentValues:Landroid/content/ContentValues;
    :cond_cc
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 412
    .end local v16           #newFeed:Ljava/lang/String;
    :cond_d2
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_da
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 413
    .local v10, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 414
    .restart local v14       #id:J
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_da
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;
    .registers 1

    .prologue
    .line 258
    new-instance v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;-><init>()V

    return-object v0
.end method

.method private sendNotificationIfNecessary(Landroid/accounts/Account;Ljava/util/Map;)V
    .registers 19
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "new_purchased_count"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 680
    .local v7, newTrackCount:I
    if-nez v7, :cond_11

    .line 720
    :goto_10
    return-void

    .line 683
    :cond_11
    const-string v11, "new_purchased_albumId"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 684
    .local v1, albumId:J
    const-string v11, "new_purchased_album_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 685
    .local v3, albumname:Ljava/lang/String;
    const-string v11, "new_purchased_artist_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 686
    .local v4, artistName:Ljava/lang/String;
    const-string v11, "new_purchased_song_title"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 691
    .local v10, songName:Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v7, v11, :cond_94

    .line 692
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0d0138

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 694
    .local v9, notificationTitle:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->createFreeAndPurchasedIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 707
    .local v5, contentIntent:Landroid/app/PendingIntent;
    :goto_58
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 708
    .local v6, mNotification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v6, Landroid/app/Notification;->when:J

    .line 709
    const/16 v11, 0x18

    iput v11, v6, Landroid/app/Notification;->flags:I

    .line 711
    const v11, 0x7f0201b6

    iput v11, v6, Landroid/app/Notification;->icon:I

    .line 712
    const/4 v11, 0x0

    iput v11, v6, Landroid/app/Notification;->defaults:I

    .line 714
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0d013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v9, v12, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 719
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const/16 v11, 0x19

    invoke-virtual {v8, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_10

    .line 695
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #mNotification:Landroid/app/Notification;
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v9           #notificationTitle:Ljava/lang/String;
    :cond_94
    const-string v11, "new_purchased_same_album"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 696
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0d0139

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 698
    .restart local v9       #notificationTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->createAlbumIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    goto :goto_58

    .line 702
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #notificationTitle:Ljava/lang/String;
    :cond_bf
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0d013a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 704
    .restart local v9       #notificationTitle:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->createFreeAndPurchasedIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    goto :goto_58
.end method


# virtual methods
.method protected createDownstreamMerger(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamMerger;
    .registers 10
    .parameter "mergeQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamMerger;"
        }
    .end annotation

    .prologue
    .line 296
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_merge_block_size"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 298
    .local v2, blockSize:I
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicDownstreamMerger;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createDownstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamReader;
    .registers 11
    .parameter "fetchQueue"
    .parameter "queueCapacity"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamReader;"
        }
    .end annotation

    .prologue
    .line 290
    .local p4, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamReader;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicDownstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUpstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamReader;
    .registers 10
    .parameter "upstreamQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamReader;"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/google/android/music/MusicUtils;->areUpstreamTrackDeletesEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 305
    .local v5, enableTrackDeletes:Z
    if-nez v5, :cond_d

    .line 306
    const-string v0, "MusicSyncAdapter"

    const-string v1, "Upstream track deletions have been disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_d
    new-instance v0, Lcom/google/android/music/sync/google/MusicUpstreamReader;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicUpstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createUpstreamSender(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamSender;
    .registers 12
    .parameter "upstreamQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamSender;"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_upstream_page_size"

    const/16 v3, 0xfa

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 317
    .local v2, upstreamBlockSize:I
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_enable_track_stats_upsync"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    .line 319
    .local v7, enableTrackStatsUpSync:Z
    new-instance v0, Lcom/google/android/music/sync/google/MusicUpstreamSender;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/sync/google/MusicUpstreamSender;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/music/sync/api/MusicApiClient;Z)V

    return-object v0
.end method

.method protected fetchDataFromServer(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z
    .registers 5
    .parameter "account"
    .parameter "fetchQueue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 554
    .local p3, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getChangesFromServerAsDom(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 763
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_17

    .line 764
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 766
    :cond_17
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2c

    .line 767
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 769
    :cond_2c
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_41

    .line 770
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 772
    :cond_41
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_56

    .line 773
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 775
    :cond_56
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_6b

    .line 776
    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 778
    :cond_6b
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    return-void
.end method

.method protected onDownstreamComplete(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .registers 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 672
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/MediaStoreImporter;->updateLocalMusicBasedOnRemoteContentAsync(Landroid/content/Context;)V

    .line 673
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItemsAsync(Landroid/content/Context;)V

    .line 674
    return-void
.end method

.method protected onDownstreamStart(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .registers 3
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 754
    invoke-virtual {p0, v0, p5}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 755
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.google.android.music"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 757
    return-void
.end method

.method protected onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V
    .registers 11
    .parameter "syncAccount"
    .parameter "context"
    .parameter
    .parameter "success"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 331
    .local v0, accountMismatch:Z
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    .line 334
    .local v2, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_39

    move-result-object v1

    .line 336
    .local v1, configuredAccount:Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 338
    if-nez v1, :cond_3e

    .line 339
    const-string v4, "MusicSyncAdapter"

    const-string v5, "Just synced account has been removed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x1

    .line 346
    :cond_18
    :goto_18
    if-eqz v0, :cond_27

    .line 348
    if-nez v1, :cond_4d

    const/4 v3, 0x0

    .line 351
    .local v3, requestSync:Z
    :goto_1d
    sget-object v4, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v5, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;

    invoke-direct {v5, p0, p2, v3}, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter;Landroid/content/Context;Z)V

    invoke-static {v4, v5}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 357
    .end local v3           #requestSync:Z
    :cond_27
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.music.SYNC_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    if-nez v0, :cond_38

    if-eqz p4, :cond_38

    .line 360
    invoke-direct {p0, p1, p3}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->sendNotificationIfNecessary(Landroid/accounts/Account;Ljava/util/Map;)V

    .line 362
    :cond_38
    return-void

    .line 336
    .end local v1           #configuredAccount:Landroid/accounts/Account;
    :catchall_39
    move-exception v4

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v4

    .line 341
    .restart local v1       #configuredAccount:Landroid/accounts/Account;
    :cond_3e
    invoke-virtual {p1, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 342
    const-string v4, "MusicSyncAdapter"

    const-string v5, "Streaming account has changed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x1

    goto :goto_18

    .line 348
    :cond_4d
    const/4 v3, 0x1

    goto :goto_1d
.end method

.method protected onSyncStart(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Landroid/os/Bundle;)V
    .registers 15
    .parameter "account"
    .parameter "context"
    .parameter
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 424
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 426
    invoke-static {p2, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    .line 427
    .local v4, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 428
    .local v0, configuredAccount:Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 432
    const-string v7, "check_syncable_account"

    const/4 v8, 0x1

    invoke-virtual {p4, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 438
    const-string v7, "com.google.android.music.MusicContent"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 439
    const-string v7, "com.google.android.music.MusicContent"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 440
    const-string v7, "MusicSyncAdapter"

    const-string v8, "Sync is requested with wrong account. Ignoring..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v8, "Sync requested for unexpected account."

    invoke-direct {v7, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 444
    :cond_38
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_43

    .line 445
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Reading client state from db."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    .line 449
    .local v5, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 450
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 452
    .local v6, syncState:Lcom/google/android/music/sync/google/ClientSyncState;
    :try_start_54
    invoke-static {v1, p1}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->get(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Lcom/google/android/music/sync/google/ClientSyncState;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_167
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_54 .. :try_end_57} :catch_15e

    move-result-object v6

    .line 456
    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 458
    if-nez v6, :cond_95

    .line 459
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_68

    .line 460
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "There is no sync state for this account."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_68
    :try_start_68
    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 464
    invoke-static {}, Lcom/google/android/music/sync/google/ClientSyncState;->newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlaylistVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlentryVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/music/store/Store;->computeAccountHash(Landroid/accounts/Account;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteAccount(I)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->build()Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v6

    .line 470
    invoke-static {v1, p1, v6}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->set(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Lcom/google/android/music/sync/google/ClientSyncState;)V
    :try_end_91
    .catchall {:try_start_68 .. :try_end_91} :catchall_175
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_68 .. :try_end_91} :catch_16c

    .line 474
    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 477
    :cond_95
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_b5

    .line 478
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current sync state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/music/sync/google/ClientSyncState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_b5
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    if-nez v7, :cond_17b

    const-wide/16 v7, 0x0

    :goto_bb
    iput-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    .line 482
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    if-nez v7, :cond_183

    const-wide/16 v7, 0x0

    :goto_c3
    iput-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    .line 484
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    if-nez v7, :cond_18b

    const-wide/16 v7, 0x0

    :goto_cb
    iput-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    .line 486
    const-string v7, "merger_track_version"

    iget-wide v8, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v7, "merger_playlist_version"

    iget-wide v8, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v7, "merger_plentry_version"

    iget-wide v8, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    if-eqz v7, :cond_f9

    .line 490
    const-string v7, "etag_track"

    iget-object v8, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_f9
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    if-eqz v7, :cond_104

    .line 493
    const-string v7, "etag_playlist"

    iget-object v8, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_104
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    if-eqz v7, :cond_10f

    .line 496
    const-string v7, "etag_playlist_entry"

    iget-object v8, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_10f
    const-string v7, "remote_account"

    iget-object v8, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v7, "account"

    invoke-interface {p3, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v7, "feed"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f8

    .line 501
    const-string v7, "feed"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, feed:Ljava/lang/String;
    const-string v7, "track-update"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_193

    .line 503
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_13c

    .line 504
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Sync manager specified track feed type."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_13c
    const-string v7, "downstream_state"

    new-instance v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v9, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v8, v9}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v3           #feed:Ljava/lang/String;
    :cond_148
    :goto_148
    const-string v7, "new_purchased_count"

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v7, "new_purchased_same_album"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void

    .line 453
    :catch_15e
    move-exception v2

    .line 454
    .local v2, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_15f
    new-instance v7, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v8, "Unable to read sync state: "

    invoke-direct {v7, v8, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_167
    .catchall {:try_start_15f .. :try_end_167} :catchall_167

    .line 456
    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_167
    move-exception v7

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7

    .line 471
    :catch_16c
    move-exception v2

    .line 472
    .restart local v2       #e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_16d
    new-instance v7, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v8, "Unable to write sync state: "

    invoke-direct {v7, v8, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_175
    .catchall {:try_start_16d .. :try_end_175} :catchall_175

    .line 474
    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_175
    move-exception v7

    const/4 v8, 0x1

    invoke-virtual {v5, v1, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v7

    .line 480
    :cond_17b
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_bb

    .line 482
    :cond_183
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_c3

    .line 484
    :cond_18b
    iget-object v7, v6, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_cb

    .line 508
    .restart local v3       #feed:Ljava/lang/String;
    :cond_193
    const-string v7, "playlist-update"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    .line 509
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_1a6

    .line 510
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Sync manager specified playlist feed type."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1a6
    const-string v7, "downstream_state"

    new-instance v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v9, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v8, v9}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_148

    .line 514
    :cond_1b3
    const-string v7, "playlist-entry-update"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d4

    .line 515
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_1c6

    .line 516
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Sync manager specified playlist-entry feed type."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1c6
    const-string v7, "downstream_state"

    new-instance v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v9, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v8, v9}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_148

    .line 521
    :cond_1d4
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_148

    .line 522
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync manager specified an unknown feed type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Syncing all feeds."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_148

    .line 527
    .end local v3           #feed:Ljava/lang/String;
    :cond_1f8
    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v7, :cond_203

    .line 528
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Sync manager provided no specific feed type.  Syncing all feeds."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_203
    const-string v7, "downstream_state"

    new-instance v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;

    invoke-direct {v8}, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;-><init>()V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_148
.end method
