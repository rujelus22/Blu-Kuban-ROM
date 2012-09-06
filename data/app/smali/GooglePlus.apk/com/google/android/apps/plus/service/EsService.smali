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
        Lcom/google/android/apps/plus/service/EsService$ImageKey;,
        Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;
    }
.end annotation


# static fields
.field private static volatile sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private static final sDismissPeopleLock:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field private static final sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

.field private static sLastCameraMediaLocation:Ljava/lang/String;

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
            "Lcom/google/android/apps/plus/service/EsService$ImageKey;",
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
.field private final ACCOUNT_SYNC_PERIOD_MILLISECONDS:J

.field private mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

.field private final mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

.field private mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

.field private final mStopRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 366
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sDismissPeopleLock:Ljava/lang/Object;

    .line 370
    sput v3, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    .line 391
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/service/EsService$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sResults:Ljava/util/Map;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    .line 394
    new-instance v0, Lcom/google/android/apps/plus/service/IntentPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/IntentPool;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    .line 395
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/service/EsService$1;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    .line 497
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$1;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsService$1;-><init>()V

    new-instance v2, Lcom/google/android/apps/plus/service/EsService$2;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsService$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/PhotoCache;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    .line 561
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 364
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/apps/plus/service/EsService;->ACCOUNT_SYNC_PERIOD_MILLISECONDS:J

    .line 580
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;-><init>(Lcom/google/android/apps/plus/service/EsService;Lcom/google/android/apps/plus/service/EsService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    .line 581
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/EsService$3;-><init>(Lcom/google/android/apps/plus/service/EsService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 138
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/plus/service/EsService;->downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 138
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
    .line 138
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
    .line 138
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
    .line 138
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
    .line 138
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
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->doSyncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/android/apps/plus/service/PhotoCache;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

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
    .line 138
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/EsService;->doSyncNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p8}, Lcom/google/android/apps/plus/service/EsService;->doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void
.end method

.method static accountsChanged(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 717
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 718
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static addAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 670
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 674
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static addPeopleToCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/util/ParticipantParcelable;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "participants"
    .parameter "circlesToAdd"

    .prologue
    .line 2046
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2047
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2048
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2049
    const-string v1, "participant_array"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2050
    const-string v1, "circles_to_add"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "analytics"
    .parameter "info"
    .parameter "uri"
    .parameter "apply"
    .parameter "token"

    .prologue
    .line 2748
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2749
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x899

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2750
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2751
    const-string v1, "analytics"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2752
    const-string v1, "apiInfo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2754
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2755
    const-string v1, "applyPlusOne"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2756
    const-string v1, "token"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2758
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static changeNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "settings"

    .prologue
    .line 2589
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2590
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2591
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2592
    const-string v1, "notification_settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2594
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static clearNetworkTransactionsData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2396
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2397
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x7d1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2398
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2400
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2401
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 6
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 5586
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService$21;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5595
    return-void
.end method

.method public static createActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/ArrayList;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)I
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "aclDisplay"
    .parameter "location"
    .parameter
    .parameter "hangoutData"
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
            ">;",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 873
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p8, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 874
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 876
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 879
    const-string v1, "audience"

    invoke-virtual {p5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 880
    const-string v1, "acl_display"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    if-eqz p7, :cond_38

    .line 882
    const-string v1, "loc"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 885
    :cond_38
    if-eqz p8, :cond_3f

    .line 886
    const-string v1, "media"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 889
    :cond_3f
    if-eqz p9, :cond_46

    .line 890
    const-string v1, "hangout_data"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 893
    :cond_46
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static createCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    .line 2106
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2109
    const-string v1, "circle_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const-string v1, "just_following"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2112
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static createComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "comment"
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
    .line 1803
    .local p5, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1804
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1805
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1806
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    const-string v1, "content"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1811
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static createEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "event"
    .parameter "audience"
    .parameter "externalId"

    .prologue
    .line 2875
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2876
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x387

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2877
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2878
    const-string v1, "event"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/api/services/plusi/model/PlusEventJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2879
    const-string v1, "audience"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2880
    const-string v1, "external_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2882
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static createPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .parameter "commentText"
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
    .line 1243
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1244
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1245
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1246
    const-string v1, "picasa_photo_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1247
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1250
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "id"
    .parameter "audience"
    .parameter "optimisticMode"

    .prologue
    .line 1064
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1066
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private static createPostPlusOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "id"
    .parameter "audience"
    .parameter "optimisticMode"

    .prologue
    .line 1036
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1037
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1039
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v1, "aid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    if-eqz p4, :cond_2d

    .line 1042
    const-string v1, "audience"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1044
    :cond_2d
    const-string v1, "opt_mode"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1046
    return-object v0
.end method

.method public static createProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 1605
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1606
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2cb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1608
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 956
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 957
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 959
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "plusoneId"

    .prologue
    .line 2624
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2625
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3fd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2626
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2627
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2629
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
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
    .line 2148
    .local p2, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2149
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2150
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2151
    const-string v1, "circle_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2153
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"

    .prologue
    .line 1851
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1852
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1853
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1854
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1857
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "eventId"

    .prologue
    .line 2913
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2914
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2915
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2916
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2918
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I
    .registers 5
    .parameter "context"
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
    .line 1530
    .local p1, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1531
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v1, "media_refs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1534
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .parameter "commentIds"

    .prologue
    .line 1293
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1296
    const-string v1, "photo_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1297
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "optimisticMode"

    .prologue
    .line 1098
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1099
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1101
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    const-string v1, "opt_mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static deleteProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "plusOneId"

    .prologue
    .line 1641
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1642
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2cc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1644
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static disableWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3050
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 3051
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x8fd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3052
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3054
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static dismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
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
    .line 2307
    .local p2, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2309
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2310
    const-string v1, "person_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2312
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
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
    .line 5786
    const-string v0, "circles_to_add"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5787
    .local v5, circlesToAdd:[Ljava/lang/String;
    const-string v0, "circles_to_remove"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5788
    .local v6, circlesToRemove:[Ljava/lang/String;
    const-string v0, "participant_array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 5789
    .local v9, participants:[Landroid/os/Parcelable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_13
    array-length v0, v9

    if-ge v7, v0, :cond_2b

    .line 5790
    aget-object v8, v9, v7

    check-cast v8, Lcom/google/android/apps/plus/util/ParticipantParcelable;

    .line 5791
    .local v8, participant:Lcom/google/android/apps/plus/util/ParticipantParcelable;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/ParticipantParcelable;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/ParticipantParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 5789
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 5794
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
    .line 5769
    const-string v0, "person_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5770
    .local v3, personId:Ljava/lang/String;
    const-string v0, "person_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5771
    .local v4, name:Ljava/lang/String;
    const-string v0, "circles_to_add"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5772
    .local v5, circlesToAdd:[Ljava/lang/String;
    const-string v0, "circles_to_remove"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, circlesToRemove:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5773
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 5775
    return-void
.end method

.method private doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "name"
    .parameter "circlesToAdd"
    .parameter "circlesToRemove"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5901
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDataAvailable(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z

    move-result v11

    .line 5902
    .local v11, existingContact:Z
    if-nez v11, :cond_2f

    .line 5903
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5905
    .local v0, gco:Lcom/google/android/apps/plus/api/GetContactOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->start()V

    .line 5906
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getException()Ljava/lang/Exception;

    move-result-object v10

    .line 5907
    .local v10, ex:Ljava/lang/Exception;
    instance-of v2, v10, Ljava/net/ProtocolException;

    if-eqz v2, :cond_62

    .line 5910
    const-string v2, "EsService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5911
    const-string v2, "EsService"

    const-string v3, "Could not get the person"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5914
    :cond_2c
    invoke-static/range {p1 .. p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertNewPerson(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    .end local v0           #gco:Lcom/google/android/apps/plus/api/GetContactOperation;
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    new-instance v1, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5926
    .local v1, op:Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->start()V

    .line 5927
    const-string v2, "EsService"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->logAndThrowExceptionIfFailed(Ljava/lang/String;)V

    .line 5930
    if-nez v11, :cond_61

    .line 5936
    new-instance v4, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5937
    .local v4, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v2, "New person sync"

    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5939
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 5945
    invoke-static {p1, p2, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 5947
    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5949
    .end local v4           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :cond_61
    return-void

    .line 5915
    .end local v1           #op:Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
    .restart local v0       #gco:Lcom/google/android/apps/plus/api/GetContactOperation;
    .restart local v10       #ex:Ljava/lang/Exception;
    :cond_62
    if-eqz v10, :cond_72

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_72

    .line 5916
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not get the person"

    invoke-direct {v2, v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5917
    :cond_72
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 5918
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get the person: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getErrorCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5920
    :cond_95
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object p3

    goto :goto_2f
.end method

.method private doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "circleId"
    .parameter "gaiaId"
    .parameter "continuationToken"
    .parameter "intent"
    .parameter "backgroundOperation"

    .prologue
    .line 5738
    new-instance v9, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5739
    .local v9, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    move/from16 v0, p8

    invoke-virtual {v9, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->setFullSync(Z)V

    .line 5740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get activities for circleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5742
    const-string v1, "Activities:SyncStream"

    invoke-virtual {v9, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 5744
    if-nez p6, :cond_5c

    :try_start_3f
    sget v7, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_FIRST_PAGE_SIZE:I

    :goto_41
    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v9}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v11

    .line 5751
    .local v11, sr:Lcom/google/android/apps/plus/service/ServiceResult;
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v11, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_55} :catch_5f

    .line 5755
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5756
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5758
    .end local v11           #sr:Lcom/google/android/apps/plus/service/ServiceResult;
    :goto_5b
    return-void

    .line 5744
    :cond_5c
    :try_start_5c
    sget v7, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_PAGE_SIZE:I
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5e} :catch_5f

    goto :goto_41

    .line 5752
    :catch_5f
    move-exception v10

    .line 5753
    .local v10, ex:Ljava/lang/Exception;
    :try_start_60
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_74

    .line 5755
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5756
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_5b

    .line 5755
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_74
    move-exception v1

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5756
    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v1
.end method

.method private doSyncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 5655
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5656
    .local v1, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v2, "Avatar sync"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5658
    :try_start_a
    invoke-static {p1, p2, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 5659
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, p3, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1a

    .line 5663
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5665
    :goto_19
    return-void

    .line 5660
    :catch_1a
    move-exception v0

    .line 5661
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1b
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    invoke-direct {p0, p3, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 5663
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_19

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v2
.end method

.method private doSyncNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "location"
    .parameter "continuationToken"
    .parameter "intent"

    .prologue
    .line 5715
    new-instance v8, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5716
    .local v8, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v1, "Get nearby activities"

    invoke-virtual {v8, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5717
    const-string v1, "Activities:SyncNearby"

    invoke-virtual {v8, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 5719
    :try_start_f
    sget v6, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_PAGE_SIZE:I

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doNearbyActivitiesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v10

    .line 5722
    .local v10, sr:Lcom/google/android/apps/plus/service/ServiceResult;
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v10, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_29

    .line 5726
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5727
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5729
    .end local v10           #sr:Lcom/google/android/apps/plus/service/ServiceResult;
    :goto_28
    return-void

    .line 5723
    :catch_29
    move-exception v9

    .line 5724
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2a
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v9}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3e

    .line 5726
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5727
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_28

    .line 5726
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_3e
    move-exception v1

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5727
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v1
.end method

.method private doSyncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 5672
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5673
    .local v1, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v2, "Notification sync"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5675
    const/4 v2, 0x0

    :try_start_b
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5676
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, p3, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1b

    .line 5680
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5682
    :goto_1a
    return-void

    .line 5677
    :catch_1b
    move-exception v0

    .line 5678
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1c
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    invoke-direct {p0, p3, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 5680
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_1a

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v2
.end method

.method private doSyncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "refresh"
    .parameter "intent"

    .prologue
    .line 5638
    new-instance v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5639
    .local v2, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v0, "People sync"

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5641
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 5642
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1f

    .line 5646
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 5648
    :goto_1e
    return-void

    .line 5643
    :catch_1f
    move-exception v6

    .line 5644
    .local v6, ex:Ljava/lang/Exception;
    :try_start_20
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2f

    .line 5646
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_1e

    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_2f
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    throw v0
.end method

.method private static downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "ref"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 2346
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2347
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2348
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2349
    const-string v1, "media_ref"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2350
    const-string v1, "width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2351
    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2352
    const-string v1, "crop_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2354
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2355
    return-void
.end method

.method public static editActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "content"
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
            ">;)I"
        }
    .end annotation

    .prologue
    .line 909
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 910
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 912
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 916
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static editComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "comment"
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
    .line 1828
    .local p5, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1829
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1830
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1831
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v1, "content"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1836
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static editPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "photoId"
    .parameter "commentId"
    .parameter "commentText"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1269
    .local p6, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1270
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1271
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1272
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const-string v1, "picasa_photo_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1274
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    const-string v1, "text"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1278
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static enableAndPerformWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3034
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 3035
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x8fc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3036
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3038
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private fetchC2dmAndProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 7
    .parameter "context"
    .parameter "activeAccount"

    .prologue
    const/4 v1, 0x0

    .line 5686
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;-><init>(J)V

    .line 5688
    .local v0, c2dmClient:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->blockingGetC2dmToken(Landroid/content/Context;)V

    .line 5689
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->hasError()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5698
    :goto_11
    return v1

    .line 5696
    :cond_12
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 5698
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "intent"
    .parameter "serviceResult"

    .prologue
    .line 5605
    const-string v1, "rid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 5606
    const-string v1, "rid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5607
    .local v0, requestId:Ljava/lang/Integer;
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5609
    if-eqz p2, :cond_1f

    .line 5611
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sResults:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5614
    :cond_1f
    const-string v1, "from_pool"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 5616
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 5620
    .end local v0           #requestId:Ljava/lang/Integer;
    :cond_2d
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_55

    .line 5622
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5627
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5628
    const-string v1, "EsService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 5629
    const-string v1, "EsService"

    const-string v2, "completeRequest: Stopping service in 5000 ms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    :cond_55
    return-void
.end method

.method private static generateRequestId()I
    .registers 3

    .prologue
    .line 6123
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sLastRequestId:Ljava/lang/Integer;

    monitor-enter v1

    .line 6124
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

    .line 6125
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
    .line 2423
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_e

    .line 2424
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 2425
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_c

    .line 2426
    const/4 v1, 0x0

    .line 2432
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :goto_b
    return-object v1

    .line 2428
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_c
    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2432
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_e
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_b
.end method

.method public static getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 810
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 811
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 813
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getActivityAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 828
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 829
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "circleId"
    .parameter "gaiaId"
    .parameter "continuationToken"
    .parameter "backgroundOperation"

    .prologue
    .line 781
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 782
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    const-string v1, "view"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    if-eqz p3, :cond_24

    .line 786
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    :cond_24
    if-eqz p4, :cond_2b

    .line 789
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    :cond_2b
    if-eqz p5, :cond_32

    .line 792
    const-string v1, "cont_token"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    :cond_32
    const-string v2, "newer"

    if-nez p5, :cond_44

    const/4 v1, 0x1

    :goto_37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const-string v1, "data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 797
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1

    .line 794
    :cond_44
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public static getAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "shareToken"

    .prologue
    .line 2642
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2643
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3fe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2644
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2645
    const-string v1, "share_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2647
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 1174
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1176
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1177
    if-eqz p2, :cond_1b

    .line 1178
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    :cond_1b
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "albumId"
    .parameter "gaiaId"

    .prologue
    .line 1196
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1199
    const-string v1, "album_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1200
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getCreatePostPlusOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1082
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Landroid/content/Intent;

    move-result-object v6

    .line 1083
    .local v6, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    const/high16 v1, 0x1000

    invoke-static {p0, v0, v6, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2476
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.plus.notif.clear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    const-string v1, "op"

    const/16 v2, 0xce

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2478
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2479
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getDismissSuggestedPeoplePendingRequestCount()I
    .registers 6

    .prologue
    .line 6005
    const/4 v0, 0x0

    .line 6006
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

    .line 6007
    .local v3, pIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 6008
    .local v4, pb:Landroid/os/Bundle;
    const-string v5, "op"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6009
    .local v2, opCode:I
    const/16 v5, 0x2c7

    if-ne v2, v5, :cond_b

    .line 6010
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 6014
    .end local v2           #opCode:I
    .end local v3           #pIntent:Landroid/content/Intent;
    .end local v4           #pb:Landroid/os/Bundle;
    :cond_28
    return v0
.end method

.method public static getEditableActivityContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 847
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 848
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 850
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 2771
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2772
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x385

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2773
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2774
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2775
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2777
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 2829
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2830
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2831
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2832
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2833
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2835
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getEventHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2088
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2089
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2092
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getEventInvitees(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "includeBlackList"

    .prologue
    .line 2811
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2812
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2813
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2814
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2815
    const-string v1, "include_blacklist"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2817
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "domain"

    .prologue
    .line 2524
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2525
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2526
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2527
    const-string v1, "domains"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2529
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2530
    return-void
.end method

.method public static getLastCameraMediaLocation()Ljava/lang/String;
    .registers 1

    .prologue
    .line 6116
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sLastCameraMediaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V
    .registers 5
    .parameter "context"
    .parameter "ref"
    .parameter "maxSize"

    .prologue
    .line 1661
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1662
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/service/EsService$4;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/apps/plus/service/EsService$4;-><init>(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1681
    return-void
.end method

.method public static getNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "location"
    .parameter "continuationToken"

    .prologue
    .line 750
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 751
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 753
    const-string v1, "view"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v1, "loc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 755
    if-eqz p4, :cond_29

    .line 756
    const-string v1, "cont_token"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    :cond_29
    const-string v2, "newer"

    if-nez p4, :cond_36

    const/4 v1, 0x1

    :goto_2e
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1

    .line 758
    :cond_36
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public static getNearbyLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "query"

    .prologue
    .line 1942
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1943
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1944
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1945
    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1947
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2607
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2608
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2609
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2611
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private static getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;
    .registers 14
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    .line 6070
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 6071
    .local v5, nb:Landroid/os/Bundle;
    sget-object v9, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 6072
    .local v6, pIntent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 6073
    .local v8, pb:Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v10

    if-ne v9, v10, :cond_f

    .line 6074
    const/4 v3, 0x1

    .line 6075
    .local v3, match:Z
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6077
    .local v2, key:Ljava/lang/String;
    const-string v9, "rid"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 6079
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 6080
    const/4 v3, 0x0

    .line 6100
    .end local v2           #key:Ljava/lang/String;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_f

    .line 6101
    const-string v9, "EsService"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 6102
    const-string v9, "EsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Op was pending: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "op"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6104
    :cond_76
    const-string v9, "rid"

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 6109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #match:Z
    .end local v6           #pIntent:Landroid/content/Intent;
    .end local v8           #pb:Landroid/os/Bundle;
    :goto_80
    return-object v9

    .line 6083
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #match:Z
    .restart local v6       #pIntent:Landroid/content/Intent;
    .restart local v8       #pb:Landroid/os/Bundle;
    :cond_81
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 6084
    .local v7, pValue:Ljava/lang/Object;
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 6085
    .local v4, nValue:Ljava/lang/Object;
    if-nez v7, :cond_b6

    .line 6086
    const-string v9, "EsService"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 6087
    const-string v9, "EsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pending request id key ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] has value null!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    :cond_b2
    if-eqz v4, :cond_32

    .line 6090
    const/4 v3, 0x0

    .line 6091
    goto :goto_4d

    .line 6093
    :cond_b6
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 6094
    const/4 v3, 0x0

    .line 6095
    goto :goto_4d

    .line 6109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #match:Z
    .end local v4           #nValue:Ljava/lang/Object;
    .end local v6           #pIntent:Landroid/content/Intent;
    .end local v7           #pValue:Ljava/lang/Object;
    .end local v8           #pb:Landroid/os/Bundle;
    :cond_be
    const/4 v9, 0x0

    goto :goto_80
.end method

.method public static getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "photoId"

    .prologue
    .line 1494
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1495
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1496
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1497
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1500
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getPhotoSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 1513
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1514
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1515
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1516
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getPhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1453
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1454
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1457
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 1387
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1389
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1390
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "refresh"

    .prologue
    .line 1981
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1982
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2bf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1983
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1984
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1987
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getRemotePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "ref"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 1758
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    invoke-direct {v3, p2, p5}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 1759
    .local v3, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRemotePhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "ref"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 1702
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1703
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/service/EsService$5;

    move-object v1, p2

    move v2, p5

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$5;-><init>(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;II)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1722
    return-void
.end method

.method public static getStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "streamId"
    .parameter "offset"
    .parameter "maxCount"

    .prologue
    .line 1219
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1221
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1222
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v1, "offset"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1225
    const-string v1, "max_count"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1227
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "fileName"

    .prologue
    .line 2381
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2382
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x460

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2383
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2384
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2386
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 1621
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1622
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1623
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1624
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1626
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 1627
    return-void
.end method

.method public static invitePeopleToEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "audience"

    .prologue
    .line 2950
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2951
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2952
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2953
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2954
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2955
    const-string v1, "audience"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2957
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static isOutOfBoxError(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter "t"

    .prologue
    .line 4585
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

.method public static isPhotoPlusOnePending(Ljava/lang/String;JJ)Z
    .registers 13
    .parameter "gaiaId"
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    const-wide/16 v6, 0x0

    .line 1337
    sget-object v4, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1338
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1339
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1340
    .local v1, opCode:I
    const/16 v4, 0x38

    if-ne v1, v4, :cond_c

    .line 1341
    const-string v4, "gaia_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "album_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_c

    const-string v4, "photo_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_c

    .line 1344
    const/4 v4, 0x1

    .line 1349
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_47
    return v4

    :cond_48
    const/4 v4, 0x0

    goto :goto_47
.end method

.method public static isPostPlusOnePending(Ljava/lang/String;)Z
    .registers 6
    .parameter "activityId"

    .prologue
    .line 1008
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

    .line 1009
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1010
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1011
    .local v1, opCode:I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_28

    const/16 v4, 0x11

    if-ne v1, v4, :cond_a

    .line 1012
    :cond_28
    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1013
    const/4 v4, 0x1

    .line 1018
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_35
    return v4

    :cond_36
    const/4 v4, 0x0

    goto :goto_35
.end method

.method public static isProfilePlusOnePending(Ljava/lang/String;)Z
    .registers 6
    .parameter "gaiaId"

    .prologue
    .line 1582
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

    .line 1583
    .local v2, pIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1584
    .local v3, pb:Landroid/os/Bundle;
    const-string v4, "op"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1585
    .local v1, opCode:I
    const/16 v4, 0x2cb

    if-eq v1, v4, :cond_28

    const/16 v4, 0x2cc

    if-ne v1, v4, :cond_a

    .line 1586
    :cond_28
    const-string v4, "gaia_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1587
    const/4 v4, 0x1

    .line 1592
    .end local v1           #opCode:I
    .end local v2           #pIntent:Landroid/content/Intent;
    .end local v3           #pb:Landroid/os/Bundle;
    :goto_35
    return v4

    :cond_36
    const/4 v4, 0x0

    goto :goto_35
.end method

.method public static isRequestPending(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 622
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static localeChanged(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 731
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 732
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static manageEventGuest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "blacklist"
    .parameter "gaiaId"
    .parameter "email"

    .prologue
    .line 2973
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2974
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2975
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2976
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2977
    const-string v1, "blacklist"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2978
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2979
    const-string v1, "email"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2981
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static markActivitiesAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityIds"

    .prologue
    .line 1119
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1122
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    .line 2186
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2188
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2189
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2191
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static moderateComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "delete"
    .parameter "report"

    .prologue
    .line 1874
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1875
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1877
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1879
    const-string v1, "delete"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1880
    const-string v1, "report"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1882
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    .line 2127
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2cd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2129
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2130
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const-string v1, "circle_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    const-string v1, "just_following"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2134
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 974
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 975
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 977
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "photoId"
    .parameter "shapeId"
    .parameter "approved"

    .prologue
    .line 1409
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1412
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v1, "photo_id"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1414
    const-string v1, "shape_id"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1415
    const-string v1, "approved"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1417
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1473
    .local p3, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1474
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1476
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const-string v1, "photo_ids"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1478
    const-string v1, "type"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JJZ)I
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "albumId"
    .parameter "photoId"
    .parameter "plusOned"

    .prologue
    .line 1366
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1367
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1369
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1371
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1372
    const-string v1, "plus_oned"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1374
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneId"
    .parameter "plusOne"

    .prologue
    .line 1921
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1922
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1924
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    const-string v1, "plusone_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    const-string v1, "plus_oned"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1929
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static postActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Location;)I
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "analytics"
    .parameter "info"
    .parameter "activity"
    .parameter "audience"
    .parameter "externalId"
    .parameter "content"
    .parameter
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/analytics/AnalyticsInfo;",
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2711
    .local p8, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2712
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x898

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2713
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2714
    const-string v1, "analytics"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2715
    const-string v1, "apiInfo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2717
    const-string v1, "activity"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2718
    const-string v1, "audience"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2719
    const-string v1, "external_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2720
    const-string v1, "content"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2721
    const-string v1, "loc"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2724
    if-eqz p8, :cond_3e

    .line 2725
    const-string v1, "media"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2728
    :cond_3e
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static postOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 3018
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 3019
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    .line 3021
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3022
    return-void
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 6054
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 6055
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    .line 6057
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6058
    return-void
.end method

.method private static putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V
    .registers 4
    .parameter "requestId"
    .parameter "oobResponse"

    .prologue
    .line 638
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method

.method public static readEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "pollingToken"
    .parameter "resumeToken"
    .parameter "invitationToken"
    .parameter "fetchNewer"

    .prologue
    .line 2793
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2794
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x38e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2795
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2796
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2797
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2798
    const-string v1, "pollingtoken"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2799
    const-string v1, "resumetoken"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2800
    const-string v1, "invitationtoken"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2801
    const-string v1, "fetchnewer"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2803
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static refreshPhotosFromCircleList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "circleId"

    .prologue
    .line 1432
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1433
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1435
    const-string v1, "max_count"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1437
    if-eqz p2, :cond_28

    .line 1438
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    :cond_28
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 602
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method public static removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 686
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 687
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 690
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static removeIncompleteOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->removeOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    .line 658
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
    .line 647
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sOutOfBoxResponses:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method private removePersonFromAllCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5863
    new-instance v0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5865
    .local v0, guco:Lcom/google/android/apps/plus/api/GetUserCirclesOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->start()V

    .line 5866
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v11

    .line 5867
    .local v11, ex:Ljava/lang/Exception;
    if-eqz v11, :cond_23

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_23

    .line 5868
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not retrieve person\'s circles"

    invoke-direct {v1, v2, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5869
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5870
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve person\'s circles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5873
    :cond_46
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->getCircles()Ljava/util/List;

    move-result-object v10

    .line 5874
    .local v10, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Circles$MobileCircle;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5875
    .local v9, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_53
    :goto_53
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 5876
    .local v8, circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    invoke-virtual {v8}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v13

    .line 5877
    .local v13, type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1, v13}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5878
    invoke-virtual {v8}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 5882
    .end local v8           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .end local v13           #type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :cond_73
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8e

    .line 5883
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 5886
    :cond_8e
    return-void
.end method

.method public static removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 634
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
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "abuseType"

    .prologue
    .line 2569
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2570
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2571
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2572
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    const-string v1, "abuse_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2575
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static reportActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 992
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 993
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 995
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static reportAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "packageName"
    .parameter "installerPackageName"

    .prologue
    .line 2662
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2663
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3ff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2665
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2666
    const-string v1, "installer_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static reportPhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;ZZ)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .parameter "commentIds"
    .parameter "delete"
    .parameter "report"

    .prologue
    .line 1316
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1317
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1319
    const-string v1, "photo_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1320
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string v1, "delete"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1322
    const-string v1, "report"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static reshareActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "aclDisplay"
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
    .line 934
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 935
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    const-string v1, "aid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v1, "mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 940
    const-string v1, "audience"

    invoke-virtual {p5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 941
    const-string v1, "acl_display"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static saveLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "timestamp"

    .prologue
    .line 3068
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 3069
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x960

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3070
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3071
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3073
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static savePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "isFullRes"
    .parameter "description"

    .prologue
    .line 1779
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1780
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1782
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const-string v1, "full_res"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1784
    const-string v1, "description"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static scheduleDatabaseCleanupAlarm(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 2504
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2505
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2506
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.plus.content.cleanup"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2507
    const-string v1, "op"

    const/16 v2, 0x3ed

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2509
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2511
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2514
    return-void
.end method

.method public static scheduleSyncAlarm(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 2454
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2455
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2456
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.plus.content.sync"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2457
    const-string v1, "op"

    const/16 v2, 0x3ea

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2459
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2461
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2464
    return-void
.end method

.method public static searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "searchQuery"
    .parameter "newer"

    .prologue
    .line 2683
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2684
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2685
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2686
    const-string v1, "search_query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2687
    const-string v1, "newer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2689
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendEventRsvp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "rsvpType"

    .prologue
    .line 2852
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2853
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x386

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2854
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2855
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2856
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2857
    const-string v1, "rsvp_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2859
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendOutOfBoxRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "oobRequest"

    .prologue
    .line 1961
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1962
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1964
    const-string v1, "content"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1966
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private static setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 2441
    const-string v0, "EsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2442
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

    .line 2445
    :cond_24
    sput-object p0, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2446
    return-void

    .line 2442
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "name"
    .parameter "circlesToAdd"
    .parameter "circlesToRemove"

    .prologue
    .line 2003
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2004
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2be

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2005
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2006
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    const-string v1, "person_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    const-string v1, "circles_to_add"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    const-string v1, "circles_to_remove"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "name"
    .parameter "blocked"

    .prologue
    .line 2545
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2546
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2547
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2548
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2549
    const-string v1, "person_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2550
    const-string v1, "blocked"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2552
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "photoBytes"

    .prologue
    .line 1547
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1548
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x2c9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1549
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1550
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1552
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2993
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_16

    .line 2994
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startCommand must be called on the UI thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2997
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->generateRequestId()I

    move-result v1

    .line 2998
    .local v1, requestId:I
    const-string v2, "rid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3000
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    .line 3001
    .local v0, pendingRequestId:Ljava/lang/Integer;
    if-eqz v0, :cond_2f

    .line 3002
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3004
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3009
    .end local v1           #requestId:I
    :goto_2e
    return v1

    .line 3006
    .restart local v1       #requestId:I
    :cond_2f
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sPendingIntents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2e
.end method

.method public static syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2324
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2325
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2326
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2329
    const-string v1, "unique_value"

    sget v2, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/google/android/apps/plus/service/EsService;->sNextInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2331
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static syncBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2289
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2290
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2293
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static syncComplete(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "tag"

    .prologue
    .line 2490
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2491
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2492
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2493
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2495
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2496
    return-void
.end method

.method public static syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2219
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2221
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2223
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Ljava/lang/Integer;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "refresh"

    .prologue
    .line 2256
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2257
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2258
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2259
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2261
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static syncSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2273
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2274
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2275
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2277
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static tellServerNotificationsWereRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2203
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2204
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2205
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2207
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 611
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    return-void
.end method

.method private updateEsApiProvider(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    .line 5702
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5703
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5704
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.google.android.apps.plus.content.ApiProvider/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5707
    return-void
.end method

.method public static updateEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 2895
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2896
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x388

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2897
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2898
    const-string v1, "event"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/api/services/plusi/model/PlusEventJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2900
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static updateNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/service/EsService$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/service/EsService$6;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2244
    return-void
.end method

.method public static upgradeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 702
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 703
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static uploadChangedSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2365
    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v2, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2366
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x456

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2367
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2369
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2370
    return-void
.end method

.method public static uploadImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/Integer;
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "albumTitle"
    .parameter "albumLabel"
    .parameter
    .parameter "mediaRef"
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
    .line 2068
    .local p4, streamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/apps/plus/service/EsService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v3, Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2069
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "op"

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2070
    const-string v2, "acc"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2071
    const-string v2, "album_title"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    const-string v2, "album_label"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2073
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2074
    .local v1, streamIdArray:[Ljava/lang/String;
    const-string v2, "stream_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const-string v2, "media_ref"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2077
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected doDeleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "intent"
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
    .local p3, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 6029
    new-instance v0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 6031
    .local v0, op:Lcom/google/android/apps/plus/api/DeleteCirclesOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->start()V

    .line 6032
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 6033
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_21

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_21

    .line 6034
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not delete circles"

    invoke-direct {v1, v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6035
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 6036
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete circles: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6041
    :cond_44
    new-instance v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 6042
    .local v3, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v1, "People sync after circle deletion"

    invoke-virtual {v3, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 6043
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 6045
    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 6047
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 6048
    return-void
.end method

.method protected doDismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5960
    const-string v1, "person_ids"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 5963
    .local v9, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2, v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->deleteFromSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 5965
    sget-object v10, Lcom/google/android/apps/plus/service/EsService;->sDismissPeopleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5966
    :try_start_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5967
    .local v3, personId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5969
    .local v0, op:Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->start()V

    .line 5970
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->getException()Ljava/lang/Exception;

    move-result-object v6

    .line 5971
    .local v6, ex:Ljava/lang/Exception;
    if-eqz v6, :cond_42

    .line 5972
    const-string v1, "EsService"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5973
    const-string v1, "EsService"

    const-string v2, "Could not remove from suggested list"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 5998
    .end local v0           #op:Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;
    .end local v3           #personId:Ljava/lang/String;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_3f
    move-exception v1

    monitor-exit v10
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_3f

    throw v1

    .line 5975
    .restart local v0       #op:Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;
    .restart local v3       #personId:Ljava/lang/String;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_42
    :try_start_42
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5976
    const-string v1, "EsService"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5977
    const-string v1, "EsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not remove from suggested list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5984
    .end local v0           #op:Lcom/google/android/apps/plus/api/DismissSuggestedPersonOperation;
    .end local v3           #personId:Ljava/lang/String;
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_6e
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getDismissSuggestedPeoplePendingRequestCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_77

    .line 5985
    monitor-exit v10

    .line 5999
    :goto_76
    return-void

    .line 5989
    :cond_77
    new-instance v7, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v7, p1, p2, v1, v2}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5991
    .local v7, gspo:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->start()V

    .line 5992
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v6

    .line 5993
    .restart local v6       #ex:Ljava/lang/Exception;
    if-eqz v6, :cond_95

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_95

    .line 5994
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not refresh suggested list"

    invoke-direct {v1, v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5995
    :cond_95
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 5996
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not refresh suggested list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5998
    :cond_b8
    monitor-exit v10
    :try_end_b9
    .catchall {:try_start_42 .. :try_end_b9} :catchall_3f

    goto :goto_76
.end method

.method protected doReportAbuse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
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
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 5833
    const-string v1, "person_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5834
    .local v3, personId:Ljava/lang/String;
    const-string v1, "abuse_type"

    invoke-virtual {p3, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 5835
    .local v4, abuseType:I
    new-instance v0, Lcom/google/android/apps/plus/api/ReportAbuseOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5837
    .local v0, op:Lcom/google/android/apps/plus/api/ReportAbuseOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->start()V

    .line 5838
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 5839
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_2d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2d

    .line 5840
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not report abuse"

    invoke-direct {v1, v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5841
    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5842
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not report abuse: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ReportAbuseOperation;->getErrorCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5847
    :cond_50
    new-instance v8, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 5848
    .local v8, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v1, "Post-report-abuse sync"

    invoke-virtual {v8, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 5849
    invoke-static {p1, p2, v3, v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 5851
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 5852
    return-void
.end method

.method protected doSetPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5805
    const-string v1, "person_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5806
    .local v3, personId:Ljava/lang/String;
    const-string v1, "person_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5807
    .local v4, name:Ljava/lang/String;
    const-string v1, "blocked"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 5809
    .local v5, blocked:Z
    if-eqz v5, :cond_19

    .line 5810
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/apps/plus/service/EsService;->removePersonFromAllCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 5813
    :cond_19
    new-instance v0, Lcom/google/android/apps/plus/api/SetBlockedOperation;

    move-object v1, p1

    move-object v2, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/SetBlockedOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 5815
    .local v0, op:Lcom/google/android/apps/plus/api/SetBlockedOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->start()V

    .line 5816
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getException()Ljava/lang/Exception;

    move-result-object v8

    .line 5817
    .local v8, ex:Ljava/lang/Exception;
    if-eqz v8, :cond_38

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_38

    .line 5818
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not block/unblock person"

    invoke-direct {v1, v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5819
    :cond_38
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 5820
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not block/unblock person: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5822
    :cond_5b
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 3121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 3081
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3083
    sget-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_12

    .line 3084
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    .line 3087
    :cond_12
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceThread;

    sget-object v1, Lcom/google/android/apps/plus/service/EsService;->sHandler:Landroid/os/Handler;

    const-string v2, "ServiceThread"

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/apps/plus/service/ServiceThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 3088
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->start()V

    .line 3089
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 3108
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3110
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    if-eqz v0, :cond_f

    .line 3111
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->quit()V

    .line 3112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 3114
    :cond_f
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 66
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 4598
    move-object/from16 v50, p0

    .line 4599
    .local v50, context:Landroid/content/Context;
    const-string v5, "op"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v55

    .line 4600
    .local v55, opCode:I
    const-string v5, "rid"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 4601
    .local v4, requestId:I
    sparse-switch v55, :sswitch_data_dfc

    .line 5569
    const-string v5, "EsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onIntentProcessed: Unhandled op code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    .end local p3
    :cond_31
    :goto_31
    :sswitch_31
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/plus/service/EsService;->finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 5575
    return-void

    .restart local p3
    :sswitch_35
    move-object/from16 v15, p3

    .line 4604
    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4605
    .local v15, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 4608
    :cond_49
    invoke-static {v15}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4609
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 4612
    :cond_52
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4613
    .local v3, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v15, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAccountAdded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_58

    .line 4619
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_6a
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4620
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_74
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4621
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAccountRemoved(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_74

    .line 4624
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_90
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    goto :goto_31

    .line 4629
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_97
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4630
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4631
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAccountUpgraded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a1

    .line 4639
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_bd
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_c3
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_117

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4640
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "circle_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "view"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v8

    const-string v9, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/tacotruck/proto/Data$Location;

    const-string v10, "newer"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "max_length"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v12, p2

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivities(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;ZILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c3

    .line 4650
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_117
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    goto/16 :goto_31

    .line 4655
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_11f
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_125
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4656
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_125

    .line 4666
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_149
    if-eqz p3, :cond_17b

    .line 4667
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAudience()Lcom/google/android/apps/plus/api/AudienceData;

    move-result-object v7

    .line 4671
    .local v7, audience:Lcom/google/android/apps/plus/api/AudienceData;
    :goto_151
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_157
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4672
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivityAudience(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/AudienceData;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_157

    .line 4669
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v7           #audience:Lcom/google/android/apps/plus/api/AudienceData;
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_17b
    const/4 v7, 0x0

    .restart local v7       #audience:Lcom/google/android/apps/plus/api/AudienceData;
    goto :goto_151

    .line 4682
    .end local v7           #audience:Lcom/google/android/apps/plus/api/AudienceData;
    :sswitch_17d
    if-eqz p3, :cond_1b1

    .line 4683
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getEditableContentResponse()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v12

    .line 4687
    .local v12, response:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    :goto_185
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_18b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4688
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v3

    move v9, v4

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetEditableActivityContent(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_18b

    .line 4685
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_1b1
    const/4 v12, 0x0

    .restart local v12       #response:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    goto :goto_185

    .line 4696
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    :sswitch_1b3
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_1b9
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4697
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_1b9

    .line 4705
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_1dd
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_1e3
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4706
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_1e3

    .line 4715
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_207
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_20d
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4716
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_20d

    .line 4725
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_231
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_237
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4726
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_237

    .line 4735
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_25b
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_261
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4736
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_261

    .line 4745
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_285
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_28b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4746
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_28b

    .line 4755
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_2af
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_2b5
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4756
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetActivityPhotos(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_2b5

    .line 4765
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_2d9
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_2df
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4766
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAlbumListComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_2df

    .line 4774
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_2fb
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_301
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4775
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAlbumComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_301

    .line 4783
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_31d
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_323
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4784
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_323

    .line 4792
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_33f
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_345
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4793
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreatePhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_345

    .line 4801
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_361
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_367
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4802
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEditPhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_367

    .line 4810
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_383
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_389
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4811
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeletePhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_389

    .line 4819
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_3a5
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_3ab
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4820
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportPhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3ab

    .line 4828
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_3c7
    const-string v5, "plus_oned"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v57

    .line 4829
    .local v57, plusOned:Z
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4830
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_3e0
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4831
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v15, v0, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoPlusOneComplete(ILcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3e0

    .line 4837
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v57           #plusOned:Z
    :sswitch_3f4
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_3fa
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4838
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_3fa

    .line 4846
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_416
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_41c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4847
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "photo_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    move-object v13, v3

    move v14, v4

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/apps/plus/service/EsServiceListener;->onNameTagApprovalComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_41c

    .line 4856
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_444
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_44a
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4857
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_44a

    .line 4865
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_466
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4866
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_476
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4867
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v15, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotosHomeComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_476

    .line 4873
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_488
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4874
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v16

    .line 4876
    .local v16, action:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    const-string v5, "photo_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 4879
    .local v17, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_4ae
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object v13, v3

    move v14, v4

    move-object/from16 v18, p2

    .line 4880
    invoke-virtual/range {v13 .. v18}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4ae

    .line 4890
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v16           #action:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .end local v17           #photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_4c2
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 4891
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "photo_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 4893
    .local v21, photoId:J
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_4dc
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v15

    move-object/from16 v23, p2

    .line 4894
    invoke-virtual/range {v18 .. v23}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4dc

    .line 4903
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v21           #photoId:J
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_4f4
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 4904
    .local v52, gaiaId:Ljava/lang/String;
    const/16 v51, 0x0

    .line 4905
    .local v51, downloadAllowed:Z
    if-eqz p3, :cond_506

    .line 4906
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoSettingsResult()Z

    move-result v51

    .line 4909
    :cond_506
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_50c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4910
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, v52

    move/from16 v1, v51

    move-object/from16 v2, p2

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotoSettings(ILjava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_50c

    .line 4916
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v51           #downloadAllowed:Z
    .end local v52           #gaiaId:Ljava/lang/String;
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :sswitch_522
    const-string v5, "full_res"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 4917
    .local v26, isFullRes:Z
    const-string v5, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4919
    .local v27, description:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4920
    .local v25, saveToFile:Ljava/io/File;
    const/16 v28, 0x0

    .line 4921
    .local v28, mimeType:Ljava/lang/String;
    if-eqz p3, :cond_545

    move-object/from16 v61, p3

    .line 4922
    check-cast v61, Lcom/google/android/apps/plus/api/SavePhotoOperation;

    .line 4923
    .local v61, spo:Lcom/google/android/apps/plus/api/SavePhotoOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->getSaveToFile()Ljava/io/File;

    move-result-object v25

    .line 4924
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->getContentType()Ljava/lang/String;

    move-result-object v28

    .line 4927
    .end local v61           #spo:Lcom/google/android/apps/plus/api/SavePhotoOperation;
    :cond_545
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_54b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v29, p2

    .line 4928
    invoke-virtual/range {v23 .. v29}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSavePhoto(ILjava/io/File;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_54b

    .line 4935
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v25           #saveToFile:Ljava/io/File;
    .end local v26           #isFullRes:Z
    .end local v27           #description:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_561
    const-string v5, "media_refs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v54

    check-cast v54, Ljava/util/ArrayList;

    .line 4938
    .local v54, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_571
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4939
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_571

    .line 4945
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v54           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :sswitch_585
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_58b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4946
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v34, p2

    invoke-virtual/range {v29 .. v34}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_58b

    .line 4956
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_5bb
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_5c1
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4957
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v34, p2

    invoke-virtual/range {v29 .. v34}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_5c1

    .line 4967
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_5f1
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_5f7
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4968
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v34, p2

    invoke-virtual/range {v29 .. v34}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_5f7

    .line 4978
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_627
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_62d
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4979
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v34, p2

    invoke-virtual/range {v29 .. v34}, Lcom/google/android/apps/plus/service/EsServiceListener;->onModerateComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_62d

    .line 4989
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_65d
    const-string v5, "plus_oned"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    .line 4990
    .local v34, plusOne:Z
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_66c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 4991
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v35, p2

    invoke-virtual/range {v29 .. v35}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPlusOneComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_66c

    .line 5001
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v34           #plusOne:Z
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_69c
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5002
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 5003
    .local v48, activityId:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_6b4
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5004
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v15, v0, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_6b4

    .line 5010
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v48           #activityId:Ljava/lang/String;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_6c8
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5011
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 5012
    .restart local v48       #activityId:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_6e0
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5013
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v15, v0, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_6e0

    .line 5019
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v48           #activityId:Ljava/lang/String;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_6f4
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5020
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "plusone_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 5022
    .local v38, plusOneId:Ljava/lang/String;
    if-eqz p3, :cond_733

    .line 5023
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeopleResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v12

    .line 5028
    .local v12, response:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    :goto_70e
    new-instance v40, Ljava/util/HashSet;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashSet;-><init>()V

    .line 5029
    .local v40, personIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_735

    .line 5030
    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_71d
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_735

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 5031
    .local v56, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual/range {v56 .. v56}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_71d

    .line 5025
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .end local v40           #personIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v56           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .restart local p3
    :cond_733
    const/4 v12, 0x0

    .restart local v12       #response:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    goto :goto_70e

    .line 5035
    .end local p3
    .restart local v40       #personIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_735
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_73b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v37, v15

    move-object/from16 v39, p2

    .line 5036
    invoke-virtual/range {v35 .. v40}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPlusOnePeople(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Set;)V

    goto :goto_73b

    .line 5043
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v38           #plusOneId:Ljava/lang/String;
    .end local v40           #personIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :sswitch_753
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_759
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5044
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/api/LocationQuery;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocationQuery(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_759

    .line 5054
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_77f
    if-eqz p3, :cond_7a9

    .line 5055
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getUploadPhotoResponse()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v12

    .line 5059
    .local v12, response:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    :goto_787
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_78d
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5060
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v12, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onImageThumbnailUploaded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_78d

    .line 5057
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_7a9
    const/4 v12, 0x0

    .restart local v12       #response:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    goto :goto_787

    .line 5068
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    :sswitch_7ab
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_7b1
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5069
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEventHomeRequestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7b1

    .line 5075
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_7c3
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_7c9
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5076
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7c9

    .line 5082
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_7db
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_7e1
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5083
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetEventActivitiesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7e1

    .line 5089
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_7f3
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_7f9
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5090
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReadEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_7f9

    .line 5096
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_80b
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_811
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5097
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetEventInviteesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_811

    .line 5109
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_823
    const/16 p2, 0x0

    .line 5110
    goto/16 :goto_31

    .line 5114
    :sswitch_827
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_82d
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5115
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onChangeNotificationsRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_82d

    .line 5124
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_849
    if-eqz p3, :cond_873

    .line 5125
    check-cast p3, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNotificationSettingsResponse()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v12

    .line 5129
    .local v12, response:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    :goto_851
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_857
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5130
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0, v12}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetNotificationSettings(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    goto :goto_857

    .line 5127
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .end local v53           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_873
    const/4 v12, 0x0

    .restart local v12       #response:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    goto :goto_851

    .line 5138
    .end local v12           #response:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    :sswitch_875
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_87b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_897

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5139
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSyncNotifications(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_87b

    .line 5144
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_897
    const/16 p2, 0x0

    .line 5145
    goto/16 :goto_31

    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_89b
    move-object/from16 v15, p3

    .line 5150
    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5151
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v15, :cond_8aa

    .line 5152
    invoke-static {v15}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 5153
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 5155
    :cond_8aa
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_8b0
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5156
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onOobRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_8b0

    .line 5163
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_8cc
    const-string v5, "media_ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v58

    check-cast v58, Lcom/google/android/apps/plus/api/MediaRef;

    .line 5164
    .local v58, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const-string v5, "width"

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    .line 5165
    .local v44, width:I
    const-string v5, "height"

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    .line 5166
    .local v45, height:I
    const-string v5, "crop_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 5167
    .local v46, cropType:I
    check-cast p3, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v43

    .line 5168
    .local v43, bitmap:Landroid/graphics/Bitmap;
    new-instance v42, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    move-object/from16 v0, v42

    move-object/from16 v1, v58

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 5169
    .local v42, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    if-eqz v43, :cond_90f

    .line 5170
    sget-object v41, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-virtual/range {v41 .. v46}, Lcom/google/android/apps/plus/service/PhotoCache;->downloadComplete(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    .line 5182
    :cond_90b
    const/16 p2, 0x0

    .line 5183
    goto/16 :goto_31

    .line 5175
    :cond_90f
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sPhotoImageCache:Lcom/google/android/apps/plus/service/PhotoCache;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/google/android/apps/plus/service/PhotoCache;->downloadFailed(Ljava/lang/Object;)V

    .line 5176
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_91c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90b

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5177
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v46

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_91c

    .line 5187
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v42           #key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    .end local v43           #bitmap:Landroid/graphics/Bitmap;
    .end local v44           #width:I
    .end local v45           #height:I
    .end local v46           #cropType:I
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v58           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local p3
    :sswitch_932
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_938
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95a

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5188
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_938

    .line 5193
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_95a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 5196
    const/16 p2, 0x0

    .line 5197
    goto/16 :goto_31

    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_964
    move-object/from16 v60, p3

    .line 5201
    check-cast v60, Ljava/util/List;

    .line 5202
    .local v60, removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v60, :cond_9c8

    .line 5203
    const-string v5, "EsService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_99e

    .line 5204
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_977
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99e

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    .line 5205
    .local v59, removedAccount:Ljava/lang/String;
    const-string v5, "EsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_ACCOUNTS_CHANGED removed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_977

    .line 5209
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v59           #removedAccount:Ljava/lang/String;
    :cond_99e
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v5, :cond_9c8

    .line 5210
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :cond_9a6
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c8

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 5211
    .local v15, account:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sActiveAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a6

    .line 5212
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->setActiveAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 5213
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 5221
    .end local v15           #account:Ljava/lang/String;
    .end local v53           #i$:Ljava/util/Iterator;
    :cond_9c8
    const/16 p2, 0x0

    .line 5222
    goto/16 :goto_31

    .line 5229
    .end local v60           #removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9cc
    const/16 p2, 0x0

    .line 5230
    goto/16 :goto_31

    .line 5234
    :sswitch_9d0
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_9d6
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5235
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "person_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetProfileAndContactComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_9d6

    .line 5245
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_9fa
    const/16 p2, 0x0

    .line 5246
    goto/16 :goto_31

    .line 5251
    :sswitch_9fe
    const/16 p2, 0x0

    .line 5252
    goto/16 :goto_31

    .line 5256
    :sswitch_a02
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a08
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5257
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a08

    .line 5264
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_a24
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a2a
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5265
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onRemovePeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a2a

    .line 5272
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_a46
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a4c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5273
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onAddPeopleToCirclesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a4c

    .line 5280
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_a68
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a6e
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5281
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetBlockedRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a6e

    .line 5288
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_a8a
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_a90
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5289
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportAbuseRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_a90

    .line 5297
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_aac
    const/16 p2, 0x0

    .line 5298
    goto/16 :goto_31

    .line 5302
    :sswitch_ab0
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_ab6
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5303
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateCircleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_ab6

    .line 5310
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_ad2
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_ad8
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5311
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onModifyCirclePropertiesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_ad8

    .line 5318
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_af4
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_afa
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5319
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_afa

    .line 5326
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_b16
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_b1c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5327
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDismissSuggestedPeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_b1c

    .line 5335
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_b38
    const/16 p2, 0x0

    .line 5336
    goto/16 :goto_31

    .line 5340
    :sswitch_b3c
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v47

    .line 5341
    .local v47, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v47, :cond_b55

    if-eqz p3, :cond_b55

    .line 5345
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b59

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CAMERA_SYNC_ENABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_b4e
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 5351
    :cond_b55
    const/16 p2, 0x0

    .line 5352
    goto/16 :goto_31

    .line 5345
    :cond_b59
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CAMERA_SYNC_DISABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_b4e

    .line 5356
    .end local v47           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local p3
    :sswitch_b5c
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_b62
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5357
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCircleSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_b62

    .line 5366
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_b7e
    const/16 p2, 0x0

    .line 5367
    goto/16 :goto_31

    .line 5373
    :sswitch_b82
    const/16 p2, 0x0

    .line 5374
    goto/16 :goto_31

    .line 5380
    :sswitch_b86
    const/16 p2, 0x0

    .line 5381
    goto/16 :goto_31

    .line 5385
    :sswitch_b8a
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_b90
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5386
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_b90

    .line 5395
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_bac
    const/16 p2, 0x0

    .line 5396
    goto/16 :goto_31

    .line 5400
    :sswitch_bb0
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_bb6
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5401
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_bb6

    .line 5408
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_bd2
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_bd8
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5409
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_bd8

    .line 5417
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_bf4
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_bfa
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5418
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_bfa

    .line 5425
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_c16
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_c1c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5426
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c1c

    .line 5433
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_c38
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_c3e
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5434
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c3e

    .line 5441
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_c5a
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_c60
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5442
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onReportAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c60

    .line 5449
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_c7c
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_c82
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5450
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSearchActivitiesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c82

    .line 5457
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_c9e
    const/16 p2, 0x0

    .line 5458
    goto/16 :goto_31

    .line 5462
    :sswitch_ca2
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_ca8
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5463
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_ca8

    .line 5471
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_cc4
    const/16 p2, 0x0

    .line 5472
    goto/16 :goto_31

    .line 5476
    :sswitch_cc8
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_cce
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce0

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5477
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_cce

    .line 5480
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_ce0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_d0b

    sget-object v16, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    .line 5482
    .local v16, action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :goto_ce8
    const-string v5, "analytics"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v49

    check-cast v49, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    .line 5484
    .local v49, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5485
    .local v15, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v49, :cond_31

    if-eqz v16, :cond_31

    .line 5486
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    move-object/from16 v2, v16

    invoke-static {v0, v15, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto/16 :goto_31

    .line 5480
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v16           #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    .end local v49           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_d0b
    sget-object v16, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST_ERROR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_ce8

    .line 5492
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_d0e
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_d14
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d26

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5493
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPlusOneApplyResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_d14

    .line 5496
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_d26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_d51

    sget-object v16, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_WRITE_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    .line 5498
    .restart local v16       #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :goto_d2e
    const-string v5, "analytics"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v49

    check-cast v49, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    .line 5500
    .restart local v49       #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/plus/content/EsAccount;

    .line 5501
    .restart local v15       #account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v49, :cond_31

    if-eqz v16, :cond_31

    .line 5502
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    move-object/from16 v2, v16

    invoke-static {v0, v15, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto/16 :goto_31

    .line 5496
    .end local v15           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v16           #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    .end local v49           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_d51
    sget-object v16, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_WRITE_PLUSONE_ERROR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_d2e

    .line 5508
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_d54
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_d5a
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5509
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onSendEventRsvpComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_d5a

    .line 5515
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_d6c
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_d72
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5516
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onCreateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_d72

    .line 5522
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_d84
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_d8a
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5523
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onUpdateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_d8a

    .line 5529
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_d9c
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_da2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5530
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onDeleteEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_da2

    .line 5536
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_db4
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_dba
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5537
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetEventThemesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_dba

    .line 5543
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_dcc
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_dd2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5544
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEventInviteComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_dd2

    .line 5550
    .end local v3           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v53           #i$:Ljava/util/Iterator;
    :sswitch_de4
    sget-object v5, Lcom/google/android/apps/plus/service/EsService;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :goto_dea
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 5551
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsServiceListener;->onEventManageGuestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_dea

    .line 4601
    :sswitch_data_dfc
    .sparse-switch
        0x1 -> :sswitch_35
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_964
        0x5 -> :sswitch_9cc
        0x6 -> :sswitch_97
        0xb -> :sswitch_11f
        0xc -> :sswitch_149
        0xd -> :sswitch_1b3
        0xe -> :sswitch_1dd
        0x10 -> :sswitch_69c
        0x11 -> :sswitch_6c8
        0x12 -> :sswitch_25b
        0x13 -> :sswitch_285
        0x14 -> :sswitch_231
        0x15 -> :sswitch_207
        0x16 -> :sswitch_bd
        0x17 -> :sswitch_bd
        0x18 -> :sswitch_6f4
        0x19 -> :sswitch_823
        0x1a -> :sswitch_17d
        0x1e -> :sswitch_585
        0x1f -> :sswitch_5bb
        0x20 -> :sswitch_5f1
        0x21 -> :sswitch_627
        0x22 -> :sswitch_65d
        0x28 -> :sswitch_2af
        0x29 -> :sswitch_753
        0x32 -> :sswitch_2d9
        0x33 -> :sswitch_2fb
        0x34 -> :sswitch_31d
        0x35 -> :sswitch_33f
        0x36 -> :sswitch_383
        0x37 -> :sswitch_3a5
        0x38 -> :sswitch_3c7
        0x39 -> :sswitch_3f4
        0x3a -> :sswitch_416
        0x3b -> :sswitch_444
        0x3c -> :sswitch_466
        0x3d -> :sswitch_488
        0x3e -> :sswitch_4c2
        0x3f -> :sswitch_561
        0x40 -> :sswitch_361
        0x41 -> :sswitch_4f4
        0x42 -> :sswitch_522
        0xc9 -> :sswitch_823
        0xca -> :sswitch_875
        0xcb -> :sswitch_823
        0xcc -> :sswitch_827
        0xcd -> :sswitch_849
        0xce -> :sswitch_823
        0x1f4 -> :sswitch_b5c
        0x1f5 -> :sswitch_b7e
        0x1f6 -> :sswitch_b82
        0x1f7 -> :sswitch_b86
        0x258 -> :sswitch_89b
        0x2be -> :sswitch_a02
        0x2bf -> :sswitch_9d0
        0x2c0 -> :sswitch_aac
        0x2c1 -> :sswitch_9fa
        0x2c2 -> :sswitch_a68
        0x2c3 -> :sswitch_a8a
        0x2c4 -> :sswitch_ab0
        0x2c5 -> :sswitch_af4
        0x2c6 -> :sswitch_a24
        0x2c7 -> :sswitch_b16
        0x2c8 -> :sswitch_a46
        0x2c9 -> :sswitch_b8a
        0x2ca -> :sswitch_bac
        0x2cb -> :sswitch_bb0
        0x2cc -> :sswitch_bd2
        0x2cd -> :sswitch_ad2
        0x320 -> :sswitch_77f
        0x384 -> :sswitch_7ab
        0x385 -> :sswitch_7c3
        0x386 -> :sswitch_d54
        0x387 -> :sswitch_d6c
        0x388 -> :sswitch_d84
        0x389 -> :sswitch_db4
        0x38a -> :sswitch_dcc
        0x38b -> :sswitch_d9c
        0x38d -> :sswitch_7db
        0x38e -> :sswitch_7f3
        0x38f -> :sswitch_80b
        0x3ea -> :sswitch_b3c
        0x3ec -> :sswitch_932
        0x3ed -> :sswitch_b38
        0x3ef -> :sswitch_8cc
        0x3f0 -> :sswitch_9fe
        0x3f1 -> :sswitch_de4
        0x3fc -> :sswitch_bf4
        0x3fd -> :sswitch_c16
        0x3fe -> :sswitch_c38
        0x3ff -> :sswitch_c5a
        0x44c -> :sswitch_c7c
        0x456 -> :sswitch_c9e
        0x460 -> :sswitch_ca2
        0x7d0 -> :sswitch_cc4
        0x7d1 -> :sswitch_cc4
        0x898 -> :sswitch_cc8
        0x899 -> :sswitch_d0e
        0x8fc -> :sswitch_31
        0x8fd -> :sswitch_31
        0x960 -> :sswitch_31
    .end sparse-switch
.end method

.method public onServiceThreadEnd()V
    .registers 1

    .prologue
    .line 4582
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 3096
    if-eqz p1, :cond_7

    .line 3097
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/ServiceThread;->put(Landroid/content/Intent;)V

    .line 3100
    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method public processIntent(Landroid/content/Intent;)V
    .registers 194
    .parameter "intent"

    .prologue
    .line 3130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/service/EsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 3131
    .local v7, context:Landroid/content/Context;
    const-string v5, "op"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v164

    .line 3132
    .local v164, opCode:I
    const-string v5, "rid"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v178

    .line 3133
    .local v178, requestId:I
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/content/EsAccount;

    .line 3135
    .local v8, account:Lcom/google/android/apps/plus/content/EsAccount;
    sparse-switch v164, :sswitch_data_1412

    .line 4567
    :try_start_23
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported op code: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v164

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_3e

    .line 4570
    :catch_3e
    move-exception v144

    .line 4571
    .local v144, ex:Ljava/lang/Exception;
    invoke-virtual/range {v144 .. v144}, Ljava/lang/Exception;->printStackTrace()V

    .line 4572
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v144

    invoke-direct {v5, v6, v12, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 4574
    .end local v144           #ex:Ljava/lang/Exception;
    :goto_53
    return-void

    .line 3138
    :sswitch_54
    :try_start_54
    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "webupdates"

    invoke-static {v7, v5, v6}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3144
    .local v22, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setupAccount()V

    .line 3145
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 3148
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 3150
    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v139

    .line 3157
    .local v139, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :goto_7a
    if-eqz v139, :cond_100

    .line 3158
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 3159
    new-instance v161, Lcom/google/android/apps/plus/api/OutOfBoxOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v161

    move-object/from16 v1, v139

    invoke-direct {v0, v7, v1, v5, v6}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3161
    .local v161, oob:Lcom/google/android/apps/plus/api/OutOfBoxOperation;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v5

    move-object/from16 v0, v161

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->oob(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 3162
    invoke-virtual/range {v161 .. v161}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->start()V

    .line 3163
    invoke-virtual/range {v161 .. v161}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->getResponse()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v5

    move/from16 v0, v178

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/service/EsService;->putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    .line 3164
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v161

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v139

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_53

    .line 3151
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v161           #oob:Lcom/google/android/apps/plus/api/OutOfBoxOperation;
    :cond_b7
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 3152
    move-object/from16 v139, v8

    .restart local v139       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    goto :goto_7a

    .line 3154
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_c4
    const/16 v139, 0x0

    .restart local v139       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    goto :goto_7a

    .line 3166
    :cond_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-direct {v0, v7, v1}, Lcom/google/android/apps/plus/service/EsService;->fetchC2dmAndProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 3167
    invoke-virtual/range {v139 .. v139}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/google/android/apps/plus/service/EsService;->updateEsApiProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 3168
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v139

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3170
    :cond_ec
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v6, 0x0

    const-string v12, "Failed to get C2DM registration."

    const/4 v13, 0x0

    invoke-direct {v5, v6, v12, v13}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v139

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3175
    :cond_100
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3181
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :sswitch_111
    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 3182
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/google/android/apps/plus/service/EsService;->updateEsApiProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 3183
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3188
    :sswitch_12d
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsAccountsData;->upgradeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3189
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3194
    :sswitch_13f
    const-string v5, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3196
    .local v10, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const-string v5, "cont_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3198
    .local v11, continuationToken:Ljava/lang/String;
    const-string v5, "view"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v9

    .line 3201
    .local v9, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    new-instance v13, Ljava/lang/Thread;

    new-instance v5, Lcom/google/android/apps/plus/service/EsService$7;

    move-object/from16 v6, p0

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/plus/service/EsService$7;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v13, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 3216
    .end local v9           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v10           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v11           #continuationToken:Ljava/lang/String;
    :sswitch_170
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3217
    .local v18, gaiaId:Ljava/lang/String;
    const-string v5, "circle_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3218
    .local v17, circleId:Ljava/lang/String;
    const-string v5, "cont_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3220
    .restart local v11       #continuationToken:Ljava/lang/String;
    const-string v5, "view"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v9

    .line 3222
    .restart local v9       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const-string v5, "data"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 3224
    .local v21, backgroundOperation:Z
    new-instance v5, Ljava/lang/Thread;

    new-instance v12, Lcom/google/android/apps/plus/service/EsService$8;

    move-object/from16 v13, p0

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    move-object/from16 v20, p1

    invoke-direct/range {v12 .. v21}, Lcom/google/android/apps/plus/service/EsService$8;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    invoke-direct {v5, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 3239
    .end local v9           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v11           #continuationToken:Ljava/lang/String;
    .end local v17           #circleId:Ljava/lang/String;
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v21           #backgroundOperation:Z
    :sswitch_1b6
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3242
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3243
    .local v24, activityId:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivity(Ljava/lang/String;)V

    .line 3244
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3249
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    :sswitch_1d7
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3252
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityAudience(Ljava/lang/String;)V

    .line 3253
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3258
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_1f6
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3261
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getEditableActivityContent(Ljava/lang/String;)V

    .line 3262
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3267
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_215
    const-string v5, "media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 3269
    .local v30, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3270
    .local v25, content:Ljava/lang/String;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3272
    .local v26, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v27

    .line 3274
    .local v27, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v5, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3275
    .restart local v10       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const-string v5, "hangout_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v31

    check-cast v31, Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 3278
    .local v31, hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3279
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "acl_display"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3281
    .local v28, aclDisplay:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v23, v7

    move-object/from16 v29, v10

    .line 3283
    invoke-virtual/range {v22 .. v31}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)V

    .line 3285
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3290
    .end local v10           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v25           #content:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v28           #aclDisplay:Ljava/lang/String;
    .end local v30           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v31           #hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    :sswitch_278
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3291
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3292
    .restart local v25       #content:Ljava/lang/String;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3295
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3297
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->editActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 3298
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3303
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v25           #content:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    :sswitch_2af
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3304
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3305
    .restart local v25       #content:Ljava/lang/String;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3307
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const-string v5, "acl_display"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3308
    .restart local v28       #aclDisplay:Ljava/lang/String;
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v27

    .line 3311
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3313
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const/16 v5, 0x20

    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v28}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reshareActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V

    .line 3315
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3320
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v25           #content:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v28           #aclDisplay:Ljava/lang/String;
    :sswitch_2f8
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3322
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34b

    .line 3323
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v27

    .line 3328
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_316
    const-string v5, "opt_mode"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v165

    .line 3330
    .local v165, optimisticMode:Z
    if-eqz v165, :cond_34e

    .line 3331
    new-instance v174, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v174

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3334
    .local v174, ppo:Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;
    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v5

    move-object/from16 v0, v174

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 3337
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/service/EsService;->updateNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3338
    invoke-virtual/range {v174 .. v174}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3325
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v165           #optimisticMode:Z
    .end local v174           #ppo:Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;
    :cond_34b
    const/16 v27, 0x0

    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    goto :goto_316

    .line 3340
    .restart local v165       #optimisticMode:Z
    :cond_34e
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3342
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 3344
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3350
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v165           #optimisticMode:Z
    :sswitch_375
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3351
    .restart local v24       #activityId:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityPlusOneId(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v173

    .line 3354
    .local v173, plusOneId:Ljava/lang/String;
    if-nez v173, :cond_3b7

    .line 3355
    const-string v5, "EsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No plus one id for activity: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v6, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/net/ProtocolException;

    const-string v14, "No plus one id"

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v12, v13}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3361
    :cond_3b7
    const-string v5, "opt_mode"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v165

    .line 3363
    .restart local v165       #optimisticMode:Z
    if-eqz v165, :cond_3dd

    .line 3364
    new-instance v174, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v174

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3367
    .restart local v174       #ppo:Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;
    move-object/from16 v0, v174

    move-object/from16 v1, v173

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    invoke-virtual/range {v174 .. v174}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3370
    .end local v174           #ppo:Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;
    :cond_3dd
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3372
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v173

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3379
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v165           #optimisticMode:Z
    .end local v173           #plusOneId:Ljava/lang/String;
    :sswitch_3f8
    const-string v5, "plusone_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v173

    .line 3380
    .restart local v173       #plusOneId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3382
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeople(Ljava/lang/String;)V

    .line 3383
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3388
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v173           #plusOneId:Ljava/lang/String;
    :sswitch_419
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3389
    .restart local v24       #activityId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3391
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteActivity(Ljava/lang/String;)V

    .line 3392
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3397
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    :sswitch_43a
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3398
    .restart local v24       #activityId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3400
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->muteActivity(Ljava/lang/String;)V

    .line 3401
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3406
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    :sswitch_45b
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3408
    .restart local v24       #activityId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3410
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reportActivity(Ljava/lang/String;)V

    .line 3411
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3416
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    :sswitch_47c
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v140

    .line 3419
    .local v140, activityIds:[Ljava/lang/String;
    new-instance v155, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v155

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3421
    .local v155, maro:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v155

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->markActivitiesAsRead([Ljava/lang/String;)V

    .line 3422
    invoke-virtual/range {v155 .. v155}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3427
    .end local v140           #activityIds:[Ljava/lang/String;
    .end local v155           #maro:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_49d
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3428
    .restart local v24       #activityId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3430
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityPhotos(Ljava/lang/String;)V

    .line 3431
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3436
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    :sswitch_4ba
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3438
    .restart local v18       #gaiaId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3440
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    if-eqz v18, :cond_4d9

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e1

    .line 3441
    :cond_4d9
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 3445
    :goto_4dc
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3443
    :cond_4e1
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfileAlbumList(Ljava/lang/String;Z)V

    goto :goto_4dc

    .line 3450
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_4ea
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3451
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "album_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v44

    .line 3453
    .local v44, albumId:J
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3455
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbum(Ljava/lang/String;J)V

    .line 3456
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3461
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v44           #albumId:J
    :sswitch_517
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3462
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "stream_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v185

    .line 3463
    .local v185, streamId:Ljava/lang/String;
    const-string v5, "offset"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v160

    .line 3464
    .local v160, offset:I
    const-string v5, "max_count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v167

    .line 3466
    .local v167, pageSize:I
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3468
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v185

    move/from16 v3, v160

    move/from16 v4, v167

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3469
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3474
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v160           #offset:I
    .end local v167           #pageSize:I
    .end local v185           #streamId:Ljava/lang/String;
    :sswitch_558
    const-string v5, "picasa_photo_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v34

    check-cast v34, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 3476
    .local v34, photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3478
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const-string v5, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3480
    .local v36, text:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3482
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPhotoComment(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3483
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3488
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v34           #photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .end local v36           #text:Ljava/lang/String;
    :sswitch_591
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3489
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "picasa_photo_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v34

    check-cast v34, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 3491
    .restart local v34       #photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3493
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3494
    .local v35, commentId:Ljava/lang/String;
    const-string v5, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3496
    .restart local v36       #text:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v32, v22

    move-object/from16 v33, v24

    move-object/from16 v37, v26

    .line 3498
    invoke-virtual/range {v32 .. v37}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->editPhotoComment(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3499
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3504
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v34           #photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .end local v35           #commentId:Ljava/lang/String;
    .end local v36           #text:Ljava/lang/String;
    :sswitch_5d8
    const-string v5, "photo_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v46

    .line 3505
    .local v46, photoId:J
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v143

    .line 3507
    .local v143, commentIds:[Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3509
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v143 .. v143}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v12, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v12}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteComments(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3510
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3515
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v46           #photoId:J
    .end local v143           #commentIds:[Ljava/lang/String;
    :sswitch_60a
    const-string v5, "photo_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v46

    .line 3516
    .restart local v46       #photoId:J
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v143

    .line 3517
    .restart local v143       #commentIds:[Ljava/lang/String;
    const-string v5, "delete"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v40

    .line 3518
    .local v40, delete:Z
    const-string v5, "report"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 3520
    .local v41, report:Z
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3522
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v143 .. v143}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    const/16 v42, 0x0

    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v42}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->moderateComments(Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 3524
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3529
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v40           #delete:Z
    .end local v41           #report:Z
    .end local v46           #photoId:J
    .end local v143           #commentIds:[Ljava/lang/String;
    :sswitch_64f
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3530
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "album_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v44

    .line 3531
    .restart local v44       #albumId:J
    const-string v5, "photo_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v46

    .line 3532
    .restart local v46       #photoId:J
    const-string v5, "plus_oned"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v48

    .line 3534
    .local v48, plusOned:Z
    new-instance v22, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .local v22, eso:Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;
    move-object/from16 v42, v22

    move-object/from16 v43, v18

    .line 3537
    invoke-virtual/range {v42 .. v48}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->createPlusOnePhoto(Ljava/lang/String;JJZ)V

    .line 3538
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3543
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;
    .end local v44           #albumId:J
    .end local v46           #photoId:J
    .end local v48           #plusOned:Z
    :sswitch_68d
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3545
    .restart local v18       #gaiaId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3547
    .local v22, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(Ljava/lang/String;)V

    .line 3548
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3553
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_6ae
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3554
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "photo_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v46

    .line 3555
    .restart local v46       #photoId:J
    const-string v5, "shape_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v53

    .line 3556
    .local v53, shapeId:J
    const-string v5, "approved"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v55

    .line 3558
    .local v55, approved:Z
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v49, v22

    move-object/from16 v50, v18

    move-wide/from16 v51, v46

    .line 3560
    invoke-virtual/range {v49 .. v55}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createApproveNameTag(Ljava/lang/String;JJZ)V

    .line 3561
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3566
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v46           #photoId:J
    .end local v53           #shapeId:J
    .end local v55           #approved:Z
    :sswitch_6ee
    const-string v5, "circle_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3567
    .restart local v17       #circleId:Ljava/lang/String;
    const-string v5, "max_count"

    const/16 v6, 0x32

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v169

    .line 3569
    .local v169, photoCount:I
    const-string v5, "offset"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v171

    .line 3572
    .local v171, photoOffset:I
    move-object/from16 v0, v17

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->deleteCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3574
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3576
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v169

    move/from16 v3, v171

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoConsumptionStream(Ljava/lang/String;II)V

    .line 3577
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3582
    .end local v17           #circleId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v169           #photoCount:I
    .end local v171           #photoOffset:I
    :sswitch_72b
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3584
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 3585
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3590
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_740
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3591
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "photo_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v170

    check-cast v170, Ljava/util/ArrayList;

    .line 3593
    .local v170, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v138

    .line 3596
    .local v138, action:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    const/16 v22, 0x0

    .line 3597
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v170 .. v170}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v148

    .local v148, i$:Ljava/util/Iterator;
    :cond_764
    :goto_764
    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_797

    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    .line 3598
    .local v34, photoId:Ljava/lang/Long;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    if-eqz v5, :cond_764

    .line 3603
    if-nez v22, :cond_789

    .line 3604
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3607
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_789
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v138

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPhotoAction(Ljava/lang/String;JLcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)V

    goto :goto_764

    .line 3610
    .end local v34           #photoId:Ljava/lang/Long;
    :cond_797
    if-nez v22, :cond_7a8

    .line 3612
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3615
    :cond_7a8
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3621
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v138           #action:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .end local v148           #i$:Ljava/util/Iterator;
    .end local v170           #photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_7ad
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3622
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "photo_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v46

    .line 3624
    .restart local v46       #photoId:J
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3626
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhoto(Ljava/lang/String;J)V

    .line 3627
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3632
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v46           #photoId:J
    :sswitch_7da
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3634
    .restart local v18       #gaiaId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3636
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoSettings(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3642
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_7fb
    const-string v5, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 3643
    .local v60, url:Ljava/lang/String;
    new-instance v56, Lcom/google/android/apps/plus/api/SavePhotoOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v61, v0

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move-object/from16 v59, p1

    invoke-direct/range {v56 .. v61}, Lcom/google/android/apps/plus/api/SavePhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3645
    .local v56, spo:Lcom/google/android/apps/plus/api/SavePhotoOperation;
    invoke-virtual/range {v56 .. v56}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3650
    .end local v56           #spo:Lcom/google/android/apps/plus/api/SavePhotoOperation;
    .end local v60           #url:Ljava/lang/String;
    :sswitch_819
    const-string v5, "media_refs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v157

    check-cast v157, Ljava/util/ArrayList;

    .line 3653
    .local v157, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    new-instance v154, Ljava/util/ArrayList;

    invoke-direct/range {v154 .. v154}, Ljava/util/ArrayList;-><init>()V

    .line 3654
    .local v154, localUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v153, Ljava/util/ArrayList;

    invoke-direct/range {v153 .. v153}, Ljava/util/ArrayList;-><init>()V

    .line 3655
    .local v153, localUriStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content_uri"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v190

    .line 3657
    .local v190, whereInClause:Ljava/lang/StringBuilder;
    invoke-virtual/range {v157 .. v157}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v148

    .restart local v148       #i$:Ljava/util/Iterator;
    :cond_83e
    :goto_83e
    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86c

    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Lcom/google/android/apps/plus/api/MediaRef;

    .line 3658
    .local v156, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual/range {v156 .. v156}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v5

    if-eqz v5, :cond_83e

    .line 3659
    invoke-virtual/range {v156 .. v156}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v152

    .line 3660
    .local v152, localUri:Landroid/net/Uri;
    move-object/from16 v0, v154

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3661
    invoke-virtual/range {v152 .. v152}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v153

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3662
    const-string v5, "?,"

    move-object/from16 v0, v190

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83e

    .line 3666
    .end local v152           #localUri:Landroid/net/Uri;
    .end local v156           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_86c
    const/16 v184, 0x1

    .line 3667
    .local v184, status:Z
    invoke-virtual/range {v154 .. v154}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8bd

    .line 3668
    invoke-virtual/range {v190 .. v190}, Ljava/lang/StringBuilder;->length()I

    move-result v191

    .line 3669
    .local v191, whereInClauseLength:I
    add-int/lit8 v5, v191, -0x1

    const-string v6, ")"

    move-object/from16 v0, v190

    move/from16 v1, v191

    invoke-virtual {v0, v5, v1, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    sget-object v189, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 3671
    .local v189, uploadsUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {v190 .. v190}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v153

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object/from16 v0, v189

    invoke-virtual {v6, v0, v12, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3674
    invoke-virtual/range {v154 .. v154}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v148

    :goto_8a4
    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8bd

    invoke-interface/range {v148 .. v148}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/net/Uri;

    .line 3675
    .restart local v152       #localUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v152

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->deleteLocalFileAndMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    and-int v184, v184, v5

    goto :goto_8a4

    .line 3680
    .end local v152           #localUri:Landroid/net/Uri;
    .end local v189           #uploadsUri:Landroid/net/Uri;
    .end local v191           #whereInClauseLength:I
    :cond_8bd
    if-eqz v184, :cond_8ce

    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    :goto_8c4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    :cond_8ce
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v6, v12, v13}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8c4

    .line 3686
    .end local v148           #i$:Ljava/util/Iterator;
    .end local v153           #localUriStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v154           #localUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v157           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v184           #status:Z
    .end local v190           #whereInClause:Ljava/lang/StringBuilder;
    :sswitch_8d7
    const-string v5, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v168

    .line 3688
    .local v168, photoBytes:[B
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3690
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setProfilePhoto([B)V

    .line 3691
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3696
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v168           #photoBytes:[B
    :sswitch_8f8
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3698
    .restart local v18       #gaiaId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3700
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfilePlusOneData(Ljava/lang/String;)V

    .line 3701
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3706
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_919
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3707
    .restart local v18       #gaiaId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3710
    .local v61, op:Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;
    move-object/from16 v0, v61

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->createProfilePlusOne(Ljava/lang/String;)V

    .line 3711
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3716
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v61           #op:Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;
    :sswitch_93a
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3717
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "plusone_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v173

    .line 3718
    .restart local v173       #plusOneId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3721
    .restart local v61       #op:Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;
    move-object/from16 v0, v61

    move-object/from16 v1, v18

    move-object/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->deleteProfilePlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3727
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v61           #op:Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;
    .end local v173           #plusOneId:Ljava/lang/String;
    :sswitch_965
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3728
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3729
    .restart local v35       #commentId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3730
    .restart local v25       #content:Ljava/lang/String;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3733
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3735
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3736
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3741
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v25           #content:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v35           #commentId:Ljava/lang/String;
    :sswitch_9a6
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3742
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3743
    .restart local v35       #commentId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3744
    .restart local v25       #content:Ljava/lang/String;
    const-string v5, "mentions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3747
    .restart local v26       #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3749
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3750
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3755
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v25           #content:Ljava/lang/String;
    .end local v26           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .end local v35           #commentId:Ljava/lang/String;
    :sswitch_9e7
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3756
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v143

    .line 3757
    .restart local v143       #commentIds:[Ljava/lang/String;
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 3758
    .local v39, comments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v147, 0x0

    .local v147, i:I
    :goto_9fe
    move-object/from16 v0, v143

    array-length v5, v0

    move/from16 v0, v147

    if-ge v0, v5, :cond_a0f

    .line 3759
    aget-object v5, v143, v147

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3758
    add-int/lit8 v147, v147, 0x1

    goto :goto_9fe

    .line 3762
    :cond_a0f
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3764
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteComments(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3765
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3770
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v39           #comments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v143           #commentIds:[Ljava/lang/String;
    .end local v147           #i:I
    :sswitch_a2b
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3771
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v143

    .line 3772
    .restart local v143       #commentIds:[Ljava/lang/String;
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 3773
    .restart local v39       #comments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v147, 0x0

    .restart local v147       #i:I
    :goto_a42
    move-object/from16 v0, v143

    array-length v5, v0

    move/from16 v0, v147

    if-ge v0, v5, :cond_a53

    .line 3774
    aget-object v5, v143, v147

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3773
    add-int/lit8 v147, v147, 0x1

    goto :goto_a42

    .line 3777
    :cond_a53
    const-string v5, "delete"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v40

    .line 3778
    .restart local v40       #delete:Z
    const-string v5, "report"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 3779
    .restart local v41       #report:Z
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3781
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    const/16 v42, 0x1

    move-object/from16 v37, v22

    move-object/from16 v38, v24

    invoke-virtual/range {v37 .. v42}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->moderateComments(Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 3782
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3787
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v39           #comments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v40           #delete:Z
    .end local v41           #report:Z
    .end local v143           #commentIds:[Ljava/lang/String;
    .end local v147           #i:I
    :sswitch_a80
    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3788
    .restart local v24       #activityId:Ljava/lang/String;
    const-string v5, "comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3789
    .restart local v35       #commentId:Ljava/lang/String;
    const-string v5, "plusone_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v173

    .line 3791
    .restart local v173       #plusOneId:Ljava/lang/String;
    const-string v5, "plus_oned"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v172

    .line 3792
    .local v172, plusOne:Z
    new-instance v22, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3795
    .local v22, eso:Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;
    if-eqz v172, :cond_abe

    .line 3796
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->addPlusOneComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    :goto_ab9
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3798
    :cond_abe
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    move-object/from16 v3, v173

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->deletePlusOneComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab9

    .line 3806
    .end local v22           #eso:Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;
    .end local v24           #activityId:Ljava/lang/String;
    .end local v35           #commentId:Ljava/lang/String;
    .end local v172           #plusOne:Z
    .end local v173           #plusOneId:Ljava/lang/String;
    :sswitch_aca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    if-eqz v5, :cond_ae1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->isAborted()Z

    move-result v5

    if-nez v5, :cond_ae1

    .line 3808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->abort()V

    .line 3811
    :cond_ae1
    new-instance v5, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, p1

    invoke-direct {v5, v7, v8, v0, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .line 3813
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const-string v5, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNearbyLocations(Lcom/google/android/apps/plus/api/LocationQuery;)V

    .line 3815
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mNearbyLocationsOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3820
    :sswitch_b0a
    const-string v5, "media_ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v74

    check-cast v74, Lcom/google/android/apps/plus/api/MediaRef;

    .line 3821
    .local v74, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const-string v5, "width"

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v65

    .line 3822
    .local v65, width:I
    const-string v5, "height"

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v66

    .line 3823
    .local v66, height:I
    const-string v5, "crop_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v67

    .line 3824
    .local v67, cropType:I
    new-instance v61, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;

    invoke-virtual/range {v74 .. v74}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v69, v0

    move-object/from16 v62, v7

    move-object/from16 v63, v8

    move-object/from16 v68, p1

    invoke-direct/range {v61 .. v69}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IIILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3826
    .local v61, op:Lcom/google/android/apps/plus/network/HttpOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/network/HttpOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3831
    .end local v61           #op:Lcom/google/android/apps/plus/network/HttpOperation;
    .end local v65           #width:I
    .end local v66           #height:I
    .end local v67           #cropType:I
    .end local v74           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :sswitch_b4b
    const-string v5, "notif_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v159

    .line 3833
    .local v159, notificationId:Ljava/lang/String;
    move-object/from16 v0, v159

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3834
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3840
    .end local v159           #notificationId:Ljava/lang/String;
    :sswitch_b67
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsNotificationData;->markAllNotificationsAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3842
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/service/AndroidNotification;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3845
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsNotificationData;->getLatestNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v175

    .line 3847
    .local v175, readTimestamp:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v175, v5

    if-lez v5, :cond_b90

    .line 3849
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3851
    .local v22, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-wide/from16 v1, v175

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setLastNotificationReadTime(D)V

    .line 3852
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3854
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_b90
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3861
    .end local v175           #readTimestamp:D
    :sswitch_b9f
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsNotificationData;->markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3863
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/service/AndroidNotification;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3864
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3869
    :sswitch_bb4
    const-string v5, "notification_settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v182

    check-cast v182, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 3871
    .local v182, settings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3873
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->changeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    .line 3874
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3879
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v182           #settings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    :sswitch_bd7
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3881
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNotificationSettings()V

    .line 3882
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3887
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :sswitch_bec
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$9;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 3900
    :sswitch_bff
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v162

    .line 3903
    .local v162, oobRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    new-instance v61, Lcom/google/android/apps/plus/api/OutOfBoxOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3905
    .local v61, op:Lcom/google/android/apps/plus/api/OutOfBoxOperation;
    move-object/from16 v0, v61

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->oob(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 3906
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->start()V

    .line 3908
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->getResponse()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v163

    .line 3909
    .local v163, oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    move/from16 v0, v178

    move-object/from16 v1, v163

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->putOutOfBoxResponse(ILcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    .line 3910
    if-eqz v163, :cond_cbd

    invoke-virtual/range {v163 .. v163}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSignupComplete()Z

    move-result v5

    if-eqz v5, :cond_cbd

    invoke-virtual/range {v163 .. v163}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v5

    if-eqz v5, :cond_cbd

    .line 3912
    const-string v5, "EsService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c47

    .line 3913
    const-string v5, "EsService"

    const-string v6, "Get account info after signup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    :cond_c47
    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "webupdates"

    invoke-static {v7, v5, v6}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3921
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3923
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setupAccount()V

    .line 3924
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 3926
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v5

    if-nez v5, :cond_c6b

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    if-eqz v5, :cond_c7c

    .line 3927
    :cond_c6b
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3930
    :cond_c7c
    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v139

    .line 3932
    .restart local v139       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-direct {v0, v7, v1}, Lcom/google/android/apps/plus/service/EsService;->fetchC2dmAndProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v5

    if-eqz v5, :cond_ca9

    .line 3933
    invoke-virtual/range {v139 .. v139}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/google/android/apps/plus/service/EsService;->updateEsApiProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 3934
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v139

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3936
    :cond_ca9
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v6, 0x0

    const-string v12, "Failed to get C2DM registration."

    const/4 v13, 0x0

    invoke-direct {v5, v6, v12, v13}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v139

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3941
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_cbd
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    move-object/from16 v0, v61

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 3947
    .end local v61           #op:Lcom/google/android/apps/plus/api/OutOfBoxOperation;
    .end local v162           #oobRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .end local v163           #oobResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    :sswitch_cce
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1, v7, v8}, Lcom/google/android/apps/plus/service/EsService$10;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 3974
    :sswitch_ce1
    new-instance v68, Lcom/google/android/apps/plus/api/GetFaviconOperation;

    const-string v5, "domains"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v73, v0

    move-object/from16 v69, v7

    move-object/from16 v70, v8

    move-object/from16 v72, p1

    invoke-direct/range {v68 .. v73}, Lcom/google/android/apps/plus/api/GetFaviconOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3977
    .local v68, gfo:Lcom/google/android/apps/plus/api/GetFaviconOperation;
    invoke-virtual/range {v68 .. v68}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->startThreaded()V

    goto/16 :goto_53

    .line 3982
    .end local v68           #gfo:Lcom/google/android/apps/plus/api/GetFaviconOperation;
    :sswitch_cff
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$11;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4001
    :sswitch_d12
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$12;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4020
    :sswitch_d25
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$13;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4038
    :sswitch_d38
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1, v7, v8}, Lcom/google/android/apps/plus/service/EsService$14;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4066
    :sswitch_d4b
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$15;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4084
    :sswitch_d5e
    const-string v5, "media_ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v74

    check-cast v74, Lcom/google/android/apps/plus/api/MediaRef;

    .line 4085
    .restart local v74       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    const-string v5, "album_title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 4086
    .local v71, albumTitle:Ljava/lang/String;
    const-string v5, "album_label"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 4087
    .local v72, albumLabel:Ljava/lang/String;
    const-string v5, "stream_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v186

    .line 4088
    .local v186, streamIdArray:[Ljava/lang/String;
    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v73}, Ljava/util/ArrayList;-><init>()V

    .line 4089
    .local v73, streamIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v147, 0x0

    .restart local v147       #i:I
    :goto_d87
    move-object/from16 v0, v186

    array-length v5, v0

    move/from16 v0, v147

    if-ge v0, v5, :cond_d98

    .line 4090
    aget-object v5, v186, v147

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4089
    add-int/lit8 v147, v147, 0x1

    goto :goto_d87

    .line 4092
    :cond_d98
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v69, v22

    move-object/from16 v70, v7

    .line 4094
    invoke-virtual/range {v69 .. v74}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->uploadPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 4095
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4100
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v71           #albumTitle:Ljava/lang/String;
    .end local v72           #albumLabel:Ljava/lang/String;
    .end local v73           #streamIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v74           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v147           #i:I
    .end local v186           #streamIdArray:[Ljava/lang/String;
    :sswitch_db1
    new-instance v61, Lcom/google/android/apps/plus/api/EventHomePageOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/EventHomePageOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4102
    .local v61, op:Lcom/google/android/apps/plus/api/EventHomePageOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/EventHomePageOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4107
    .end local v61           #op:Lcom/google/android/apps/plus/api/EventHomePageOperation;
    :sswitch_dc3
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4108
    .local v78, eventId:Ljava/lang/String;
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 4109
    .local v79, ownerId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/GetEventOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v81, v0

    move-object/from16 v75, v61

    move-object/from16 v76, v7

    move-object/from16 v77, v8

    move-object/from16 v80, p1

    invoke-direct/range {v75 .. v81}, Lcom/google/android/apps/plus/api/GetEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4111
    .local v61, op:Lcom/google/android/apps/plus/api/GetEventOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/GetEventOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4116
    .end local v61           #op:Lcom/google/android/apps/plus/api/GetEventOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v79           #ownerId:Ljava/lang/String;
    :sswitch_deb
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4117
    .restart local v78       #eventId:Ljava/lang/String;
    const-string v5, "pollingtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 4118
    .local v84, pollingToken:Ljava/lang/String;
    const-string v5, "resumetoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 4119
    .local v85, resumeToken:Ljava/lang/String;
    const-string v5, "invitationtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 4120
    .local v86, invitationToken:Ljava/lang/String;
    const-string v5, "fetchnewer"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v87

    .line 4121
    .local v87, fetchNewer:Z
    new-instance v61, Lcom/google/android/apps/plus/api/EventReadOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v89, v0

    move-object/from16 v80, v61

    move-object/from16 v81, v7

    move-object/from16 v82, v8

    move-object/from16 v83, v78

    move-object/from16 v88, p1

    invoke-direct/range {v80 .. v89}, Lcom/google/android/apps/plus/api/EventReadOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4124
    .local v61, op:Lcom/google/android/apps/plus/api/EventReadOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/EventReadOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4129
    .end local v61           #op:Lcom/google/android/apps/plus/api/EventReadOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v84           #pollingToken:Ljava/lang/String;
    .end local v85           #resumeToken:Ljava/lang/String;
    .end local v86           #invitationToken:Ljava/lang/String;
    .end local v87           #fetchNewer:Z
    :sswitch_e2e
    const-string v5, "include_blacklist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v92

    .line 4131
    .local v92, includeBlackList:Z
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4132
    .restart local v78       #eventId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v94, v0

    move-object/from16 v88, v61

    move-object/from16 v89, v7

    move-object/from16 v90, v8

    move-object/from16 v91, v78

    move-object/from16 v93, p1

    invoke-direct/range {v88 .. v94}, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4135
    .local v61, op:Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4140
    .end local v61           #op:Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v92           #includeBlackList:Z
    :sswitch_e59
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4141
    .restart local v78       #eventId:Ljava/lang/String;
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 4142
    .restart local v79       #ownerId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/EventLandingOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v81, v0

    move-object/from16 v75, v61

    move-object/from16 v76, v7

    move-object/from16 v77, v8

    move-object/from16 v80, p1

    invoke-direct/range {v75 .. v81}, Lcom/google/android/apps/plus/api/EventLandingOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4144
    .local v61, op:Lcom/google/android/apps/plus/api/EventLandingOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/EventLandingOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4149
    .end local v61           #op:Lcom/google/android/apps/plus/api/EventLandingOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v79           #ownerId:Ljava/lang/String;
    :sswitch_e81
    const-string v5, "circles_to_add"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v142

    .line 4150
    .local v142, circleIds:[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v142

    invoke-static {v7, v8, v0, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Z)V

    .line 4151
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4156
    .end local v142           #circleIds:[Ljava/lang/String;
    :sswitch_e9e
    const-string v5, "circle_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 4157
    .local v96, circleName:Ljava/lang/String;
    const-string v5, "just_following"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v97

    .line 4159
    .local v97, justFollowing:Z
    new-instance v61, Lcom/google/android/apps/plus/api/CreateCircleOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v99, v0

    move-object/from16 v93, v61

    move-object/from16 v94, v7

    move-object/from16 v95, v8

    move-object/from16 v98, p1

    invoke-direct/range {v93 .. v99}, Lcom/google/android/apps/plus/api/CreateCircleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4161
    .local v61, op:Lcom/google/android/apps/plus/api/CreateCircleOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4166
    .end local v61           #op:Lcom/google/android/apps/plus/api/CreateCircleOperation;
    .end local v96           #circleName:Ljava/lang/String;
    .end local v97           #justFollowing:Z
    :sswitch_ec7
    const-string v5, "circle_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4167
    .restart local v17       #circleId:Ljava/lang/String;
    const-string v5, "circle_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 4168
    .restart local v96       #circleName:Ljava/lang/String;
    const-string v5, "just_following"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v97

    .line 4170
    .restart local v97       #justFollowing:Z
    new-instance v61, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v105, v0

    move-object/from16 v98, v61

    move-object/from16 v99, v7

    move-object/from16 v100, v8

    move-object/from16 v101, v17

    move-object/from16 v102, v96

    move/from16 v103, v97

    move-object/from16 v104, p1

    invoke-direct/range {v98 .. v105}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4173
    .local v61, op:Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4178
    .end local v17           #circleId:Ljava/lang/String;
    .end local v61           #op:Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;
    .end local v96           #circleName:Ljava/lang/String;
    .end local v97           #justFollowing:Z
    :sswitch_efe
    const-string v5, "circle_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v102

    .line 4180
    .local v102, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/Thread;

    new-instance v98, Lcom/google/android/apps/plus/service/EsService$16;

    move-object/from16 v99, p0

    move-object/from16 v100, v7

    move-object/from16 v101, v8

    move-object/from16 v103, p1

    invoke-direct/range {v98 .. v103}, Lcom/google/android/apps/plus/service/EsService$16;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;)V

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4199
    .end local v102           #circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_f1f
    const-string v5, "refresh"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v107

    .line 4200
    .local v107, refresh:Z
    new-instance v5, Ljava/lang/Thread;

    new-instance v103, Lcom/google/android/apps/plus/service/EsService$17;

    move-object/from16 v104, p0

    move-object/from16 v105, v7

    move-object/from16 v106, v8

    move-object/from16 v108, p1

    invoke-direct/range {v103 .. v108}, Lcom/google/android/apps/plus/service/EsService$17;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V

    move-object/from16 v0, v103

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4214
    .end local v107           #refresh:Z
    :sswitch_f41
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$18;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4233
    :sswitch_f54
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/service/EsService$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v7, v8, v1}, Lcom/google/android/apps/plus/service/EsService$19;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4246
    :sswitch_f67
    new-instance v61, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4248
    .local v61, op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4253
    .end local v61           #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    :sswitch_f79
    new-instance v61, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4255
    .local v61, op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4260
    .end local v61           #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    :sswitch_f8b
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->accountsChanged(Landroid/content/Context;)Ljava/util/List;

    move-result-object v177

    .line 4261
    .local v177, removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/google/android/apps/plus/service/EsService;->updateEsApiProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 4262
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v177

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4267
    .end local v177           #removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_fa5
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsProvider;->localeChanged(Landroid/content/Context;)V

    .line 4268
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4274
    :sswitch_fb7
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v139

    .line 4275
    .restart local v139       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v139, :cond_ff6

    .line 4277
    move-object/from16 v0, v139

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v150

    .line 4280
    .local v150, lastSyncTime:J
    const-wide/16 v5, 0x0

    cmp-long v5, v150, v5

    if-ltz v5, :cond_fd6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v150

    const-wide/32 v12, 0x36ee80

    cmp-long v5, v5, v12

    if-lez v5, :cond_ff6

    .line 4282
    :cond_fd6
    invoke-virtual/range {v139 .. v139}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v5

    const-string v6, "com.google.android.apps.plus.content.EsProvider"

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-static {v5, v6, v12}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4286
    move-object/from16 v0, v139

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v5

    if-eqz v5, :cond_ff6

    .line 4288
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v7, v8, v0, v5}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->wipeout(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4295
    .end local v150           #lastSyncTime:J
    :cond_ff6
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v179

    .line 4297
    .local v179, resultValue:Ljava/lang/Boolean;
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v179

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4302
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v179           #resultValue:Ljava/lang/Boolean;
    :sswitch_100e
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4307
    :sswitch_101d
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v139

    .line 4308
    .restart local v139       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v139, :cond_1029

    .line 4309
    const/4 v5, 0x0

    move-object/from16 v0, v139

    invoke-static {v7, v0, v5}, Lcom/google/android/apps/plus/content/EsProvider;->cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 4311
    :cond_1029
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4316
    .end local v139           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :sswitch_1038
    const-string v5, "event"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v128

    check-cast v128, Lcom/google/wireless/webapps/Analytics$Event;

    .line 4319
    .local v128, event:Lcom/google/wireless/webapps/Analytics$Event;
    move-object/from16 v0, v128

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->insert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    .line 4320
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4325
    .end local v128           #event:Lcom/google/wireless/webapps/Analytics$Event;
    :sswitch_1056
    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v188

    .line 4328
    .local v188, type:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    const-string v5, "share_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v183

    .line 4329
    .local v183, shareToken:Ljava/lang/String;
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v27

    .line 4331
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4333
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v188

    move-object/from16 v2, v183

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 4334
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4339
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v183           #shareToken:Ljava/lang/String;
    .end local v188           #type:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    :sswitch_1093
    const-string v5, "plusone_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v173

    .line 4340
    .restart local v173       #plusOneId:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4342
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->deleteAdPlusOne(Ljava/lang/String;)V

    .line 4343
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4348
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v173           #plusOneId:Ljava/lang/String;
    :sswitch_10b4
    const-string v5, "share_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v183

    .line 4349
    .restart local v183       #shareToken:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4351
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAdPlusOne(Ljava/lang/String;)V

    .line 4352
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4357
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v183           #shareToken:Ljava/lang/String;
    :sswitch_10d5
    const-string v5, "package_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v166

    .line 4358
    .local v166, packageName:Ljava/lang/String;
    const-string v5, "installer_package_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v149

    .line 4360
    .local v149, installerPackageName:Ljava/lang/String;
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4362
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v166

    move-object/from16 v2, v149

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->reportAdPlusOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4368
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v149           #installerPackageName:Ljava/lang/String;
    .end local v166           #packageName:Ljava/lang/String;
    :sswitch_1100
    const-string v5, "search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v180

    .line 4370
    .local v180, searchQuery:Ljava/lang/String;
    const-string v5, "newer"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v158

    .line 4372
    .local v158, newer:Z
    if-nez v158, :cond_1134

    .line 4373
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-static {v0, v8, v1}, Lcom/google/android/apps/plus/util/SearchUtils;->getContinuationToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4379
    .restart local v11       #continuationToken:Ljava/lang/String;
    :goto_111b
    new-instance v22, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4381
    .restart local v22       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v22

    move-object/from16 v1, v180

    invoke-virtual {v0, v1, v11}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->searchActivities(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4376
    .end local v11           #continuationToken:Ljava/lang/String;
    .end local v22           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_1134
    const/4 v11, 0x0

    .restart local v11       #continuationToken:Ljava/lang/String;
    goto :goto_111b

    .line 4387
    .end local v11           #continuationToken:Ljava/lang/String;
    .end local v158           #newer:Z
    .end local v180           #searchQuery:Ljava/lang/String;
    :sswitch_1136
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsAccountsData;->uploadChangedSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4388
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4393
    :sswitch_1148
    const-string v5, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_114f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_114f} :catch_3e

    move-result-object v145

    .line 4395
    .local v145, fileName:Ljava/lang/String;
    :try_start_1150
    move-object/from16 v0, v145

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/service/EsService;->sLastCameraMediaLocation:Ljava/lang/String;
    :try_end_1158
    .catch Ljava/io/FileNotFoundException; {:try_start_1150 .. :try_end_1158} :catch_1167
    .catch Ljava/lang/Exception; {:try_start_1150 .. :try_end_1158} :catch_3e

    .line 4399
    :goto_1158
    :try_start_1158
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4396
    :catch_1167
    move-exception v146

    .line 4397
    .local v146, fnfe:Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    sput-object v5, Lcom/google/android/apps/plus/service/EsService;->sLastCameraMediaLocation:Ljava/lang/String;

    goto :goto_1158

    .line 4404
    .end local v145           #fileName:Ljava/lang/String;
    .end local v146           #fnfe:Ljava/io/FileNotFoundException;
    :sswitch_116c
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsNetworkData;->clearTransactionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4405
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4410
    :sswitch_117e
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsNetworkData;->resetStatsData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4411
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4416
    :sswitch_1190
    const-string v5, "apiInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v119

    check-cast v119, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 4418
    .local v119, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v5, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v113

    check-cast v113, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 4419
    .local v113, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    const-string v5, "external_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v116

    .line 4420
    .local v116, externalId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4421
    .restart local v25       #content:Ljava/lang/String;
    const-string v5, "media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 4423
    .restart local v30       #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v27

    check-cast v27, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 4425
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v5, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4428
    .restart local v10       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    new-instance v61, Lcom/google/android/apps/plus/network/ApiaryPostOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v112, v0

    move-object/from16 v108, v61

    move-object/from16 v109, v7

    move-object/from16 v110, v8

    move-object/from16 v111, p1

    move-object/from16 v114, v25

    move-object/from16 v115, v30

    move-object/from16 v117, v10

    move-object/from16 v118, v27

    invoke-direct/range {v108 .. v119}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 4431
    .local v61, op:Lcom/google/android/apps/plus/network/ApiaryPostOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4436
    .end local v10           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v25           #content:Ljava/lang/String;
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v30           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v61           #op:Lcom/google/android/apps/plus/network/ApiaryPostOperation;
    .end local v113           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v116           #externalId:Ljava/lang/String;
    .end local v119           #info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :sswitch_11f0
    const-string v5, "apiInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v119

    check-cast v119, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 4438
    .restart local v119       #info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v5, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 4439
    .restart local v60       #url:Ljava/lang/String;
    const-string v5, "applyPlusOne"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v141

    .line 4440
    .local v141, apply:Z
    const-string v5, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v187

    .line 4442
    .local v187, token:Ljava/lang/String;
    new-instance v124, Landroid/content/ContentValues;

    invoke-direct/range {v124 .. v124}, Landroid/content/ContentValues;-><init>()V

    .line 4443
    .local v124, cv:Landroid/content/ContentValues;
    const-string v6, "state"

    if-eqz v141, :cond_1249

    sget-object v5, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    :goto_121e
    move-object/from16 v0, v124

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4446
    const-string v5, "token"

    move-object/from16 v0, v124

    move-object/from16 v1, v187

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4448
    invoke-static/range {v119 .. v119}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generatePlusOneUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v123

    .line 4449
    .local v123, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/Thread;

    new-instance v120, Lcom/google/android/apps/plus/service/EsService$20;

    move-object/from16 v121, p0

    move-object/from16 v122, v7

    move-object/from16 v125, v60

    move-object/from16 v126, p1

    invoke-direct/range {v120 .. v126}, Lcom/google/android/apps/plus/service/EsService$20;-><init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v120

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 4443
    .end local v123           #uri:Landroid/net/Uri;
    :cond_1249
    sget-object v5, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_NOTPLUSONED:Ljava/lang/Integer;

    goto :goto_121e

    .line 4464
    .end local v60           #url:Ljava/lang/String;
    .end local v119           #info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .end local v124           #cv:Landroid/content/ContentValues;
    .end local v141           #apply:Z
    .end local v187           #token:Ljava/lang/String;
    :sswitch_124c
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4465
    .restart local v78       #eventId:Ljava/lang/String;
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 4466
    .restart local v79       #ownerId:Ljava/lang/String;
    const-string v5, "rsvp_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 4469
    .local v80, rsvpType:Ljava/lang/String;
    move-object/from16 v0, v78

    move-object/from16 v1, v80

    invoke-static {v7, v8, v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->setRsvpType(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 4472
    .local v81, rollbackRsvpType:Ljava/lang/String;
    if-nez v81, :cond_1284

    .line 4473
    new-instance v181, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v181

    invoke-direct {v0, v5, v6, v12}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4474
    .local v181, serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v181

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4478
    .end local v181           #serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_1284
    new-instance v61, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v83, v0

    move-object/from16 v75, v61

    move-object/from16 v76, v7

    move-object/from16 v77, v8

    move-object/from16 v82, p1

    invoke-direct/range {v75 .. v83}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4481
    .local v61, op:Lcom/google/android/apps/plus/api/SendEventRsvpOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4487
    .end local v61           #op:Lcom/google/android/apps/plus/api/SendEventRsvpOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v79           #ownerId:Ljava/lang/String;
    .end local v80           #rsvpType:Ljava/lang/String;
    .end local v81           #rollbackRsvpType:Ljava/lang/String;
    :sswitch_129c
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v5

    const-string v6, "event"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v128

    check-cast v128, Lcom/google/api/services/plusi/model/PlusEvent;

    .line 4489
    .local v128, event:Lcom/google/api/services/plusi/model/PlusEvent;
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v27

    check-cast v27, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 4491
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v5, "external_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v116

    .line 4492
    .restart local v116       #externalId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/CreateEventOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v132, v0

    move-object/from16 v125, v61

    move-object/from16 v126, v7

    move-object/from16 v127, v8

    move-object/from16 v129, v27

    move-object/from16 v130, v116

    move-object/from16 v131, p1

    invoke-direct/range {v125 .. v132}, Lcom/google/android/apps/plus/api/CreateEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4494
    .local v61, op:Lcom/google/android/apps/plus/api/CreateEventOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/CreateEventOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4499
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v61           #op:Lcom/google/android/apps/plus/api/CreateEventOperation;
    .end local v116           #externalId:Ljava/lang/String;
    .end local v128           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    :sswitch_12dc
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v5

    const-string v6, "event"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v128

    check-cast v128, Lcom/google/api/services/plusi/model/PlusEvent;

    .line 4501
    .restart local v128       #event:Lcom/google/api/services/plusi/model/PlusEvent;
    new-instance v61, Lcom/google/android/apps/plus/api/UpdateEventOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v130, v0

    move-object/from16 v125, v61

    move-object/from16 v126, v7

    move-object/from16 v127, v8

    move-object/from16 v129, p1

    invoke-direct/range {v125 .. v130}, Lcom/google/android/apps/plus/api/UpdateEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4503
    .local v61, op:Lcom/google/android/apps/plus/api/UpdateEventOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/UpdateEventOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4508
    .end local v61           #op:Lcom/google/android/apps/plus/api/UpdateEventOperation;
    .end local v128           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    :sswitch_1306
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4509
    .restart local v78       #eventId:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/DeleteEventOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v134, v0

    move-object/from16 v129, v61

    move-object/from16 v130, v7

    move-object/from16 v131, v8

    move-object/from16 v132, v78

    move-object/from16 v133, p1

    invoke-direct/range {v129 .. v134}, Lcom/google/android/apps/plus/api/DeleteEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4511
    .local v61, op:Lcom/google/android/apps/plus/api/DeleteEventOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/DeleteEventOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4516
    .end local v61           #op:Lcom/google/android/apps/plus/api/DeleteEventOperation;
    .end local v78           #eventId:Ljava/lang/String;
    :sswitch_1328
    new-instance v61, Lcom/google/android/apps/plus/api/GetEventThemesOperation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v1, v5}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4518
    .local v61, op:Lcom/google/android/apps/plus/api/GetEventThemesOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4523
    .end local v61           #op:Lcom/google/android/apps/plus/api/GetEventThemesOperation;
    :sswitch_133a
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4524
    .restart local v78       #eventId:Ljava/lang/String;
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 4525
    .restart local v79       #ownerId:Ljava/lang/String;
    const-string v5, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v27

    check-cast v27, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 4527
    .restart local v27       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    new-instance v61, Lcom/google/android/apps/plus/api/EventInviteOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v136, v0

    move-object/from16 v129, v61

    move-object/from16 v130, v7

    move-object/from16 v131, v8

    move-object/from16 v132, v78

    move-object/from16 v133, v79

    move-object/from16 v134, v27

    move-object/from16 v135, p1

    invoke-direct/range {v129 .. v136}, Lcom/google/android/apps/plus/api/EventInviteOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4529
    .local v61, op:Lcom/google/android/apps/plus/api/EventInviteOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/EventInviteOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4534
    .end local v27           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v61           #op:Lcom/google/android/apps/plus/api/EventInviteOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v79           #ownerId:Ljava/lang/String;
    :sswitch_1372
    const-string v5, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 4535
    .restart local v78       #eventId:Ljava/lang/String;
    const-string v5, "blacklist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v133

    .line 4536
    .local v133, blacklist:Z
    const-string v5, "gaia_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4537
    .restart local v18       #gaiaId:Ljava/lang/String;
    const-string v5, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .line 4538
    .local v135, email:Ljava/lang/String;
    new-instance v61, Lcom/google/android/apps/plus/api/EventManageGuestOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v137, v0

    move-object/from16 v129, v61

    move-object/from16 v130, v7

    move-object/from16 v131, v8

    move-object/from16 v132, v78

    move-object/from16 v134, v18

    move-object/from16 v136, p1

    invoke-direct/range {v129 .. v137}, Lcom/google/android/apps/plus/api/EventManageGuestOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 4540
    .local v61, op:Lcom/google/android/apps/plus/api/EventManageGuestOperation;
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->startThreaded()V

    goto/16 :goto_53

    .line 4545
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v61           #op:Lcom/google/android/apps/plus/api/EventManageGuestOperation;
    .end local v78           #eventId:Ljava/lang/String;
    .end local v133           #blacklist:Z
    .end local v135           #email:Ljava/lang/String;
    :sswitch_13af
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 4547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/EsService;->mOperationListener:Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;

    move-object/from16 v0, p1

    invoke-static {v7, v8, v0, v5}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->wipeout(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    goto/16 :goto_53

    .line 4552
    :sswitch_13ca
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 4554
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_53

    .line 4559
    :sswitch_13e9
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "timestamp"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 4562
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_140f
    .catch Ljava/lang/Exception; {:try_start_1158 .. :try_end_140f} :catch_3e

    goto/16 :goto_53

    .line 3135
    nop

    :sswitch_data_1412
    .sparse-switch
        0x1 -> :sswitch_54
        0x3 -> :sswitch_111
        0x4 -> :sswitch_f8b
        0x5 -> :sswitch_fa5
        0x6 -> :sswitch_12d
        0xb -> :sswitch_1b6
        0xc -> :sswitch_1d7
        0xd -> :sswitch_215
        0xe -> :sswitch_278
        0x10 -> :sswitch_2f8
        0x11 -> :sswitch_375
        0x12 -> :sswitch_43a
        0x13 -> :sswitch_45b
        0x14 -> :sswitch_419
        0x15 -> :sswitch_2af
        0x16 -> :sswitch_13f
        0x17 -> :sswitch_170
        0x18 -> :sswitch_3f8
        0x19 -> :sswitch_47c
        0x1a -> :sswitch_1f6
        0x1e -> :sswitch_965
        0x1f -> :sswitch_9a6
        0x20 -> :sswitch_9e7
        0x21 -> :sswitch_a2b
        0x22 -> :sswitch_a80
        0x28 -> :sswitch_49d
        0x29 -> :sswitch_aca
        0x32 -> :sswitch_4ba
        0x33 -> :sswitch_4ea
        0x34 -> :sswitch_517
        0x35 -> :sswitch_558
        0x36 -> :sswitch_5d8
        0x37 -> :sswitch_60a
        0x38 -> :sswitch_64f
        0x39 -> :sswitch_68d
        0x3a -> :sswitch_6ae
        0x3b -> :sswitch_6ee
        0x3c -> :sswitch_72b
        0x3d -> :sswitch_740
        0x3e -> :sswitch_7ad
        0x3f -> :sswitch_819
        0x40 -> :sswitch_591
        0x41 -> :sswitch_7da
        0x42 -> :sswitch_7fb
        0xc9 -> :sswitch_b4b
        0xca -> :sswitch_bec
        0xcb -> :sswitch_b67
        0xcc -> :sswitch_bb4
        0xcd -> :sswitch_bd7
        0xce -> :sswitch_b9f
        0x1f4 -> :sswitch_f1f
        0x1f5 -> :sswitch_f54
        0x1f6 -> :sswitch_f67
        0x1f7 -> :sswitch_f79
        0x258 -> :sswitch_bff
        0x2be -> :sswitch_d25
        0x2bf -> :sswitch_cce
        0x2c0 -> :sswitch_e81
        0x2c1 -> :sswitch_ce1
        0x2c2 -> :sswitch_cff
        0x2c3 -> :sswitch_d12
        0x2c4 -> :sswitch_e9e
        0x2c5 -> :sswitch_efe
        0x2c6 -> :sswitch_d38
        0x2c7 -> :sswitch_f41
        0x2c8 -> :sswitch_d4b
        0x2c9 -> :sswitch_8d7
        0x2ca -> :sswitch_8f8
        0x2cb -> :sswitch_919
        0x2cc -> :sswitch_93a
        0x2cd -> :sswitch_ec7
        0x320 -> :sswitch_d5e
        0x384 -> :sswitch_db1
        0x385 -> :sswitch_dc3
        0x386 -> :sswitch_124c
        0x387 -> :sswitch_129c
        0x388 -> :sswitch_12dc
        0x389 -> :sswitch_1328
        0x38a -> :sswitch_133a
        0x38b -> :sswitch_1306
        0x38d -> :sswitch_e59
        0x38e -> :sswitch_deb
        0x38f -> :sswitch_e2e
        0x3ea -> :sswitch_fb7
        0x3ec -> :sswitch_100e
        0x3ed -> :sswitch_101d
        0x3ef -> :sswitch_b0a
        0x3f0 -> :sswitch_1038
        0x3f1 -> :sswitch_1372
        0x3fc -> :sswitch_1056
        0x3fd -> :sswitch_1093
        0x3fe -> :sswitch_10b4
        0x3ff -> :sswitch_10d5
        0x44c -> :sswitch_1100
        0x456 -> :sswitch_1136
        0x460 -> :sswitch_1148
        0x7d0 -> :sswitch_117e
        0x7d1 -> :sswitch_116c
        0x898 -> :sswitch_1190
        0x899 -> :sswitch_11f0
        0x8fc -> :sswitch_13af
        0x8fd -> :sswitch_13ca
        0x960 -> :sswitch_13e9
    .end sparse-switch
.end method
