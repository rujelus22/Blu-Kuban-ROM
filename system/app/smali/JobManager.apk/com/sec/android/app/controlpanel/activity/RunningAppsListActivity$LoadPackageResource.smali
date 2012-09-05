.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
.super Landroid/os/AsyncTask;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadPackageResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field running:Z

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->running:Z

    .line 497
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    .line 498
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    .line 502
    const-string v3, "RunningAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadPackageResource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thread start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :try_start_26
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 507
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-boolean v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->running:Z
    :try_end_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_3a} :catch_7d

    if-nez v3, :cond_64

    .line 520
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3c
    :goto_3c
    const-string v3, "RunningAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadPackageResource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thread end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v3, 0x0

    return-object v3

    .line 509
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_64
    :try_start_64
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadIcon(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 510
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 511
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->publishProgress([Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_7c} :catch_7d

    goto :goto_2c

    .line 514
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :catch_7d
    move-exception v0

    .line 516
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v3, "RunningAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadPackageResource Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3c
.end method

.method protected onCancelled()V
    .registers 4

    .prologue
    .line 526
    const-string v0, "RunningAppsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->running:Z

    .line 528
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 529
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->saveCache()V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->writeLocaleConfig(Landroid/content/Context;)V

    .line 545
    :cond_24
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 534
    return-void
.end method
