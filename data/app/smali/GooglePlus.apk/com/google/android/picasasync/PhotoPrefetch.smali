.class Lcom/google/android/picasasync/PhotoPrefetch;
.super Ljava/lang/Object;
.source "PhotoPrefetch.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;,
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;,
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageType:I

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    .line 53
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    return-void
.end method

.method private cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 160
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, v3}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 164
    :goto_a
    return-void

    .line 161
    :cond_b
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/picasasync/PrefetchHelper;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1c
    invoke-static {v1, v3, v0}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    goto :goto_a

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static declared-synchronized compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z
    .registers 8
    .parameter "prefs"
    .parameter "test"
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    .line 153
    const-class v2, Lcom/google/android/picasasync/PhotoPrefetch;

    monitor-enter v2

    :try_start_4
    const-string v3, "picasasync.prefetch.clean-cache"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    move-result v0

    .line 154
    .local v0, state:I
    if-eq v0, p1, :cond_f

    .line 156
    :goto_d
    monitor-exit v2

    return v1

    .line 155
    :cond_f
    :try_start_f
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "picasasync.prefetch.clean-cache"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    .line 156
    const/4 v1, 0x1

    goto :goto_d

    .line 153
    .end local v0           #state:I
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getSyncState(I)Lcom/google/android/picasasync/SyncState;
    .registers 2
    .parameter "type"

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_12

    .line 81
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :pswitch_9
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    .line 80
    :goto_b
    return-object v0

    .line 79
    :pswitch_c
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    goto :goto_b

    .line 80
    :pswitch_f
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    goto :goto_b

    .line 77
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method static onRequestSync(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 360
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    .line 362
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v2

    .line 88
    .local v2, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    packed-switch v4, :pswitch_data_92

    .line 115
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 92
    :pswitch_15
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 93
    .local v3, user:Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 94
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #user:Lcom/google/android/picasasync/UserEntry;
    :pswitch_3e
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 101
    .restart local v3       #user:Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 102
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 108
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #user:Lcom/google/android/picasasync/UserEntry;
    :pswitch_67
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 109
    .restart local v3       #user:Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 110
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 117
    .end local v3           #user:Lcom/google/android/picasasync/UserEntry;
    :cond_90
    return-void

    .line 90
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_15
        :pswitch_67
    .end packed-switch
.end method

.method public resetSyncStates()V
    .registers 11

    .prologue
    .line 58
    iget-object v6, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    .line 59
    .local v1, helper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 62
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-class v7, Lcom/google/android/picasasync/PhotoPrefetch;

    monitor-enter v7

    .line 63
    :try_start_13
    const-string v6, "picasasync.prefetch.clean-cache"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, state:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2b

    .line 65
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "picasasync.prefetch.clean-cache"

    const/4 v9, 0x2

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_2b
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_4c

    .line 69
    iget v6, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    invoke-static {v6}, Lcom/google/android/picasasync/PhotoPrefetch;->getSyncState(I)Lcom/google/android/picasasync/SyncState;

    move-result-object v4

    .line 71
    .local v4, state:Lcom/google/android/picasasync/SyncState;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/picasasync/UserEntry;

    .line 72
    .local v5, user:Lcom/google/android/picasasync/UserEntry;
    iget-object v6, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3a

    .line 67
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #state:Lcom/google/android/picasasync/SyncState;
    .end local v5           #user:Lcom/google/android/picasasync/UserEntry;
    :catchall_4c
    move-exception v6

    :try_start_4d
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v6

    .line 74
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #state:Lcom/google/android/picasasync/SyncState;
    :cond_4f
    return-void
.end method

.method showPrefetchCompleteNotification(I)V
    .registers 8
    .parameter "total"

    .prologue
    .line 120
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/picasasync/R$layout;->ps_cache_notification:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 122
    .local v2, views:Landroid/widget/RemoteViews;
    sget v3, Lcom/google/android/picasasync/R$id;->ps_status:I

    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    sget v5, Lcom/google/android/picasasync/R$string;->ps_cache_done:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    sget v3, Lcom/google/android/picasasync/R$id;->ps_progress:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, p1, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 124
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 125
    .local v1, notification:Landroid/app/Notification;
    const v3, 0x1080082

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 126
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 128
    iget-object v3, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 130
    .local v0, manager:Landroid/app/NotificationManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 131
    return-void
.end method

.method updateOngoingNotification(II)V
    .registers 13
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/picasasync/R$string;->ps_cache_status:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, status:Ljava/lang/String;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/picasasync/R$layout;->ps_cache_notification:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v3, views:Landroid/widget/RemoteViews;
    sget v4, Lcom/google/android/picasasync/R$id;->ps_status:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 139
    sget v4, Lcom/google/android/picasasync/R$id;->ps_progress:I

    invoke-virtual {v3, v4, p2, p1, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 141
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 142
    .local v1, notification:Landroid/app/Notification;
    const v4, 0x1080081

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 143
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 145
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 146
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 148
    .local v0, manager:Landroid/app/NotificationManager;
    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 149
    return-void
.end method
