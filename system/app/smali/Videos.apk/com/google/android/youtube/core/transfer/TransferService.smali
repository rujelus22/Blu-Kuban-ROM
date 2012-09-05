.class public abstract Lcom/google/android/youtube/core/transfer/TransferService;
.super Landroid/app/Service;
.source "TransferService.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/TransferService$1;,
        Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;,
        Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;,
        Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;,
        Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;,
        Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;,
        Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;,
        Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;,
        Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    }
.end annotation


# instance fields
.field private analytics:Lcom/google/android/youtube/core/Analytics;

.field private backedOff:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private chargingReceiver:Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

.field private failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/transfer/TransferService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

.field private mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

.field private networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

.field private preferences:Landroid/content/SharedPreferences;

.field private preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private random:Ljava/util/Random;

.field private restored:Z

.field private store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

.field private tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/TransferTask;",
            ">;"
        }
    .end annotation
.end field

.field private toBeRemoved:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transferOnWifiOnly:Z

.field private transferWhenChargingOnly:Z

.field private transfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 740
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/transfer/TransferService;->failTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->restored:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferOnWifiOnlyPreferenceValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreferenceValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->restore(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->cancelTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->completeTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    return-void
.end method

.method private cancelTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 7
    .parameter "transfer"

    .prologue
    .line 344
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 345
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 347
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 352
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->remove(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 354
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 355
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_2d

    .line 359
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 360
    return-void
.end method

.method private completeTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 7
    .parameter "transfer"

    .prologue
    .line 329
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 330
    .local v2, key:Ljava/lang/String;
    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v4, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 331
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 332
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 333
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 337
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 338
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_24

    .line 340
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 341
    return-void
.end method

.method protected static createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/youtube/core/transfer/TransferService;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/youtube/core/transfer/TransferService;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private failTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Z)V
    .registers 14
    .parameter "transfer"
    .parameter "fatal"

    .prologue
    .line 294
    iget-object v3, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 295
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 297
    .local v6, value:Ljava/lang/Integer;
    if-nez v6, :cond_68

    const/4 v7, 0x0

    :goto_d
    add-int/lit8 v5, v7, 0x1

    .line 298
    .local v5, strikes:I
    if-nez p2, :cond_15

    const/16 v7, 0x14

    if-le v5, v7, :cond_6d

    .line 299
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transfer fatal fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 301
    if-nez p2, :cond_36

    .line 302
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v8, "TransferFailed"

    const-string v9, "TooManyRetries"

    invoke-virtual {v7, v8, v9}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_36
    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v7, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 306
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v2

    .line 307
    .local v2, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v7, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 308
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 313
    .local v4, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v2}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_58

    .line 297
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    .end local v5           #strikes:I
    :cond_68
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_d

    .line 316
    .restart local v5       #strikes:I
    :cond_6d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transfer fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 317
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v7, 0x1

    shl-int/2addr v7, v5

    mul-int/lit16 v0, v7, 0x3e8

    .line 322
    .local v0, backoff:I
    const v7, 0x927c0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->random:Ljava/util/Random;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int v0, v7, v8

    .line 323
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/16 v9, 0x8

    invoke-static {v8, v9, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    .end local v0           #backoff:I
    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 326
    return-void
.end method

.method private getTransferOnWifiOnlyPreferenceValue()Z
    .registers 6

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferNetworkPolicyPreference()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, key:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 708
    const/4 v3, 0x0

    .line 712
    :goto_7
    return v3

    .line 710
    :cond_8
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/transfer/TransferService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, wifiRestrictOption:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferNetworkPolicyPreference()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method private getTransferWhenChargingOnlyPreferenceValue()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreference()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_d
    return v1
.end method

.method private pauseTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 8
    .parameter "transfer"

    .prologue
    .line 366
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 367
    .local v2, key:Ljava/lang/String;
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 368
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 369
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v5, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 370
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferTask;

    .line 371
    .local v4, task:Lcom/google/android/youtube/core/transfer/TransferTask;
    if-eqz v4, :cond_1c

    .line 372
    invoke-interface {v4}, Lcom/google/android/youtube/core/transfer/TransferTask;->cancel()V

    .line 374
    :cond_1c
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 377
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 378
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_2c

    .line 380
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_3c
    return-void
.end method

.method private restore(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/transfer/Transfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    const/4 v2, 0x0

    .line 220
    .local v2, restoredActiveTransfers:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 221
    .local v3, snapshot:Lcom/google/android/youtube/core/transfer/Transfer;
    new-instance v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    invoke-direct {v4, v3}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;-><init>(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 222
    .local v4, transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    iget-object v6, v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    iget-object v5, v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v6, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v5, v6, :cond_36

    .line 226
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 227
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 229
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 232
    .end local v3           #snapshot:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v4           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transfers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 233
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->restored:Z

    .line 234
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 235
    .local v1, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onRestored()V

    goto :goto_5e

    .line 237
    .end local v1           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 238
    return-void
.end method

.method private startTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    .registers 8
    .parameter "transfer"

    .prologue
    .line 278
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 279
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const/4 v5, 0x1

    :goto_b
    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 280
    invoke-virtual {p0, p1, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->createTask(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;

    move-result-object v4

    .line 281
    .local v4, task:Lcom/google/android/youtube/core/transfer/TransferTask;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 283
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 284
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v5, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 285
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 286
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->lockWifi()V

    .line 288
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 289
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_37

    .line 279
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    .end local v4           #task:Lcom/google/android/youtube/core/transfer/TransferTask;
    :cond_47
    const/4 v5, 0x0

    goto :goto_b

    .line 291
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v4       #task:Lcom/google/android/youtube/core/transfer/TransferTask;
    :cond_49
    return-void
.end method


# virtual methods
.method protected abstract createTask(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
.end method

.method protected abstract getDatabaseName()Ljava/lang/String;
.end method

.method protected abstract getTransferNetworkPolicyPreference()Ljava/lang/String;
.end method

.method protected abstract getTransferWhenChargingOnlyPreference()Ljava/lang/String;
.end method

.method protected final isWifi()Z
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifi:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->access$100(Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method public onCanceled(Ljava/lang/String;)V
    .registers 5
    .parameter "filePath"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method

.method public onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "filePath"
    .parameter "outputExtras"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x5

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 175
    const-string v0, "creating transfer service"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->random:Ljava/util/Random;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    .line 183
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    .line 184
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    .line 185
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 187
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->register()V

    .line 189
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->register()V

    .line 191
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->chargingReceiver:Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->chargingReceiver:Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->register()V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getAnalytics()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferNetworkPolicyPreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 198
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferences:Landroid/content/SharedPreferences;

    .line 199
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 202
    :cond_a6
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferOnWifiOnlyPreferenceValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z

    .line 203
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreferenceValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restore(Landroid/os/Handler;I)V

    .line 211
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 384
    const-string v0, "destroying transfer service"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->close()V

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->unregister()V

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->unregister()V

    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->chargingReceiver:Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->unregister()V

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_24

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 392
    :cond_24
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 393
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 8
    .parameter "filePath"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v4, 0x6

    iget-boolean v0, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_b
    invoke-static {v3, v4, v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    iget-boolean v0, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-eqz v0, :cond_21

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "TransferFailed"

    invoke-virtual {p2}, Lcom/google/android/youtube/core/transfer/TransferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_21
    return-void

    :cond_22
    move v0, v1

    .line 421
    goto :goto_b
.end method

.method public onProgress(Ljava/lang/String;J)V
    .registers 10
    .parameter "filePath"
    .parameter "progress"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x3

    const/16 v3, 0x1f

    shr-long v3, p2, v3

    long-to-int v3, v3

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-static {v1, v2, v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    return-void
.end method

.method public onSize(Ljava/lang/String;J)V
    .registers 10
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x2

    const/16 v3, 0x1f

    shr-long v3, p2, v3

    long-to-int v3, v3

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-static {v1, v2, v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method protected final ping()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 245
    iget-boolean v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->restored:Z

    if-nez v8, :cond_7

    .line 270
    :cond_6
    :goto_6
    return-void

    .line 249
    :cond_7
    const/4 v0, 0x0

    .line 250
    .local v0, activeTransfers:I
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->isMediaMounted()Z

    move-result v8

    if-eqz v8, :cond_5d

    move v3, v6

    .line 252
    .local v3, isTransferringPossible:Z
    :goto_19
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 253
    .local v5, transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    invoke-virtual {v5}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->isActive()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    if-eqz v3, :cond_5f

    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->shouldRun(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)Z

    move-result v8

    if-eqz v8, :cond_5f

    move v4, v6

    .line 256
    .local v4, shouldRun:Z
    :goto_40
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    iget-object v9, v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_54

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    iget-object v9, v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    :cond_54
    move v2, v6

    .line 258
    .local v2, isRunning:Z
    :goto_55
    if-eqz v4, :cond_63

    if-nez v2, :cond_63

    .line 259
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->startTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    goto :goto_23

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isRunning:Z
    .end local v3           #isTransferringPossible:Z
    .end local v4           #shouldRun:Z
    .end local v5           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :cond_5d
    move v3, v7

    .line 250
    goto :goto_19

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #isTransferringPossible:Z
    .restart local v5       #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :cond_5f
    move v4, v7

    .line 255
    goto :goto_40

    .restart local v4       #shouldRun:Z
    :cond_61
    move v2, v7

    .line 256
    goto :goto_55

    .line 260
    .restart local v2       #isRunning:Z
    :cond_63
    if-nez v4, :cond_23

    if-eqz v2, :cond_23

    .line 261
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->pauseTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    goto :goto_23

    .line 266
    .end local v2           #isRunning:Z
    .end local v4           #shouldRun:Z
    .end local v5           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :cond_6b
    if-nez v0, :cond_6

    .line 268
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v8, 0x7

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method protected shouldRun(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)Z
    .registers 3
    .parameter "transfer"

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->chargingReceiver:Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
