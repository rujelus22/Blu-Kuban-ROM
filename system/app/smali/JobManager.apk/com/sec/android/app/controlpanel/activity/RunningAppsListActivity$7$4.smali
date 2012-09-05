.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 412
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    .line 413
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v3, removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 415
    .local v2, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 416
    const-string v4, "RunningAppsListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kill runningApplication! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;Z)V

    .line 418
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 421
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_57
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 422
    .restart local v2       #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 424
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_6b
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 425
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 428
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v5, v5, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v6, 0x7f050028

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 430
    return-void
.end method
