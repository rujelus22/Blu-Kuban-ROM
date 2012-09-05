.class public Lcom/google/android/apps/plus/service/ApiaryService;
.super Landroid/app/Service;
.source "ApiaryService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;,
        Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;,
        Lcom/google/android/apps/plus/service/ApiaryService$ResultsLinkedHashMap;
    }
.end annotation


# static fields
.field private static final sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

.field private static sLastRequestId:Ljava/lang/Integer;

.field private static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;",
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

.field private final mOperationListener:Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;

.field private mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

.field private final mStopRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/google/android/apps/plus/service/ApiaryService$ResultsLinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ApiaryService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/service/ApiaryService$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sResults:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/google/android/apps/plus/service/IntentPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/IntentPool;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sLastRequestId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;-><init>(Lcom/google/android/apps/plus/service/ApiaryService;Lcom/google/android/apps/plus/service/ApiaryService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mOperationListener:Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;

    .line 71
    new-instance v0, Lcom/google/android/apps/plus/service/ApiaryService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/ApiaryService$1;-><init>(Lcom/google/android/apps/plus/service/ApiaryService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mStopRunnable:Ljava/lang/Runnable;

    .line 122
    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/ApiaryService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ApiaryService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    return-void
.end method

.method public static applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/ApiaryService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 554
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v1, "apiInfo"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 558
    const-string v1, "applyPlusOne"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    const-string v1, "token"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/ApiaryService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 6
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/ApiaryService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ApiaryService$3;-><init>(Lcom/google/android/apps/plus/service/ApiaryService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method private finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "intent"
    .parameter "serviceResult"

    .prologue
    .line 407
    const-string v1, "rid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 408
    const-string v1, "rid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 409
    .local v0, requestId:Ljava/lang/Integer;
    sget-object v1, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    if-eqz p2, :cond_1f

    .line 413
    sget-object v1, Lcom/google/android/apps/plus/service/ApiaryService;->sResults:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_1f
    const-string v1, "from_pool"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 418
    sget-object v1, Lcom/google/android/apps/plus/service/ApiaryService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 422
    .end local v0           #requestId:Ljava/lang/Integer;
    :cond_2d
    sget-object v1, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_55

    .line 424
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    const-string v1, "ApiaryService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 431
    const-string v1, "ApiaryService"

    const-string v2, "completeRequest: Stopping service in 5000 ms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_55
    return-void
.end method

.method private static generateRequestId()I
    .registers 3

    .prologue
    .line 480
    sget-object v1, Lcom/google/android/apps/plus/service/ApiaryService;->sLastRequestId:Ljava/lang/Integer;

    monitor-enter v1

    .line 481
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sLastRequestId:Ljava/lang/Integer;

    sget-object v2, Lcom/google/android/apps/plus/service/ApiaryService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/service/ApiaryService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 482
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    .line 446
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 447
    .local v4, nb:Landroid/os/Bundle;
    sget-object v7, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 448
    .local v5, pIntent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 449
    .local v6, pb:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v8

    if-ne v7, v8, :cond_f

    .line 450
    const/4 v3, 0x1

    .line 451
    .local v3, match:Z
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    .local v2, key:Ljava/lang/String;
    const-string v7, "rid"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 455
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_81

    .line 456
    const/4 v3, 0x0

    .line 464
    .end local v2           #key:Ljava/lang/String;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_f

    .line 465
    const-string v7, "ApiaryService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 466
    const-string v7, "ApiaryService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Op was pending: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "op"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_76
    const-string v7, "rid"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 473
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #match:Z
    .end local v5           #pIntent:Landroid/content/Intent;
    .end local v6           #pb:Landroid/os/Bundle;
    :goto_80
    return-object v7

    .line 458
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #match:Z
    .restart local v5       #pIntent:Landroid/content/Intent;
    .restart local v6       #pb:Landroid/os/Bundle;
    :cond_81
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 459
    const/4 v3, 0x0

    .line 460
    goto :goto_4d

    .line 473
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #match:Z
    .end local v5           #pIntent:Landroid/content/Intent;
    .end local v6           #pb:Landroid/os/Bundle;
    :cond_91
    const/4 v7, 0x0

    goto :goto_80
.end method

.method public static isRequestPending(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 173
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static postActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 13
    .parameter
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
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    const-class v1, Lcom/google/android/apps/plus/service/ApiaryService;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 536
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v1, "acc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 538
    const-string v1, "apiInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    const-string v1, "activity"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    const-string v1, "circles"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 542
    const-string v1, "people"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 543
    const-string v1, "special"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 544
    const-string v1, "external_id"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v1, "content"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 548
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/ApiaryService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static registerListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 153
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public static removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sResults:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ServiceResult;

    return-object v0
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_16

    .line 198
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startCommand must be called on the UI thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/ApiaryService;->generateRequestId()I

    move-result v1

    .line 202
    .local v1, requestId:I
    const-string v2, "rid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ApiaryService;->getPendingRequestId(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    .line 205
    .local v0, pendingRequestId:Ljava/lang/Integer;
    if-eqz v0, :cond_2f

    .line 206
    sget-object v2, Lcom/google/android/apps/plus/service/ApiaryService;->sIntentPool:Lcom/google/android/apps/plus/service/IntentPool;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 213
    .end local v1           #requestId:I
    :goto_2e
    return v1

    .line 210
    .restart local v1       #requestId:I
    :cond_2f
    sget-object v2, Lcom/google/android/apps/plus/service/ApiaryService;->sPendingIntents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2e
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mHandler:Landroid/os/Handler;

    const-string v2, "ApiaryServiceThread"

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/apps/plus/service/ServiceThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->start()V

    .line 226
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    if-eqz v0, :cond_f

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->quit()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 247
    :cond_f
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 16
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    const/4 v10, -0x1

    .line 338
    const-string v9, "op"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 339
    .local v5, opCode:I
    const-string v9, "rid"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 341
    .local v7, requestId:I
    packed-switch v5, :pswitch_data_86

    .line 371
    const-string v9, "ApiaryService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onIntentProcessed: Unhandled op code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/service/ApiaryService;->finalizeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 377
    return-void

    .line 343
    :pswitch_2c
    move-object v4, p3

    .line 344
    .local v4, op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getOperation()Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;

    .line 345
    .local v6, previewOp:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    .line 347
    .local v0, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    sget-object v9, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    .line 348
    .local v3, listener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
    invoke-virtual {v3, v7, p2, v0}, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;->onGetPreviewResult(ILcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    goto :goto_3d

    .line 355
    .end local v0           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
    .end local v4           #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v6           #previewOp:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    :pswitch_4d
    sget-object v9, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    .line 356
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
    invoke-virtual {v3, v7, p2}, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;->onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_53

    .line 362
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
    :pswitch_63
    const-string v9, "url"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, url:Ljava/lang/String;
    const-string v9, "applyPlusOne"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 364
    .local v1, apply:Z
    sget-object v9, Lcom/google/android/apps/plus/service/ApiaryService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    .line 365
    .restart local v3       #listener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
    invoke-virtual {v3, v7, p2, v8, v1}, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;->onApplyResult(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;Z)V

    goto :goto_76

    .line 341
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_4d
        :pswitch_63
    .end packed-switch
.end method

.method public onServiceThreadEnd()V
    .registers 1

    .prologue
    .line 491
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/ServiceThread;->put(Landroid/content/Intent;)V

    .line 234
    const/4 v0, 0x2

    return v0
.end method

.method public processIntent(Landroid/content/Intent;)V
    .registers 29
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/service/ApiaryService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 263
    .local v3, context:Landroid/content/Context;
    const-string v5, "op"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 264
    .local v25, opCode:I
    const-string v5, "acc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    .line 265
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "apiInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 268
    .local v6, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    packed-switch v25, :pswitch_data_108

    .line 326
    :goto_24
    return-void

    .line 270
    :pswitch_25
    :try_start_25
    const-string v5, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 271
    .local v21, url:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryOperation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/service/ApiaryService;->mOperationListener:Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;

    new-instance v8, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;

    move-object/from16 v0, v21

    invoke-direct {v8, v3, v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V

    .line 274
    .local v2, op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->startThreaded()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_42} :catch_43

    goto :goto_24

    .line 322
    .end local v2           #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v21           #url:Ljava/lang/String;
    :catch_43
    move-exception v24

    .line 323
    .local v24, ex:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v7, v8, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v7}, Lcom/google/android/apps/plus/service/ApiaryService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    goto :goto_24

    .line 280
    .end local v24           #ex:Ljava/lang/Exception;
    :pswitch_59
    :try_start_59
    const-string v5, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 281
    .local v9, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    const-string v5, "external_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 282
    .local v12, externalId:Ljava/lang/String;
    const-string v5, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, content:Ljava/lang/String;
    const-string v5, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 284
    .local v11, imageUri:Landroid/net/Uri;
    const-string v5, "circles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 285
    .local v13, circles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "people"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 286
    .local v14, people:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "special"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 289
    .local v15, special:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ApiaryService;->mOperationListener:Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;

    move-object/from16 v21, v0

    new-instance v7, Lcom/google/android/apps/plus/network/ApiaryPostOperation;

    move-object v8, v3

    invoke-direct/range {v7 .. v15}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v22}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V

    .line 293
    .restart local v2       #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->startThreaded()V

    goto/16 :goto_24

    .line 297
    .end local v2           #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v9           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v10           #content:Ljava/lang/String;
    .end local v11           #imageUri:Landroid/net/Uri;
    .end local v12           #externalId:Ljava/lang/String;
    .end local v13           #circles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #people:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #special:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b7
    const-string v5, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 298
    .restart local v21       #url:Ljava/lang/String;
    const-string v5, "applyPlusOne"

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 299
    .local v23, apply:Z
    const-string v5, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 301
    .local v26, token:Ljava/lang/String;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v20, cv:Landroid/content/ContentValues;
    const-string v7, "state"

    if-eqz v23, :cond_104

    sget-object v5, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    :goto_db
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v5, "token"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v6}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generatePlusOneUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v19

    .line 308
    .local v19, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/Thread;

    new-instance v16, Lcom/google/android/apps/plus/service/ApiaryService$2;

    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v22, p1

    invoke-direct/range {v16 .. v22}, Lcom/google/android/apps/plus/service/ApiaryService$2;-><init>(Lcom/google/android/apps/plus/service/ApiaryService;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_24

    .line 302
    .end local v19           #uri:Landroid/net/Uri;
    :cond_104
    sget-object v5, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_NOTPLUSONED:Ljava/lang/Integer;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_106} :catch_43

    goto :goto_db

    .line 268
    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_25
        :pswitch_59
        :pswitch_b7
    .end packed-switch
.end method
