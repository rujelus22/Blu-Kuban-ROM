.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;
.super Landroid/os/Handler;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 333
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_fc

    .line 453
    :cond_5
    :goto_5
    return-void

    .line 335
    :pswitch_6
    const-string v3, "RunningAppsListActivity"

    const-string v4, "MSG_KILL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 353
    :pswitch_18
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 369
    :pswitch_23
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 393
    :pswitch_2e
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 395
    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {v4, v5, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    .line 398
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 401
    .end local v0           #cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_6b
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 404
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->reloadAppName()V

    .line 405
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->clearCache()V

    goto/16 :goto_5

    .line 409
    :pswitch_8f
    const-string v3, "RunningAppsListActivity"

    const-string v4, "MSG_KILL_ALL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 436
    :pswitch_a2
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 437
    .local v2, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_b0

    .line 438
    const-string v3, "RunningAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove item(memory size zero) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 446
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :pswitch_f1
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->setRecentTaskIntentInfo()V

    goto/16 :goto_5

    .line 333
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_6
        :pswitch_18
        :pswitch_23
        :pswitch_2e
        :pswitch_6b
        :pswitch_8f
        :pswitch_a2
        :pswitch_f1
    .end packed-switch
.end method
