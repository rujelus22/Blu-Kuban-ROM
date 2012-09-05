.class public Lcom/google/android/apps/plus/service/EsService;
.super Landroid/app/Service;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;,
        Lcom/google/android/apps/plus/service/EsService$LocalImageKey;,
        Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;,
        Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;
    }
.end annotation


# static fields
.field private static volatile sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private static final sDismissPeopleLock:Ljava/lang/Object;

.field private static final sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/ImagesCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

.field private static sLastRequestId:Ljava/lang/Integer;

.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/service/EsServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalImageThreadLock:Ljava/lang/Object;

.field private static final sLocalImageThumbnailCache:Lcom/google/android/apps/plus/service/ImagesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/ImagesCache",
            "<",
            "Lcom/google/android/apps/plus/service/EsService$LocalImageKey;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalPendingUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextInt:I

.field private static sOutOfBoxResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPendingIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/PhotoCache",
            "<",
            "Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

.field private mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

.field private final mStopRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sDismissPeopleLock:Ljava/lang/Object;

    .line 283
    sput v3, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    .line 304
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/service/EsService$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sResults:Ljava/util/Map;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    .line 307
    new-instance v0, Lcom/google/android/apps/plus/service/IntentPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/IntentPool;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    .line 308
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/service/EsService$1;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    .line 310
    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$1;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsService$1;-><init>()V

    new-instance v2, Lcom/google/android/apps/plus/service/EsService$2;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsService$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/ImagesCache;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;

    .line 377
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$3;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsService$3;-><init>()V

    new-instance v2, Lcom/google/android/apps/plus/service/EsService$4;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsService$4;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/PhotoCache;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    .line 514
    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$5;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsService$5;-><init>()V

    new-instance v2, Lcom/google/android/apps/plus/service/EsService$6;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsService$6;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/ImagesCache;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThumbnailCache:Lcom/google/android/apps/plus/service/ImagesCache;

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    .line 566
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThreadLock:Ljava/lang/Object;

    .line 568
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalPendingUris:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 586
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;-><init>(Lcom/google/android/apps/plus/service/EsService;Lcom/google/android/apps/plus/service/EsService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    .line 587
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$7;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/EsService$7;-><init>(Lcom/google/android/apps/plus/service/EsService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->doSyncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->doMultipleSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/EsService;->doSyncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->doSyncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 112
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/plus/service/EsService;->downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalPendingUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/android/apps/plus/service/PhotoCache;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/EsService;->doSyncNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/service/EsService;->doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static accountsChanged(Landroid/content/Context;)I
    .registers 4
    .parameter

    .prologue
    .line 707
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 708
    const-string v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static addAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 676
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 677
    const-string v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 680
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static addPeopleToCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/util/ParticipantParcelable;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2004
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2005
    const-string v1, "op"

    const/16 v2, 0x2c8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2006
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2007
    const-string v1, "participant_array"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2008
    const-string v1, "circles_to_add"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static cancelCoverThumbnailLoad(Lcom/google/android/apps/plus/api/MediaRef;I)V
    .registers 4
    .parameter "ref"
    .parameter "cropType"

    .prologue
    .line 1671
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 1672
    .local v0, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/service/PhotoCache;->removePendingLoad(Ljava/lang/Object;)V

    .line 1673
    return-void
.end method

.method public static changeNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2449
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2450
    const-string v1, "op"

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2451
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2452
    const-string v1, "notification_settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2454
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static clearLocalImageThumbnails()V
    .registers 1

    .prologue
    .line 1711
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThumbnailCache:Lcom/google/android/apps/plus/service/ImagesCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImagesCache;->clear()V

    .line 1712
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 6
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 4520
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService$23;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4529
    return-void
.end method

.method public static createActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/ArrayList;)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 860
    const-string v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 862
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 865
    const-string v1, "audience"

    invoke-virtual {p5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 866
    const-string v1, "acl_display"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    if-eqz p7, :cond_38

    .line 868
    const-string v1, "loc"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 871
    :cond_38
    if-eqz p8, :cond_3f

    .line 872
    const-string v1, "media"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 875
    :cond_3f
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static createCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2049
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2050
    const-string v1, "op"

    const/16 v2, 0x2c4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2051
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2052
    const-string v1, "circle_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    const-string v1, "just_following"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2055
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1728
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1729
    const-string v1, "op"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1731
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1733
    const-string v1, "content"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1736
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static createPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1181
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1182
    const-string v1, "op"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1184
    const-string v1, "picasa_photo_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1185
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1188
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1029
    const-string v1, "op"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1031
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v1, "aid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    if-eqz p4, :cond_2d

    .line 1034
    const-string v1, "audience"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1036
    :cond_2d
    const-string v1, "opt_mode"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1038
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static createProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1564
    const-string v1, "op"

    const/16 v2, 0x2cb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1566
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1568
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 948
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 949
    const-string v1, "op"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deleteAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2467
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2468
    const-string v1, "op"

    const/16 v2, 0x3fd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2469
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2470
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2472
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 2091
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2092
    const-string v1, "op"

    const/16 v2, 0x2c5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2093
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2094
    const-string v1, "circle_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2096
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1776
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1777
    const-string v1, "op"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1778
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1779
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1422
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1423
    const-string v1, "op"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    const-string v1, "media_refs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1426
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1203
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1204
    const-string v1, "op"

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1206
    const-string v1, "photo_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1207
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1054
    const-string v1, "op"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1056
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_WRITE_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1060
    const-string v1, "opt_mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static deleteProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1599
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1600
    const-string v1, "op"

    const/16 v2, 0x2cc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1602
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1603
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static dismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 2230
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2231
    const-string v1, "op"

    const/16 v2, 0x2c7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2232
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2233
    const-string v1, "person_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2235
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private doMultipleSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4693
    const-string v0, "circles_to_add"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4694
    .local v5, circlesToAdd:[Ljava/lang/String;
    const-string v0, "circles_to_remove"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4695
    .local v6, circlesToRemove:[Ljava/lang/String;
    const-string v0, "participant_array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 4696
    .local v9, participants:[Landroid/os/Parcelable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_13
    array-length v0, v9

    if-ge v7, v0, :cond_2b

    .line 4697
    aget-object v8, v9, v7

    check-cast v8, Lcom/google/android/apps/plus/util/ParticipantParcelable;

    .line 4698
    .local v8, participant:Lcom/google/android/apps/plus/util/ParticipantParcelable;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/ParticipantParcelable;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/ParticipantParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4696
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 4701
    .end local v8           #participant:Lcom/google/android/apps/plus/util/ParticipantParcelable;
    :cond_2b
    return-void
.end method

.method private doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4676
    const-string v0, "person_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4677
    .local v3, personId:Ljava/lang/String;
    const-string v0, "person_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4678
    .local v4, name:Ljava/lang/String;
    const-string v0, "circles_to_add"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4679
    .local v5, circlesToAdd:[Ljava/lang/String;
    const-string v0, "circles_to_remove"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, circlesToRemove:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4680
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4682
    return-void
.end method

.method private doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4804
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDataAvailable(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z

    move-result v9

    .line 4805
    if-nez v9, :cond_e8

    .line 4806
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4808
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->start()V

    .line 4809
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4810
    instance-of v2, v1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_73

    .line 4813
    const-string v0, "EsService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4814
    const-string v0, "EsService"

    const-string v2, "Could not get the person"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4817
    :cond_2c
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertNewPerson(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p3

    .line 4827
    :goto_30
    new-instance v0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4829
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->start()V

    .line 4830
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->hasError()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 4831
    :cond_4c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_b0

    .line 4832
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set membership: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4818
    :cond_73
    if-eqz v1, :cond_83

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_83

    .line 4819
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not get the person"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4820
    :cond_83
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 4821
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the person: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4823
    :cond_a6
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object p3

    move-object v3, p3

    goto :goto_30

    .line 4835
    :cond_b0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set membership: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4839
    :cond_cd
    if-nez v9, :cond_e7

    .line 4845
    new-instance v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4846
    const-string v0, "New person sync"

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4848
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 4854
    invoke-static {p1, p2, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 4856
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4858
    :cond_e7
    return-void

    :cond_e8
    move-object v3, p3

    goto/16 :goto_30
.end method

.method private doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4646
    new-instance v9, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get activities for circleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4649
    const-string v1, "Activities:SyncStream"

    invoke-virtual {v9, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 4651
    if-nez p6, :cond_51

    const/16 v7, 0xa

    :goto_38
    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    :try_start_40
    invoke-static/range {v1 .. v9}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 4658
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_54

    .line 4662
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 4663
    :goto_4d
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4665
    return-void

    .line 4651
    :cond_51
    const/16 v7, 0xf

    goto :goto_38

    .line 4659
    :catch_54
    move-exception v1

    .line 4660
    :try_start_55
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_66

    .line 4662
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_4d

    :catchall_66
    move-exception v1

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 4663
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4662
    throw v1
.end method

.method private doSyncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4589
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4590
    const-string v0, "Avatar sync"

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4592
    :try_start_a
    invoke-static {p1, p2, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 4593
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p3, v0, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1a

    .line 4597
    :goto_16
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4599
    return-void

    .line 4594
    :catch_1a
    move-exception v0

    .line 4595
    :try_start_1b
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    goto :goto_16

    .line 4597
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v0
.end method

.method private doSyncNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4624
    new-instance v7, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4625
    const-string v0, "Get nearby activities"

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4626
    const-string v0, "Activities:SyncNearby"

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 4628
    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    :try_start_17
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsPostsData;->doNearbyActivitiesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 4631
    const/4 v1, 0x0

    invoke-direct {p0, p6, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_26

    .line 4635
    invoke-virtual {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 4636
    :goto_22
    invoke-virtual {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4638
    return-void

    .line 4632
    :catch_26
    move-exception v0

    .line 4633
    :try_start_27
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-direct {p0, p6, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_36

    .line 4635
    invoke-virtual {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_22

    :catchall_36
    move-exception v0

    invoke-virtual {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 4636
    invoke-virtual {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4635
    throw v0
.end method

.method private doSyncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4606
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4607
    const-string v0, "Notification sync"

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4609
    const/4 v0, 0x0

    :try_start_b
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4610
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p3, v0, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1b

    .line 4614
    :goto_17
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4616
    return-void

    .line 4611
    :catch_1b
    move-exception v0

    .line 4612
    :try_start_1c
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_28

    goto :goto_17

    .line 4614
    :catchall_28
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v0
.end method

.method private doSyncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4572
    new-instance v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4573
    const-string v0, "People sync"

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4575
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 4576
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1f

    .line 4580
    :goto_1b
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4582
    return-void

    .line 4577
    :catch_1f
    move-exception v0

    .line 4578
    :try_start_20
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-direct {p0, p4, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 4580
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v0
.end method

.method private static downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2269
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2270
    const-string v1, "op"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2271
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2272
    const-string v1, "media_ref"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2273
    const-string v1, "width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2275
    const-string v1, "crop_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2278
    return-void
.end method

.method public static editComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1753
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1754
    const-string v1, "op"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1755
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1756
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    const-string v1, "content"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1761
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4539
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4540
    const-string v0, "rid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4541
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4543
    if-eqz p2, :cond_1f

    .line 4545
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sResults:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    :cond_1f
    const-string v0, "from_pool"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4550
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 4554
    :cond_2d
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 4556
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4561
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4562
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4563
    const-string v0, "EsService"

    const-string v1, "completeRequest: Stopping service in 5000 ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :cond_55
    return-void
.end method

.method private static generateRequestId()I
    .registers 3

    .prologue
    .line 5040
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    monitor-enter v1

    .line 5041
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 5042
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3
    .parameter "context"

    .prologue
    .line 2286
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_e

    .line 2287
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 2288
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_c

    .line 2289
    const/4 v1, 0x0

    .line 2295
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :goto_b
    return-object v1

    .line 2291
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_c
    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2295
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_e
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_b
.end method

.method public static getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 796
    const-string v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 798
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getActivityAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 833
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 834
    const-string v1, "op"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 836
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 768
    const-string v0, "op"

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string v0, "acc"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 770
    const-string v0, "view"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    if-eqz p3, :cond_24

    .line 772
    const-string v0, "circle_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    :cond_24
    if-eqz p4, :cond_2b

    .line 775
    const-string v0, "uid"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 777
    :cond_2b
    if-eqz p5, :cond_32

    .line 778
    const-string v0, "cont_token"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    :cond_32
    const-string v2, "newer"

    if-nez p5, :cond_3f

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 780
    :cond_3f
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static getAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2485
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2486
    const-string v1, "op"

    const/16 v2, 0x3fe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2487
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2488
    const-string v1, "share_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2490
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1112
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1113
    const-string v1, "op"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1115
    if-eqz p2, :cond_1f

    .line 1116
    const-string v1, "uid"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1119
    :cond_1f
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1135
    const-string v1, "op"

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1137
    const-string v1, "album_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1138
    const-string v1, "uid"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1140
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "ref"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 1660
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    invoke-direct {v3, p2, p5}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 1661
    .local v3, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/service/PhotoCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCoverThumbnailAsynchronous(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "ref"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 1627
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1628
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$9;

    move-object v1, p2

    move v2, p5

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$9;-><init>(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;II)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1644
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2338
    const-string v1, "com.google.android.apps.plus.notif.clear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2339
    const-string v1, "op"

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2340
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2341
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getDismissSuggestedPeoplePendingRequestCount()I
    .registers 6

    .prologue
    .line 4910
    const/4 v0, 0x0

    .line 4911
    .local v0, count:I
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 4912
    .local v3, pIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 4913
    .local v4, pb:Landroid/os/Bundle;
    const-string v5, "op"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4914
    .local v2, opCode:I
    const/16 v5, 0x2c7

    if-ne v2, v5, :cond_b

    .line 4915
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4919
    .end local v2           #opCode:I
    .end local v3           #pIntent:Landroid/content/Intent;
    .end local v4           #pb:Landroid/os/Bundle;
    :cond_28
    return v0
.end method

.method public static getFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2386
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2387
    const-string v1, "op"

    const/16 v2, 0x2c1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2388
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2389
    const-string v1, "domains"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2391
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2392
    return-void
.end method

.method public static getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "type"
    .parameter "dimension"

    .prologue
    .line 1924
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/ImagesCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "type"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1908
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/ImagesCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalImageAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V
    .registers 10
    .parameter "context"
    .parameter "ref"
    .parameter "maxSize"

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1439
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    .line 1440
    .local v2, uri:Landroid/net/Uri;
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalPendingUris:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1493
    :goto_10
    return-void

    .line 1443
    :cond_11
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalPendingUris:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/service/EsService$8;

    move v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$8;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_10
.end method

.method public static getLocalImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"
    .parameter "mediaRef"

    .prologue
    const/4 v2, 0x0

    .line 1684
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getMaxThumbnailDimension(Landroid/content/Context;I)I

    move-result v5

    .line 1686
    .local v5, size:I
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    invoke-direct {v3, p1, v5, v5}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 1687
    .local v3, id:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThumbnailCache:Lcom/google/android/apps/plus/service/ImagesCache;

    move-object v1, p0

    move-object v4, v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/ImagesCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getLongExtraObj(Landroid/content/Intent;Ljava/lang/String;J)Ljava/lang/Long;
    .registers 8
    .parameter "intent"
    .parameter "param"
    .parameter "defValue"

    .prologue
    .line 4987
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4988
    const-string v1, "uid"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4993
    .local v0, longValue:Ljava/lang/Long;
    :goto_14
    return-object v0

    .line 4990
    .end local v0           #longValue:Ljava/lang/Long;
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #longValue:Ljava/lang/Long;
    goto :goto_14
.end method

.method public static getNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 741
    const-string v0, "op"

    const/16 v2, 0x16

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v0, "acc"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 743
    const-string v0, "view"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v0, "loc"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 745
    if-eqz p4, :cond_29

    .line 746
    const-string v0, "cont_token"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    :cond_29
    const-string v2, "newer"

    if-nez p4, :cond_36

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 748
    :cond_36
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1867
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1868
    const-string v1, "op"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1869
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1870
    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1872
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 5006
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 5007
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 5008
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 5009
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v3

    if-ne v1, v3, :cond_10

    .line 5010
    const/4 v3, 0x1

    .line 5011
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5013
    const-string v8, "rid"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    .line 5015
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_82

    move v1, v2

    .line 5024
    :goto_4e
    if-eqz v1, :cond_10

    .line 5025
    const-string v1, "EsService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 5026
    const-string v1, "EsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Op was pending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "op"

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    :cond_77
    const-string v1, "rid"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5033
    :goto_81
    return-object v0

    .line 5018
    :cond_82
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    move v1, v2

    .line 5020
    goto :goto_4e

    .line 5033
    :cond_92
    const/4 v0, 0x0

    goto :goto_81

    :cond_94
    move v1, v3

    goto :goto_4e
.end method

.method public static getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1404
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1405
    const-string v1, "op"

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1406
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1407
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1408
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1410
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getPhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1363
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1364
    const-string v1, "op"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1367
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1297
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1298
    const-string v1, "op"

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1300
    const-string v1, "uid"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1302
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1939
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1940
    const-string v1, "op"

    const/16 v2, 0x2bf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1941
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1942
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1943
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1945
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getProfilePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1523
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1524
    const-string v1, "op"

    const/16 v2, 0x2ca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1526
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1528
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getRealtimechatLocalImageThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    .line 1702
    new-instance v10, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    move-wide v3, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v10, v0, p2, p3}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 1703
    .local v10, id:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    sget-object v3, Lcom/google/android/apps/plus/service/EsService;->sLocalImageThumbnailCache:Lcom/google/android/apps/plus/service/ImagesCache;

    move-object v4, p0

    move-object v6, v10

    move-object v7, v5

    move v8, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/apps/plus/service/ImagesCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1157
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1158
    const-string v1, "op"

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1160
    const-string v1, "uid"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1161
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v1, "offset"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v1, "max_count"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1579
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1580
    const-string v1, "op"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1582
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1584
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 1585
    return-void
.end method

.method public static isCommentPlusOnePending(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "activityId"
    .parameter "commentId"

    .prologue
    .line 1819
    sget-object v4, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1820
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1821
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1822
    .local v1, opCode:I
    const/16 v4, 0x22

    if-ne v1, v4, :cond_a

    .line 1823
    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "comment_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1825
    const/4 v4, 0x1

    .line 1830
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_3d
    return v4

    :cond_3e
    const/4 v4, 0x0

    goto :goto_3d
.end method

.method public static isOutOfBoxError(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter "t"

    .prologue
    .line 3745
    instance-of v0, p0, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/google/android/apps/plus/api/ServerException;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->OUT_OF_BOX_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isPhotoPlusOnePending(JJJ)Z
    .registers 14
    .parameter "userId"
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    const-wide/16 v6, 0x0

    .line 1247
    sget-object v4, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1248
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1249
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1250
    .local v1, opCode:I
    const/16 v4, 0x38

    if-ne v1, v4, :cond_c

    .line 1251
    const-string v4, "uid"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_c

    const-string v4, "album_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_c

    const-string v4, "photo_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p4

    if-nez v4, :cond_c

    .line 1254
    const/4 v4, 0x1

    .line 1259
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_45
    return v4

    :cond_46
    const/4 v4, 0x0

    goto :goto_45
.end method

.method public static isPostPlusOnePending(Ljava/lang/String;)Z
    .registers 6
    .parameter "activityId"

    .prologue
    .line 1000
    sget-object v4, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1001
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1002
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1003
    .local v1, opCode:I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_28

    const/16 v4, 0x11

    if-ne v1, v4, :cond_a

    .line 1004
    :cond_28
    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1005
    const/4 v4, 0x1

    .line 1010
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_35
    return v4

    :cond_36
    const/4 v4, 0x0

    goto :goto_35
.end method

.method public static isProfilePlusOnePending(J)Z
    .registers 8
    .parameter "gaiaId"

    .prologue
    .line 1540
    sget-object v4, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1541
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1542
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1543
    .local v1, opCode:I
    const/16 v4, 0x2cb

    if-eq v1, v4, :cond_28

    const/16 v4, 0x2cc

    if-ne v1, v4, :cond_a

    .line 1544
    :cond_28
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_a

    .line 1545
    const/4 v4, 0x1

    .line 1550
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_33
    return v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public static isRequestPending(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 628
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static localeChanged(Landroid/content/Context;)I
    .registers 4
    .parameter

    .prologue
    .line 721
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 722
    const-string v1, "op"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2129
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2130
    const-string v1, "op"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2131
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2132
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2134
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static moderateComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1800
    const-string v1, "op"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1802
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    const-string v1, "delete"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1805
    const-string v1, "report"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2070
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2071
    const-string v1, "op"

    const/16 v2, 0x2cd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2072
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2073
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    const-string v1, "circle_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const-string v1, "just_following"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 966
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 967
    const-string v1, "op"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 969
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1319
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1320
    const-string v1, "op"

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1322
    const-string v1, "uid"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1323
    const-string v1, "photo_id"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1324
    const-string v1, "shape_id"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1325
    const-string v1, "approved"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1327
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method protected static onImageDownloadComplete(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .parameter "url"
    .parameter "type"
    .parameter "imageBytes"

    .prologue
    .line 4963
    if-eqz p2, :cond_8

    .line 4964
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;

    invoke-virtual {v2, p0, p2, p1}, Lcom/google/android/apps/plus/service/ImagesCache;->downloadComplete(Ljava/lang/Object;[BLjava/lang/Object;)V

    .line 4974
    :cond_7
    return-void

    .line 4969
    :cond_8
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sImagesCache:Lcom/google/android/apps/plus/service/ImagesCache;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/service/ImagesCache;->downloadFailed(Ljava/lang/Object;)V

    .line 4970
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4971
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1383
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1384
    const-string v1, "op"

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1386
    const-string v1, "uid"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1387
    const-string v1, "photo_ids"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1388
    const-string v1, "type"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1277
    const-string v1, "op"

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1279
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1280
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1281
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1282
    const-string v1, "plus_oned"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1284
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1846
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1847
    const-string v1, "op"

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1848
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1849
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    const-string v1, "plus_oned"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1854
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V
    .registers 4
    .parameter "requestId"
    .parameter "oobResponse"

    .prologue
    .line 644
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-void
.end method

.method public static refreshPhotosFromCircleList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1342
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1343
    const-string v1, "op"

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1345
    const-string v1, "max_count"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1346
    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1347
    if-eqz p2, :cond_28

    .line 1348
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    :cond_28
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 608
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method public static removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 692
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 693
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static removeIncompleteOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 663
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->removeOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 664
    .local v0, oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v1

    if-nez v1, :cond_d

    .end local v0           #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    :goto_c
    return-object v0

    .restart local v0       #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static removeOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 653
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method public static removePeopleFromCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 1984
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1985
    const-string v1, "op"

    const/16 v2, 0x2c6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1986
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1987
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    const-string v1, "person_ids"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1990
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private removePersonFromAllCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4768
    new-instance v0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4770
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->start()V

    .line 4771
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4772
    if-eqz v1, :cond_21

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_21

    .line 4773
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not retrieve person\'s circles"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4774
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4775
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve person\'s circles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4778
    :cond_44
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getCircles()Ljava/util/List;

    move-result-object v0

    .line 4779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4780
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 4781
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v3

    .line 4782
    sget-object v5, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v5, v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 4783
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 4787
    :cond_71
    const-string v9, ""

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4789
    return-void
.end method

.method public static removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 640
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sResults:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ServiceResult;

    return-object v0
.end method

.method public static reportAbuse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2429
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2430
    const-string v1, "op"

    const/16 v2, 0x2c3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2431
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2432
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    const-string v1, "abuse_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2435
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static reportActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 984
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 985
    const-string v1, "op"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 987
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static reportAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2505
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2506
    const-string v1, "op"

    const/16 v2, 0x3ff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2507
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2508
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    const-string v1, "installer_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2511
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static reportPhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;ZZ)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1227
    const-string v1, "op"

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1228
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1229
    const-string v1, "photo_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1230
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v1, "delete"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1232
    const-string v1, "report"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1234
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static reshareActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 926
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 927
    const-string v1, "op"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 932
    const-string v1, "audience"

    invoke-virtual {p5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 933
    const-string v1, "acl_display"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static scheduleDatabaseCleanupAlarm(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    .line 2366
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2367
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2368
    const-string v2, "com.google.android.apps.plus.content.cleanup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2369
    const-string v2, "op"

    const/16 v3, 0x3ed

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2371
    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2373
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2376
    return-void
.end method

.method public static scheduleSyncAlarm(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    .line 2316
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2317
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2318
    const-string v2, "com.google.android.apps.plus.content.sync"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2319
    const-string v2, "op"

    const/16 v3, 0x3ea

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2321
    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2323
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2326
    return-void
.end method

.method public static searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2526
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2527
    const-string v1, "op"

    const/16 v2, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2528
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2529
    const-string v1, "search_query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2530
    const-string v1, "newer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2532
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendOutOfBoxRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1886
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1887
    const-string v1, "op"

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1888
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1889
    const-string v1, "content"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1891
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 2304
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2305
    const-string v1, "EsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveAccount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_27

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_24
    sput-object p0, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2308
    return-void

    .line 2305
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1961
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1962
    const-string v1, "op"

    const/16 v2, 0x2be

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1964
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1965
    const-string v1, "person_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    const-string v1, "circles_to_add"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1967
    const-string v1, "circles_to_remove"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1969
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2406
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2407
    const-string v1, "op"

    const/16 v2, 0x2c2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2408
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2409
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    const-string v1, "blocked"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2412
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1505
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1506
    const-string v1, "op"

    const/16 v2, 0x2c9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1508
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1510
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static setShowCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2110
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2111
    const-string v1, "op"

    const/16 v2, 0x2c0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2112
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2113
    const-string v1, "circles_to_add"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2544
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_16

    .line 2545
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startCommand must be called on the UI thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2548
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->generateRequestId()I

    move-result v1

    .line 2549
    .local v1, requestId:I
    const-string v2, "rid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2551
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    .line 2552
    .local v0, pendingRequestId:Ljava/lang/Integer;
    if-eqz v0, :cond_2f

    .line 2553
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 2555
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2560
    .end local v1           #requestId:I
    :goto_2e
    return v1

    .line 2557
    .restart local v1       #requestId:I
    :cond_2f
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2e
.end method

.method public static syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2247
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2248
    const-string v1, "op"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2249
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2252
    const-string v1, "unique_value"

    sget v2, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2254
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static syncBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2212
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2213
    const-string v1, "op"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2214
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2216
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static syncComplete(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2352
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2353
    const-string v1, "op"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2354
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2355
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2357
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2358
    return-void
.end method

.method public static syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2162
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2163
    const-string v1, "op"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2164
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2166
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Ljava/lang/Integer;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2179
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2180
    const-string v1, "op"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2181
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2182
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2184
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static syncSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2196
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2197
    const-string v1, "op"

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2198
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2200
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static tellServerNotificationsWereRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2146
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2147
    const-string v1, "op"

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2148
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2150
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 617
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public static uploadImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/Integer;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 2026
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 2027
    const-string v0, "op"

    const/16 v2, 0x320

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2028
    const-string v0, "acc"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2029
    const-string v0, "album_title"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    const-string v0, "album_label"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2032
    const-string v2, "stream_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    const-string v0, "media_ref"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2035
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doDeleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4934
    new-instance v0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4936
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->start()V

    .line 4937
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4938
    if-eqz v1, :cond_21

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_21

    .line 4939
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not delete circles"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4940
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4941
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete circles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4946
    :cond_44
    new-instance v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4947
    const-string v0, "People sync after circle deletion"

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4948
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 4950
    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 4952
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 4953
    return-void
.end method

.method protected doDismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4869
    sget-object v6, Lcom/google/android/apps/plus/service/EsService;->sDismissPeopleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4870
    :try_start_3
    const-string v0, "person_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4871
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4872
    new-instance v0, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4874
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->start()V

    .line 4875
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4876
    if-eqz v1, :cond_3f

    .line 4877
    const-string v0, "EsService"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4878
    const-string v0, "EsService"

    const-string v2, "Could not remove from suggested list"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 4903
    :catchall_3c
    move-exception v0

    monitor-exit v6
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0

    .line 4880
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4881
    const-string v1, "EsService"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4882
    const-string v1, "EsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove from suggested list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4889
    :cond_6b
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getDismissSuggestedPeoplePendingRequestCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_74

    .line 4890
    monitor-exit v6

    .line 4904
    :goto_73
    return-void

    .line 4894
    :cond_74
    new-instance v0, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4896
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->start()V

    .line 4897
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4898
    if-eqz v1, :cond_92

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_92

    .line 4899
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not refresh suggested list"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4900
    :cond_92
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 4901
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not refresh suggested list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4903
    :cond_b5
    monitor-exit v6
    :try_end_b6
    .catchall {:try_start_3f .. :try_end_b6} :catchall_3c

    goto :goto_73
.end method

.method protected doReportAbuse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4739
    const-string v0, "person_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4740
    const-string v0, "abuse_type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 4741
    new-instance v0, Lcom/google/android/apps/plus/api/ReportAbuseOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4743
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->start()V

    .line 4744
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4745
    if-eqz v1, :cond_2d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2d

    .line 4746
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not report abuse"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4747
    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4748
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not report abuse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4753
    :cond_50
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 4754
    const-string v1, "Post-report-abuse sync"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 4755
    const/4 v1, 0x1

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 4756
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 4757
    return-void
.end method

.method protected doSetPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4712
    const-string v0, "person_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4713
    const-string v0, "blocked"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 4715
    if-eqz v4, :cond_13

    .line 4716
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/apps/plus/service/EsService;->removePersonFromAllCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 4719
    :cond_13
    new-instance v0, Lcom/google/android/apps/plus/api/SetBlockedOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/SetBlockedOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4721
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->start()V

    .line 4722
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 4723
    if-eqz v1, :cond_32

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_32

    .line 4724
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not block/unblock person"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4725
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 4726
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not block/unblock person: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4728
    :cond_55
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 2603
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 2569
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2570
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mHandler:Landroid/os/Handler;

    .line 2572
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mHandler:Landroid/os/Handler;

    const-string v2, "ServiceThread"

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/apps/plus/service/ServiceThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 2573
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->start()V

    .line 2574
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 2590
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2592
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    if-eqz v0, :cond_f

    .line 2593
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->quit()V

    .line 2594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 2596
    :cond_f
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3758
    const-string v0, "op"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3759
    const-string v1, "rid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3760
    sparse-switch v0, :sswitch_data_986

    .line 4503
    const-string v1, "EsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIntentProcessed: Unhandled op code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    :cond_29
    :goto_29
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/service/EsService;->finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 4509
    return-void

    .line 3763
    :sswitch_2d
    check-cast p3, Lcom/google/android/apps/plus/content/EsAccount;

    .line 3764
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3767
    :cond_3f
    invoke-static {p3}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3768
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 3771
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;

    .line 3774
    :cond_49
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3775
    invoke-virtual {v0, v1, p3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAccountAdded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4f

    .line 3781
    :sswitch_5f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3782
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3783
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAccountRemoved(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_69

    .line 3786
    :cond_81
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    goto :goto_29

    .line 3792
    :sswitch_86
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3793
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "uid"

    const-wide/16 v4, 0x0

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->getLongExtraObj(Landroid/content/Intent;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "circle_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "view"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v5

    const-string v6, "loc"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Location;

    const-string v7, "newer"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "max_length"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivities(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;ZILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_8c

    .line 3803
    :cond_d3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    goto/16 :goto_29

    .line 3808
    :sswitch_d9
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3809
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_df

    .line 3819
    :sswitch_fd
    if-eqz p3, :cond_12a

    .line 3820
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAudience()Lcom/google/android/apps/plus/api/AudienceData;

    move-result-object v4

    .line 3824
    :goto_105
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3825
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivityAudience(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/AudienceData;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_10b

    .line 3822
    :cond_12a
    const/4 v4, 0x0

    goto :goto_105

    .line 3834
    :sswitch_12c
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_132
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3835
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_132

    .line 3843
    :sswitch_150
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_156
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3844
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_156

    .line 3853
    :sswitch_174
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3854
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_17a

    .line 3863
    :sswitch_198
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3864
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_19e

    .line 3873
    :sswitch_1bc
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3874
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_1c2

    .line 3883
    :sswitch_1e0
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3884
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_1e6

    .line 3893
    :sswitch_204
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3894
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "aid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivityPhotos(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_20a

    .line 3903
    :sswitch_228
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3904
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAlbumListComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_22e

    .line 3912
    :sswitch_246
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3913
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAlbumComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_24c

    .line 3921
    :sswitch_264
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3922
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_26a

    .line 3930
    :sswitch_282
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_288
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3931
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreatePhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_288

    .line 3939
    :sswitch_2a0
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3940
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeletePhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_2a6

    .line 3948
    :sswitch_2be
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3949
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportPhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_2c4

    .line 3957
    :sswitch_2dc
    const-string v0, "plus_oned"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3958
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 3959
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3960
    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoPlusOneComplete(ILcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_2f1

    .line 3966
    :sswitch_301
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_307
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3967
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_307

    .line 3975
    :sswitch_31f
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_325
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3976
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "photo_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onNameTagApprovalComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_325

    .line 3985
    :sswitch_346
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3986
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_34c

    .line 3994
    :sswitch_364
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 3995
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_372
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 3996
    invoke-virtual {v2, v1, v0, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotosHomeComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_372

    .line 4002
    :sswitch_382
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4003
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v3

    .line 4005
    const-string v0, "photo_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4008
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    move-object v5, p2

    .line 4009
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3a2

    .line 4019
    :sswitch_3b3
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4020
    const-string v0, "photo_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 4022
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    move-object v5, p2

    .line 4023
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3c9

    .line 4032
    :sswitch_3da
    const-string v0, "media_refs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4035
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4036
    invoke-virtual {v2, v1, v0, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3e8

    .line 4042
    :sswitch_3f8
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3fe
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4043
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3fe

    .line 4053
    :sswitch_423
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_429
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4054
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_429

    .line 4064
    :sswitch_44e
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_454
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4065
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_454

    .line 4075
    :sswitch_479
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_47f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4076
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onModerateComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_47f

    .line 4086
    :sswitch_4a4
    const-string v0, "plus_oned"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 4087
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4b1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4088
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPlusOneComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4b1

    .line 4098
    :sswitch_4d6
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4099
    const-string v2, "aid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4100
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4ea
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4101
    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4ea

    .line 4107
    :sswitch_4fa
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4108
    const-string v2, "aid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4109
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4110
    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_50e

    .line 4116
    :sswitch_51e
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4117
    const-string v0, "plusone_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4119
    if-eqz p3, :cond_55b

    .line 4120
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeopleResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    .line 4125
    :goto_534
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4126
    if-eqz v0, :cond_55d

    .line 4127
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_543
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 4128
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_543

    .line 4122
    :cond_55b
    const/4 v0, 0x0

    goto :goto_534

    .line 4132
    :cond_55d
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_563
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    move-object v4, p2

    .line 4133
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPlusOnePeople(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Set;)V

    goto :goto_563

    .line 4140
    :sswitch_574
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4141
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "loc"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocationQuery(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_57a

    .line 4151
    :sswitch_59a
    if-eqz p3, :cond_5c1

    .line 4152
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getUploadPhotoResponse()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    move-object v3, v0

    .line 4156
    :goto_5a3
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4157
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onImageThumbnailUploaded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_5a9

    .line 4154
    :cond_5c1
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_5a3

    .line 4169
    :sswitch_5c4
    const/4 p2, 0x0

    .line 4170
    goto/16 :goto_29

    .line 4174
    :sswitch_5c7
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5cd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4175
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onChangeNotificationsRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_5cd

    .line 4183
    :sswitch_5e5
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5eb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_603

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4184
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSyncNotifications(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_5eb

    .line 4189
    :cond_603
    const/4 p2, 0x0

    .line 4190
    goto/16 :goto_29

    .line 4195
    :sswitch_606
    check-cast p3, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4196
    if-eqz p3, :cond_611

    .line 4197
    invoke-static {p3}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 4200
    :cond_611
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_617
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4201
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onOobRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_617

    .line 4208
    :sswitch_62f
    const-string v0, "media_ref"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 4209
    const-string v1, "width"

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 4210
    const-string v1, "height"

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4211
    const-string v1, "crop_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4212
    check-cast p3, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getBytes()[B

    move-result-object v2

    .line 4213
    new-instance v1, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    invoke-direct {v1, v0, v6}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 4214
    if-eqz v2, :cond_664

    .line 4215
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->downloadComplete(Ljava/lang/Object;[BLjava/lang/Object;III)V

    .line 4228
    :cond_661
    const/4 p2, 0x0

    .line 4229
    goto/16 :goto_29

    .line 4221
    :cond_664
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/service/PhotoCache;->downloadFailed(Ljava/lang/Object;)V

    .line 4222
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_661

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4223
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4, v6}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_66f

    .line 4233
    :sswitch_681
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_687
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4234
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "content"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_687

    .line 4239
    :cond_6a5
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 4242
    const/4 p2, 0x0

    .line 4243
    goto/16 :goto_29

    .line 4247
    :sswitch_6ac
    check-cast p3, Ljava/util/List;

    .line 4248
    if-eqz p3, :cond_70a

    .line 4249
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e2

    .line 4250
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4251
    const-string v2, "EsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_ACCOUNTS_CHANGED removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6bd

    .line 4255
    :cond_6e2
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_70a

    .line 4256
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4257
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ea

    .line 4258
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4259
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 4267
    :cond_70a
    const/4 p2, 0x0

    .line 4268
    goto/16 :goto_29

    .line 4275
    :sswitch_70d
    const/4 p2, 0x0

    .line 4276
    goto/16 :goto_29

    .line 4280
    :sswitch_710
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_716
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4281
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v3, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetProfileAndContactComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_716

    .line 4291
    :sswitch_737
    const/4 p2, 0x0

    .line 4292
    goto/16 :goto_29

    .line 4297
    :sswitch_73a
    const/4 p2, 0x0

    .line 4298
    goto/16 :goto_29

    .line 4302
    :sswitch_73d
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_743
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4303
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_743

    .line 4310
    :sswitch_75b
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_761
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4311
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onRemovePeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_761

    .line 4318
    :sswitch_779
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4319
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAddPeopleToCirclesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_77f

    .line 4326
    :sswitch_797
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4327
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetBlockedRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_79d

    .line 4334
    :sswitch_7b5
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4335
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportAbuseRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7bb

    .line 4343
    :sswitch_7d3
    const/4 p2, 0x0

    .line 4344
    goto/16 :goto_29

    .line 4348
    :sswitch_7d6
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4349
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateCircleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7dc

    .line 4356
    :sswitch_7f4
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7fa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4357
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onModifyCirclePropertiesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7fa

    .line 4364
    :sswitch_812
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_818
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4365
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_818

    .line 4372
    :sswitch_830
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_836
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4373
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDismissSuggestedPeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_836

    .line 4381
    :sswitch_84e
    const/4 p2, 0x0

    .line 4382
    goto/16 :goto_29

    .line 4386
    :sswitch_851
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 4387
    if-eqz v1, :cond_866

    if-eqz p3, :cond_866

    .line 4391
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_869

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CAMERA_SYNC_ENABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_863
    invoke-static {p0, v1, v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 4397
    :cond_866
    const/4 p2, 0x0

    .line 4398
    goto/16 :goto_29

    .line 4391
    :cond_869
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CAMERA_SYNC_DISABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_863

    .line 4402
    :sswitch_86c
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_872
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4403
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCircleSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_872

    .line 4412
    :sswitch_88a
    const/4 p2, 0x0

    .line 4413
    goto/16 :goto_29

    .line 4419
    :sswitch_88d
    const/4 p2, 0x0

    .line 4420
    goto/16 :goto_29

    .line 4426
    :sswitch_890
    const/4 p2, 0x0

    .line 4427
    goto/16 :goto_29

    .line 4431
    :sswitch_893
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_899
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4432
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_899

    .line 4441
    :sswitch_8b1
    const/4 p2, 0x0

    .line 4442
    goto/16 :goto_29

    .line 4446
    :sswitch_8b4
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4447
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_8ba

    .line 4454
    :sswitch_8d2
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8d8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4455
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_8d8

    .line 4463
    :sswitch_8f0
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4464
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_8f6

    .line 4471
    :sswitch_90e
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_914
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4472
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_914

    .line 4479
    :sswitch_92c
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_932
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4480
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_932

    .line 4487
    :sswitch_94a
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_950
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4488
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_950

    .line 4495
    :sswitch_968
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4496
    const-string v2, "acc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSearchActivitiesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_96e

    .line 3760
    :sswitch_data_986
    .sparse-switch
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_5f
        0x4 -> :sswitch_6ac
        0x5 -> :sswitch_70d
        0xb -> :sswitch_d9
        0xc -> :sswitch_fd
        0xd -> :sswitch_12c
        0xe -> :sswitch_150
        0x10 -> :sswitch_4d6
        0x11 -> :sswitch_4fa
        0x12 -> :sswitch_1bc
        0x13 -> :sswitch_1e0
        0x14 -> :sswitch_198
        0x15 -> :sswitch_174
        0x16 -> :sswitch_86
        0x17 -> :sswitch_86
        0x18 -> :sswitch_51e
        0x1e -> :sswitch_3f8
        0x1f -> :sswitch_423
        0x20 -> :sswitch_44e
        0x21 -> :sswitch_479
        0x22 -> :sswitch_4a4
        0x28 -> :sswitch_204
        0x29 -> :sswitch_574
        0x32 -> :sswitch_228
        0x33 -> :sswitch_246
        0x34 -> :sswitch_264
        0x35 -> :sswitch_282
        0x36 -> :sswitch_2a0
        0x37 -> :sswitch_2be
        0x38 -> :sswitch_2dc
        0x39 -> :sswitch_301
        0x3a -> :sswitch_31f
        0x3b -> :sswitch_346
        0x3c -> :sswitch_364
        0x3d -> :sswitch_382
        0x3e -> :sswitch_3b3
        0x3f -> :sswitch_3da
        0xc9 -> :sswitch_5c4
        0xca -> :sswitch_5e5
        0xcb -> :sswitch_5c4
        0xcc -> :sswitch_5c7
        0x1f4 -> :sswitch_86c
        0x1f5 -> :sswitch_88a
        0x1f6 -> :sswitch_88d
        0x1f7 -> :sswitch_890
        0x258 -> :sswitch_606
        0x2be -> :sswitch_73d
        0x2bf -> :sswitch_710
        0x2c0 -> :sswitch_7d3
        0x2c1 -> :sswitch_737
        0x2c2 -> :sswitch_797
        0x2c3 -> :sswitch_7b5
        0x2c4 -> :sswitch_7d6
        0x2c5 -> :sswitch_812
        0x2c6 -> :sswitch_75b
        0x2c7 -> :sswitch_830
        0x2c8 -> :sswitch_779
        0x2c9 -> :sswitch_893
        0x2ca -> :sswitch_8b1
        0x2cb -> :sswitch_8b4
        0x2cc -> :sswitch_8d2
        0x2cd -> :sswitch_7f4
        0x320 -> :sswitch_59a
        0x3ea -> :sswitch_851
        0x3ec -> :sswitch_681
        0x3ed -> :sswitch_84e
        0x3ef -> :sswitch_62f
        0x3f0 -> :sswitch_73a
        0x3fc -> :sswitch_8f0
        0x3fd -> :sswitch_90e
        0x3fe -> :sswitch_92c
        0x3ff -> :sswitch_94a
        0x44c -> :sswitch_968
    .end sparse-switch
.end method

.method public onServiceThreadEnd()V
    .registers 1

    .prologue
    .line 3742
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/ServiceThread;->put(Landroid/content/Intent;)V

    .line 2582
    const/4 v0, 0x2

    return v0
.end method

.method public processIntent(Landroid/content/Intent;)V
    .registers 16
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 2612
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2613
    const-string v0, "op"

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2614
    const-string v3, "rid"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2615
    const-string v3, "acc"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    .line 2617
    sparse-switch v0, :sswitch_data_af8

    .line 3727
    :try_start_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported op code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3d

    .line 3730
    :catch_3d
    move-exception v0

    .line 3731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3732
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v11, v10, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, p1, v1, v10}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 3734
    :goto_49
    return-void

    .line 2620
    :sswitch_4a
    :try_start_4a
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webupdates"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2626
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setupAccount()V

    .line 2627
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 2630
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 2632
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    .line 2639
    :cond_6e
    :goto_6e
    if-eqz v3, :cond_b0

    .line 2640
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 2641
    new-instance v0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->oob(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 2644
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->start()V

    .line 2645
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->getResponse()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/apps/plus/service/EsService;->putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    .line 2646
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_49

    .line 2633
    :cond_9b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6e

    move-object v3, v10

    .line 2636
    goto :goto_6e

    .line 2648
    :cond_a7
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_49

    .line 2651
    :cond_b0
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_49

    .line 2657
    :sswitch_ba
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 2658
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 2659
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 2664
    :sswitch_d1
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 2666
    const-string v0, "cont_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2668
    const-string v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v4

    .line 2671
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/service/EsService$10;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/EsService$10;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 2686
    :sswitch_fa
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2688
    :goto_10e
    const-string v0, "circle_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2689
    const-string v0, "cont_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2691
    const-string v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v4

    .line 2694
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/service/EsService$11;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/service/EsService$11;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    :cond_135
    move-object v6, v10

    .line 2686
    goto :goto_10e

    .line 2709
    :sswitch_137
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2712
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2713
    if-eqz v1, :cond_14e

    .line 2714
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivity(Ljava/lang/String;)V

    .line 2719
    :goto_149
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2716
    :cond_14e
    const-string v1, "desktop_aid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2717
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityByDesktopId(Ljava/lang/String;)V

    goto :goto_149

    .line 2724
    :sswitch_158
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2727
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityAudience(Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2733
    :sswitch_16d
    const-string v0, "media"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2735
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2736
    const-string v0, "mentions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2738
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v6

    .line 2741
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 2742
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-object v8, v0

    .line 2747
    :goto_19c
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    const-string v1, "acl_display"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2750
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v12, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v12}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-object v3, v0

    .line 2752
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)V

    .line 2754
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    :cond_1b8
    move-object v8, v10

    .line 2744
    goto :goto_19c

    .line 2759
    :sswitch_1ba
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2760
    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2761
    const-string v1, "mentions"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2763
    const-string v1, "audience"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v6

    .line 2765
    const-string v1, "media"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2768
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v8, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v8}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-object v3, v0

    .line 2770
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->editActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)V

    .line 2771
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2776
    :sswitch_1ee
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2777
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2778
    const-string v0, "mentions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2780
    const-string v0, "acl_display"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2781
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 2784
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2786
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v7

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reshareActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2793
    :sswitch_229
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 2796
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 2801
    :goto_241
    const-string v4, "opt_mode"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2803
    if-eqz v4, :cond_265

    .line 2804
    new-instance v4, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2807
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    invoke-virtual {v4, v2, v1, v0}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 2809
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    :cond_263
    move-object v0, v10

    .line 2798
    goto :goto_241

    .line 2811
    :cond_265
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2813
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    invoke-virtual {v4, v2, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 2815
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2821
    :sswitch_27e
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2822
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityPlusOneId(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2825
    if-nez v1, :cond_2b6

    .line 2826
    const-string v1, "EsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No plus one id for activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "No plus one id"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 2832
    :cond_2b6
    const-string v4, "opt_mode"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2834
    if-eqz v4, :cond_2ce

    .line 2835
    new-instance v4, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2838
    invoke-virtual {v4, v1, v0}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2841
    :cond_2ce
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2843
    invoke-virtual {v4, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2850
    :sswitch_2dd
    const-string v0, "plusone_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2851
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2853
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeople(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2859
    :sswitch_2f2
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2860
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2862
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteActivity(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2868
    :sswitch_307
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2871
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->muteActivity(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2877
    :sswitch_31c
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2881
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reportActivity(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2887
    :sswitch_331
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2888
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2890
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityPhotos(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2896
    :sswitch_346
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2898
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2900
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_361

    cmp-long v2, v0, v12

    if-nez v2, :cond_369

    .line 2901
    :cond_361
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 2905
    :goto_364
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2903
    :cond_369
    const/4 v2, 0x1

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfileAlbumList(JZ)V

    goto :goto_364

    .line 2910
    :sswitch_36e
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2911
    const-string v4, "album_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2913
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v6, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2915
    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbum(JJ)V

    .line 2916
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2921
    :sswitch_38d
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2922
    const-string v0, "stream_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2923
    const-string v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2924
    const-string v0, "max_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2926
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-wide v1, v6

    move-object v3, v8

    .line 2928
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(JLjava/lang/String;II)V

    .line 2929
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2934
    :sswitch_3ba
    const-string v0, "picasa_photo_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 2936
    const-string v1, "mentions"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2938
    const-string v4, "text"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2940
    new-instance v5, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v5, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2942
    invoke-virtual {v5, v0, v4, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPhotoComment(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2943
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2948
    :sswitch_3df
    const-string v0, "photo_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2949
    const-string v4, "comment_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2951
    new-instance v5, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v5, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2953
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteComments(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2954
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2959
    :sswitch_405
    const-string v0, "photo_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2960
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2961
    const-string v0, "delete"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2962
    const-string v0, "report"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2964
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2966
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->moderateComments(Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 2968
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2973
    :sswitch_43a
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2974
    const-string v0, "album_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2975
    const-string v0, "photo_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2976
    const-string v0, "plus_oned"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2978
    new-instance v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-wide v1, v8

    move-wide v3, v12

    .line 2981
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->createPlusOnePhoto(JJJZ)V

    .line 2982
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2987
    :sswitch_46a
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2989
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2991
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(J)V

    .line 2992
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 2997
    :sswitch_481
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2998
    const-string v0, "photo_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2999
    const-string v0, "shape_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 3000
    const-string v0, "approved"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 3002
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-wide v1, v8

    move-wide v3, v12

    .line 3004
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createApproveNameTag(JJJZ)V

    .line 3005
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3010
    :sswitch_4b1
    const-string v0, "circle_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3011
    const-string v1, "max_count"

    const/16 v4, 0x32

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3013
    const-string v4, "offset"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3016
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->deleteCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3018
    new-instance v5, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v5, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3020
    invoke-virtual {v5, v0, v1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoConsumptionStream(Ljava/lang/String;II)V

    .line 3021
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3026
    :sswitch_4d8
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3028
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 3029
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3034
    :sswitch_4e7
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 3035
    const-string v0, "photo_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3037
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v9

    .line 3041
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v10

    :cond_506
    :goto_506
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3042
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_506

    .line 3047
    if-nez v4, :cond_523

    .line 3048
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3051
    :cond_523
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPhotoAction(JJLcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)V

    goto :goto_506

    .line 3054
    :cond_52b
    if-nez v4, :cond_538

    .line 3056
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3059
    :cond_538
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3065
    :sswitch_53d
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3066
    const-string v4, "photo_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3068
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v6, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3070
    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhoto(JJ)V

    .line 3071
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3076
    :sswitch_55c
    const-string v0, "media_refs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3079
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3080
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3081
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content_uri"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3083
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_57f
    :goto_57f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 3084
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v7

    if-eqz v7, :cond_57f

    .line 3085
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    .line 3086
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3088
    const-string v0, "?,"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57f

    .line 3093
    :cond_5a5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5ef

    .line 3094
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3095
    add-int/lit8 v6, v0, -0x1

    const-string v7, ")"

    invoke-virtual {v5, v6, v0, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getUploadsUri()Landroid/net/Uri;

    move-result-object v6

    .line 3097
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v7, v6, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3100
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3101
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->deleteLocalFileAndMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    and-int/2addr v1, v0

    goto :goto_5d9

    :cond_5ef
    move v0, v1

    .line 3106
    if-eqz v0, :cond_5fd

    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    :goto_5f7
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    :cond_5fd
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5f7

    .line 3112
    :sswitch_606
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 3114
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3116
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setProfilePhoto([B)V

    .line 3117
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3122
    :sswitch_61b
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3124
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3126
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfilePlusOneData(J)V

    .line 3127
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3132
    :sswitch_632
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3133
    new-instance v4, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3136
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->createProfilePlusOne(J)V

    .line 3137
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3142
    :sswitch_649
    const-string v0, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3143
    const-string v4, "plusone_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3144
    new-instance v5, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v5, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3147
    invoke-virtual {v5, v0, v1, v4}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->deleteProfilePlusOne(JLjava/lang/String;)V

    .line 3148
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3153
    :sswitch_666
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3154
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3155
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3156
    const-string v0, "mentions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3159
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v6, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3161
    invoke-virtual {v6, v1, v4, v5, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3162
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3167
    :sswitch_68f
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3168
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3169
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3170
    const-string v0, "mentions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3173
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v6, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3175
    invoke-virtual {v6, v1, v4, v5, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3176
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3181
    :sswitch_6b8
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3182
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v11

    .line 3184
    :goto_6ca
    array-length v6, v4

    if-ge v0, v6, :cond_6d5

    .line 3185
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3184
    add-int/lit8 v0, v0, 0x1

    goto :goto_6ca

    .line 3188
    :cond_6d5
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3190
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteComments(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3191
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3196
    :sswitch_6e5
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3197
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v11

    .line 3199
    :goto_6f7
    array-length v5, v4

    if-ge v0, v5, :cond_702

    .line 3200
    aget-object v5, v4, v0

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3199
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f7

    .line 3203
    :cond_702
    const-string v0, "delete"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 3204
    const-string v0, "report"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3205
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3207
    const/4 v5, 0x1

    move-object v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->moderateComments(Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 3208
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3213
    :sswitch_722
    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3214
    const-string v1, "comment_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3215
    const-string v4, "plusone_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3217
    const-string v5, "plus_oned"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3218
    new-instance v6, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v6, v2, v3, p1, v7}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3221
    if-eqz v5, :cond_74c

    .line 3222
    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->addPlusOneComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    :goto_747
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3224
    :cond_74c
    invoke-virtual {v6, v0, v1, v4}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->deletePlusOneComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_747

    .line 3231
    :sswitch_750
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3233
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNearbyLocations(Lcom/google/android/apps/plus/api/LocationQuery;)V

    .line 3235
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3240
    :sswitch_767
    const-string v0, "media_ref"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 3241
    const-string v1, "width"

    const/16 v4, 0x10

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3242
    const-string v1, "height"

    const/16 v4, 0x10

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3243
    new-instance v1, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3245
    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/HttpOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3250
    :sswitch_790
    const-string v0, "notif_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3251
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3254
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->getOlderUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)D

    move-result-wide v0

    .line 3257
    cmpl-double v4, v0, v5

    if-lez v4, :cond_7b0

    .line 3259
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3261
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setLastNotificationReadTime(D)V

    .line 3262
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3264
    :cond_7b0
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3271
    :sswitch_7bb
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->markAllNotificationsAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3273
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/service/AndroidNotification;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3276
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->getLatestNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v0

    .line 3278
    cmpl-double v4, v0, v5

    if-lez v4, :cond_7d8

    .line 3280
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3282
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setLastNotificationReadTime(D)V

    .line 3283
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3285
    :cond_7d8
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3291
    :sswitch_7e3
    const-string v0, "notification_settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 3293
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3295
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->changeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    .line 3296
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3301
    :sswitch_7fa
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$12;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$12;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3314
    :sswitch_809
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    .line 3317
    new-instance v1, Lcom/google/android/apps/plus/api/OutOfBoxOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3318
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->oob(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 3319
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->start()V

    .line 3321
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->getResponse()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 3322
    invoke-static {v4, v0}, Lcom/google/android/apps/plus/service/EsService;->putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    .line 3323
    if-eqz v0, :cond_873

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSignupComplete()Z

    move-result v4

    if-eqz v4, :cond_873

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v4

    if-eqz v4, :cond_873

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasRedirectUrl()Z

    move-result v0

    if-eqz v0, :cond_873

    .line 3325
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_84b

    .line 3326
    const-string v0, "EsService"

    const-string v1, "Get account info after signup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_84b
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webupdates"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3336
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setupAccount()V

    .line 3337
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 3340
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 3342
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3344
    :cond_873
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3350
    :sswitch_87e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$13;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsService$13;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3371
    :sswitch_88d
    new-instance v1, Lcom/google/android/apps/plus/api/GetFaviconOperation;

    const-string v0, "domains"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/api/GetFaviconOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3374
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3379
    :sswitch_8a0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$14;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$14;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3398
    :sswitch_8af
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$15;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$15;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3417
    :sswitch_8be
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$16;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$16;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3435
    :sswitch_8cd
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$17;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsService$17;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3463
    :sswitch_8dc
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$18;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$18;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3481
    :sswitch_8eb
    const-string v0, "media_ref"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 3482
    const-string v1, "album_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3483
    const-string v1, "album_label"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3484
    const-string v1, "stream_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v11

    .line 3486
    :goto_90b
    array-length v8, v6

    if-ge v1, v8, :cond_916

    .line 3487
    aget-object v8, v6, v1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3486
    add-int/lit8 v1, v1, 0x1

    goto :goto_90b

    .line 3489
    :cond_916
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3491
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v6

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->uploadPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;)V

    .line 3492
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3497
    :sswitch_92a
    const-string v0, "circles_to_add"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->setShowCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)V

    goto/16 :goto_49

    .line 3503
    :sswitch_935
    const-string v0, "circle_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3504
    const-string v0, "just_following"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3506
    new-instance v1, Lcom/google/android/apps/plus/api/CreateCircleOperation;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/CreateCircleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3508
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3513
    :sswitch_94f
    const-string v0, "circle_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3514
    const-string v0, "circle_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3515
    const-string v0, "just_following"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3517
    new-instance v1, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;

    iget-object v8, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3520
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3525
    :sswitch_96f
    const-string v0, "circle_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3527
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/service/EsService$19;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$19;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3546
    :sswitch_986
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3547
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/service/EsService$20;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$20;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3561
    :sswitch_99e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$21;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$21;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3580
    :sswitch_9ad
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$22;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService$22;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_49

    .line 3593
    :sswitch_9bc
    new-instance v0, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3595
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3600
    :sswitch_9c8
    new-instance v0, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3602
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3607
    :sswitch_9d4
    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->accountsChanged(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 3608
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3613
    :sswitch_9e2
    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsProvider;->localeChanged(Landroid/content/Context;)V

    .line 3614
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3620
    :sswitch_9f0
    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 3621
    if-eqz v0, :cond_a1d

    .line 3623
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v3

    .line 3625
    cmp-long v1, v3, v12

    if-ltz v1, :cond_a0b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v5, 0x36ee80

    cmp-long v1, v3, v5

    if-lez v1, :cond_a1d

    .line 3627
    :cond_a0b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3635
    :cond_a1d
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3637
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3642
    :sswitch_a2f
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3647
    :sswitch_a3a
    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 3648
    if-eqz v0, :cond_a44

    .line 3649
    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 3651
    :cond_a44
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3656
    :sswitch_a4f
    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event;

    .line 3659
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->insert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    .line 3660
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 3665
    :sswitch_a65
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    .line 3668
    const-string v1, "share_token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3669
    const-string v4, "audience"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    .line 3671
    new-instance v5, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v5, v2, v3, p1, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3673
    invoke-virtual {v5, v0, v1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 3674
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3679
    :sswitch_a8e
    const-string v0, "plusone_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3680
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3682
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteAdPlusOne(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3688
    :sswitch_aa3
    const-string v0, "share_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3689
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3691
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAdPlusOne(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3697
    :sswitch_ab8
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3698
    const-string v1, "installer_package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3700
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3702
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reportAdPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_49

    .line 3708
    :sswitch_ad3
    const-string v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3710
    const-string v0, "newer"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3712
    if-nez v0, :cond_af5

    .line 3713
    invoke-static {p0, v3, v1}, Lcom/google/android/apps/plus/util/SearchUtils;->getContinuationToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3719
    :goto_ae6
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3721
    invoke-virtual {v4, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->searchActivities(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V
    :try_end_af3
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_af3} :catch_3d

    goto/16 :goto_49

    :cond_af5
    move-object v0, v10

    .line 3716
    goto :goto_ae6

    .line 2617
    nop

    :sswitch_data_af8
    .sparse-switch
        0x1 -> :sswitch_4a
        0x3 -> :sswitch_ba
        0x4 -> :sswitch_9d4
        0x5 -> :sswitch_9e2
        0xb -> :sswitch_137
        0xc -> :sswitch_158
        0xd -> :sswitch_16d
        0xe -> :sswitch_1ba
        0x10 -> :sswitch_229
        0x11 -> :sswitch_27e
        0x12 -> :sswitch_307
        0x13 -> :sswitch_31c
        0x14 -> :sswitch_2f2
        0x15 -> :sswitch_1ee
        0x16 -> :sswitch_d1
        0x17 -> :sswitch_fa
        0x18 -> :sswitch_2dd
        0x1e -> :sswitch_666
        0x1f -> :sswitch_68f
        0x20 -> :sswitch_6b8
        0x21 -> :sswitch_6e5
        0x22 -> :sswitch_722
        0x28 -> :sswitch_331
        0x29 -> :sswitch_750
        0x32 -> :sswitch_346
        0x33 -> :sswitch_36e
        0x34 -> :sswitch_38d
        0x35 -> :sswitch_3ba
        0x36 -> :sswitch_3df
        0x37 -> :sswitch_405
        0x38 -> :sswitch_43a
        0x39 -> :sswitch_46a
        0x3a -> :sswitch_481
        0x3b -> :sswitch_4b1
        0x3c -> :sswitch_4d8
        0x3d -> :sswitch_4e7
        0x3e -> :sswitch_53d
        0x3f -> :sswitch_55c
        0xc9 -> :sswitch_790
        0xca -> :sswitch_7fa
        0xcb -> :sswitch_7bb
        0xcc -> :sswitch_7e3
        0x1f4 -> :sswitch_986
        0x1f5 -> :sswitch_9ad
        0x1f6 -> :sswitch_9bc
        0x1f7 -> :sswitch_9c8
        0x258 -> :sswitch_809
        0x2be -> :sswitch_8be
        0x2bf -> :sswitch_87e
        0x2c0 -> :sswitch_92a
        0x2c1 -> :sswitch_88d
        0x2c2 -> :sswitch_8a0
        0x2c3 -> :sswitch_8af
        0x2c4 -> :sswitch_935
        0x2c5 -> :sswitch_96f
        0x2c6 -> :sswitch_8cd
        0x2c7 -> :sswitch_99e
        0x2c8 -> :sswitch_8dc
        0x2c9 -> :sswitch_606
        0x2ca -> :sswitch_61b
        0x2cb -> :sswitch_632
        0x2cc -> :sswitch_649
        0x2cd -> :sswitch_94f
        0x320 -> :sswitch_8eb
        0x3ea -> :sswitch_9f0
        0x3ec -> :sswitch_a2f
        0x3ed -> :sswitch_a3a
        0x3ef -> :sswitch_767
        0x3f0 -> :sswitch_a4f
        0x3fc -> :sswitch_a65
        0x3fd -> :sswitch_a8e
        0x3fe -> :sswitch_aa3
        0x3ff -> :sswitch_ab8
        0x44c -> :sswitch_ad3
    .end sparse-switch
.end method
