.class public Lcom/google/android/apps/plus/service/PackagesMediaMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackagesMediaMonitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    .line 17
    .local v1, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaFacade;->onPackageAdded(Ljava/lang/String;)V

    .line 27
    :cond_1b
    :goto_1b
    return-void

    .line 22
    :cond_1c
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaFacade;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_1b

    .line 24
    :cond_28
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 25
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->onMediaMounted()V

    goto :goto_1b
.end method
