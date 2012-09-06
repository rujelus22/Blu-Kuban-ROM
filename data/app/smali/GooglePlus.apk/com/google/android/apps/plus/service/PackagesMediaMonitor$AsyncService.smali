.class public Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;
.super Landroid/app/IntentService;
.source "PackagesMediaMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/PackagesMediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# instance fields
.field private mServiceLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    const-string v0, "GPlusPackageMediaMonitor"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->setIntentRedelivery(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    .line 68
    .local v2, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v4

    .line 69
    .local v4, storeFacade:Lcom/google/android/picasastore/PicasaStoreFacade;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 73
    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaFacade;->onPackageAdded(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4, v3}, Lcom/google/android/picasastore/PicasaStoreFacade;->onPackageAdded(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_37

    .line 101
    :cond_22
    :goto_22
    iget-object v5, p0, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->mServiceLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    return-void

    .line 75
    :cond_28
    :try_start_28
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 76
    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaFacade;->onPackageRemoved(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v3}, Lcom/google/android/picasastore/PicasaStoreFacade;->onPackageRemoved(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_22

    .line 101
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #facade:Lcom/google/android/picasasync/PicasaFacade;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #storeFacade:Lcom/google/android/picasastore/PicasaStoreFacade;
    :catchall_37
    move-exception v5

    iget-object v6, p0, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->mServiceLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 78
    .restart local v1       #action:Ljava/lang/String;
    .restart local v2       #facade:Lcom/google/android/picasasync/PicasaFacade;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #storeFacade:Lcom/google/android/picasastore/PicasaStoreFacade;
    :cond_3e
    :try_start_3e
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 84
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 85
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_37

    move-result v5

    if-eqz v5, :cond_22

    .line 91
    const-wide/16 v5, 0x1388

    :try_start_52
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_37
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_65

    .line 95
    :goto_55
    :try_start_55
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    goto :goto_22

    .line 97
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_59
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 98
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->onMediaMounted()V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_37

    goto :goto_22

    .line 92
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    :catch_65
    move-exception v5

    goto :goto_55
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->mServiceLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_15

    .line 57
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AsyncService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->mServiceLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PackagesMediaMonitor$AsyncService;->mServiceLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 61
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method
