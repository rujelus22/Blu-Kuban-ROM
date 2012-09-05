.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;
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
    .line 336
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 338
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getPackageIndex(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, curPackageIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_73

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->removeItem(I)V

    .line 343
    const-string v1, "RunningAppsListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kill runningApplication! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v3, v3, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;Z)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$202(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .end local v0           #curPackageIndex:I
    :cond_73
    return-void
.end method
