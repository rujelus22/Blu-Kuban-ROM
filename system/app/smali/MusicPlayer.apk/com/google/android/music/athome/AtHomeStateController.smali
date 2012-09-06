.class public Lcom/google/android/music/athome/AtHomeStateController;
.super Ljava/lang/Object;
.source "AtHomeStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static sIsInitialBindToMusicService:Z


# instance fields
.field private mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

.field private mAtHomeMediaRouterCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

.field private mAtHomeState:I

.field private mAtHomeStateListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mMediaPlayerErrorReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRouter:Ljava/lang/Object;

.field private mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicServiceConnection:Landroid/content/ServiceConnection;

.field private mSelectMediaRouteWhenAvailable:Ljava/lang/String;

.field private mSelectRouteIfAvailableTask:Ljava/lang/Runnable;

.field private mSelectedGroupName:Ljava/lang/String;

.field private mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mUpdateAtHomeStateTask:Ljava/lang/Runnable;

.field private mUpdatePlaybackForSelectedRouteTask:Ljava/lang/Runnable;

.field private mUpdatePlaybackPending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeStateController;->LOGV:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeStateController;->sIsInitialBindToMusicService:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    .line 55
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 57
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectedGroupName:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 60
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackPending:Z

    .line 125
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$1;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMusicServiceConnection:Landroid/content/ServiceConnection;

    .line 176
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$2;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    .line 231
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$3;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectRouteIfAvailableTask:Ljava/lang/Runnable;

    .line 243
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$4;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouterCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    .line 318
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$5;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;

    .line 430
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$6;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackForSelectedRouteTask:Ljava/lang/Runnable;

    .line 465
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController$7;-><init>(Lcom/google/android/music/athome/AtHomeStateController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaPlayerErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    .line 89
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeStateController;->sIsInitialBindToMusicService:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/google/android/music/athome/AtHomeStateController;->sIsInitialBindToMusicService:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/music/athome/AtHomeStateController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackPending:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackForSelectedRouteTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->updateAtHomeState()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->updatePlaybackForSelectedRoute()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->switchToLocalOnFatalError()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectRouteIfAvailableTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeStateController;->findMediaRouteForGroupId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized atHomeRoutesExist()Z
    .registers 5

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->getRouteCount(Ljava/lang/Object;)I

    move-result v2

    .line 221
    .local v2, routeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1c

    .line 222
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, route:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1e

    move-result-object v3

    if-eqz v3, :cond_19

    .line 224
    const/4 v3, 0x1

    .line 228
    .end local v1           #route:Ljava/lang/Object;
    :goto_17
    monitor-exit p0

    return v3

    .line 221
    .restart local v1       #route:Ljava/lang/Object;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 228
    .end local v1           #route:Ljava/lang/Object;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_17

    .line 220
    .end local v0           #i:I
    .end local v2           #routeCount:I
    :catchall_1e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private findMediaRouteForGroupId(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "groupId"

    .prologue
    .line 453
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat;->getRouteCount(Ljava/lang/Object;)I

    move-result v2

    .line 454
    .local v2, routeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_1d

    .line 455
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, route:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, routeGroupId:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/google/android/music/MusicUtils;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 462
    .end local v1           #route:Ljava/lang/Object;
    .end local v3           #routeGroupId:Ljava/lang/String;
    :goto_19
    return-object v1

    .line 454
    .restart local v1       #route:Ljava/lang/Object;
    .restart local v3       #routeGroupId:Ljava/lang/String;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 462
    .end local v1           #route:Ljava/lang/Object;
    .end local v3           #routeGroupId:Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private getSelectedRouteGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    const/high16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, selectedRoute:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAtHomeActive(I)Z
    .registers 5
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 347
    packed-switch p0, :pswitch_data_20

    .line 354
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tungsten state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_1c
    :pswitch_1c
    return v0

    .line 352
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 347
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static isAtHomeAvailable(I)Z
    .registers 5
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 330
    packed-switch p0, :pswitch_data_20

    .line 337
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tungsten state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_1c
    :pswitch_1c
    return v0

    .line 335
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 330
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method private notifyAtHomeGroupNameChanged()V
    .registers 5

    .prologue
    .line 372
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    monitor-enter v3

    .line 373
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;

    .line 374
    .local v1, listener:Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectedGroupName:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;->onAtHomeGroupNameChanged(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)V

    goto :goto_9

    .line 376
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1e
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 377
    return-void
.end method

.method private notifyAtHomeStateChanged()V
    .registers 5

    .prologue
    .line 364
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    monitor-enter v3

    .line 365
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;

    .line 366
    .local v1, listener:Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;
    iget v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    invoke-interface {v1, p0, v2}, Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;->onAtHomeStateChanged(Lcom/google/android/music/athome/AtHomeStateController;I)V

    goto :goto_9

    .line 368
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1e
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 369
    return-void
.end method

.method private selectLocalMediaRoute()V
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->clearAllAtHomeRoutes()V

    .line 496
    return-void
.end method

.method private final switchToLocalOnFatalError()V
    .registers 3

    .prologue
    .line 477
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_1b

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, fatalError:Z
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isAtHomeDevicePlayback()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isInFatalErrorState()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_1e

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 485
    :goto_16
    if-eqz v0, :cond_1b

    .line 486
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->selectLocalMediaRoute()V

    .line 489
    .end local v0           #fatalError:Z
    :cond_1b
    return-void

    .line 480
    .restart local v0       #fatalError:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16

    .line 482
    :catch_1e
    move-exception v1

    goto :goto_16
.end method

.method private declared-synchronized updateAtHomeState()V
    .registers 7

    .prologue
    .line 289
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    const/high16 v4, 0x80

    invoke-static {v3, v4}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 291
    .local v2, selectedRoute:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 292
    const/4 v0, 0x2

    .line 293
    .local v0, newAtHomeState:I
    invoke-static {v2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, newGroupName:Ljava/lang/String;
    :goto_18
    iget v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    if-eq v0, v3, :cond_4f

    .line 301
    sget-boolean v3, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    if-eqz v3, :cond_4a

    .line 302
    const-string v3, "aah.Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New @home state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(old state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_4a
    iput v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    .line 306
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->notifyAtHomeStateChanged()V

    .line 309
    :cond_4f
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectedGroupName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/music/MusicUtils;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 310
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectedGroupName:Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->notifyAtHomeGroupNameChanged()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_69

    .line 313
    :cond_5c
    monitor-exit p0

    return-void

    .line 295
    .end local v0           #newAtHomeState:I
    .end local v1           #newGroupName:Ljava/lang/String;
    :cond_5e
    :try_start_5e
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->atHomeRoutesExist()Z
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_69

    move-result v3

    if-eqz v3, :cond_67

    const/4 v0, 0x1

    .line 297
    .restart local v0       #newAtHomeState:I
    :goto_65
    const/4 v1, 0x0

    .restart local v1       #newGroupName:Ljava/lang/String;
    goto :goto_18

    .line 295
    .end local v0           #newAtHomeState:I
    .end local v1           #newGroupName:Ljava/lang/String;
    :cond_67
    const/4 v0, 0x0

    goto :goto_65

    .line 289
    .end local v2           #selectedRoute:Ljava/lang/Object;
    :catchall_69
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized updatePlaybackForSelectedRoute()V
    .registers 9

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v5, :cond_a

    .line 396
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackPending:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    .line 428
    :goto_8
    monitor-exit p0

    return-void

    .line 399
    :cond_a
    const/4 v5, 0x0

    :try_start_b
    iput-boolean v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackPending:Z

    .line 402
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    const/high16 v6, 0x80

    invoke-static {v5, v6}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 405
    .local v4, route:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_28

    move-result-object v2

    .line 406
    .local v2, groupId:Ljava/lang/String;
    if-nez v2, :cond_34

    .line 408
    :try_start_1b
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->switchToLocalDevicePlayback()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_2b

    .line 427
    :goto_20
    :try_start_20
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_8

    .line 394
    .end local v2           #groupId:Ljava/lang/String;
    .end local v4           #route:Ljava/lang/Object;
    :catchall_28
    move-exception v5

    monitor-exit p0

    throw v5

    .line 409
    .restart local v2       #groupId:Ljava/lang/String;
    .restart local v4       #route:Ljava/lang/Object;
    :catch_2b
    move-exception v1

    .line 410
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_2c
    const-string v5, "aah.Music"

    const-string v6, "unable to switch to local playback"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 413
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_34
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v5, v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getAppConnectorForRoute(Ljava/lang/Object;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v3

    .line 414
    .local v3, musicConnector:Landroid/support/place/connector/ConnectorInfo;
    if-nez v3, :cond_55

    .line 415
    const-string v5, "aah.Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to select AtHome group, route="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 419
    :cond_55
    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeUtils;->writeEndPoint(Landroid/support/place/rpc/EndpointInfo;)[B
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_28

    move-result-object v0

    .line 421
    .local v0, config:[B
    :try_start_5d
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5, v0, v2}, Lcom/google/android/music/IMusicPlaybackService;->switchToAtHomeDevicePlayback([BLjava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_20

    .line 422
    :catch_63
    move-exception v1

    .line 423
    .restart local v1       #ex:Landroid/os/RemoteException;
    :try_start_64
    const-string v5, "aah.Music"

    const-string v6, "unable to switch to remote playback"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_28

    goto :goto_20
.end method


# virtual methods
.method public declared-synchronized getSelectedGroupName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectedGroupName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "topLevel"
    .parameter "preferences"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 93
    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 95
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    const/high16 v2, 0x80

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v1, v2, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 101
    check-cast v0, Lcom/google/android/music/MusicApplication;

    .end local v0           #appContext:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/google/android/music/MusicApplication;->getAtHomeMediaRouter()Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    .line 102
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouterCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setCallback(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;)V

    .line 104
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->updateAtHomeState()V

    .line 106
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMusicServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 107
    return-void
.end method

.method public declared-synchronized isAtHomeActive()Z
    .registers 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive(I)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .registers 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setCallback(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 123
    monitor-exit p0

    return-void

    .line 120
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .registers 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaPlayerErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 4

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaPlayerErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 113
    monitor-exit p0

    return-void

    .line 110
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 381
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 382
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 383
    iget v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeState:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;->onAtHomeStateChanged(Lcom/google/android/music/athome/AtHomeStateController;I)V

    .line 384
    return-void

    .line 382
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized selectGroupWhenReady(Ljava/lang/String;)V
    .registers 5
    .parameter "groupId"

    .prologue
    .line 440
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeStateController;->findMediaRouteForGroupId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, route:Ljava/lang/Object;
    if-eqz v0, :cond_13

    .line 443
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMediaRouter:Ljava/lang/Object;

    const/high16 v2, 0x80

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 450
    :goto_11
    monitor-exit p0

    return-void

    .line 448
    :cond_13
    :try_start_13
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_16

    goto :goto_11

    .line 440
    .end local v0           #route:Ljava/lang/Object;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startTungstenPickerInHardkeyMode(I)V
    .registers 7
    .parameter "direction"

    .prologue
    .line 267
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 268
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_10

    .line 269
    const-string v3, "aah.Music"

    const-string v4, "Can not start AtHome controls because there is no selected account"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_f
    :goto_f
    return-void

    .line 273
    :cond_10
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeStateController;->getSelectedRouteGroupId()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, groupId:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, atHomeSelect:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/vnd.google.android.athome.audiooutput"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "volumekeyDirection"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v3, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public unregisterAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 388
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController;->mAtHomeStateListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
