.class Lcom/sec/android/app/dlna/DLNAManager$4;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAManager;->bindDMSService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    check-cast p2, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->access$002(Lcom/sec/android/app/dlna/DLNAManager;Lcom/sec/android/app/dlna/service/DmsLocalService;)Lcom/sec/android/app/dlna/service/DmsLocalService;

    .line 576
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 579
    const-string v0, "DLNA"

    const-string v1, "on Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$4;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->access$002(Lcom/sec/android/app/dlna/DLNAManager;Lcom/sec/android/app/dlna/service/DmsLocalService;)Lcom/sec/android/app/dlna/service/DmsLocalService;

    .line 581
    return-void
.end method
