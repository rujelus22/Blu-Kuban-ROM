.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;
.super Landroid/content/BroadcastReceiver;
.source "AbstractDlnaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 718
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    if-eqz v4, :cond_5c

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 720
    const-string v4, "DLNA"

    const-string v5, "alshare DB is updated"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 724
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 725
    .local v2, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 726
    .local v3, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, strPackage:Ljava/lang/String;
    const-string v4, "com.android.app.dlna"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->access$200(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 729
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->access$202(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;Z)Z

    .line 730
    const-string v4, "DLNA"

    const-string v5, "mDBupdate :: return Preset"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    const/16 v5, 0x47e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V

    .line 736
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #strPackage:Ljava/lang/String;
    .end local v2           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #topActivity:Landroid/content/ComponentName;
    :cond_5c
    :goto_5c
    return-void

    .line 733
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #strPackage:Ljava/lang/String;
    .restart local v2       #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #topActivity:Landroid/content/ComponentName;
    :cond_5d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    iput-boolean v6, v4, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    goto :goto_5c
.end method
