.class Lcom/samsung/dmp/layout/DMPVideoActivity$38;
.super Landroid/content/BroadcastReceiver;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 3003
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3005
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 3007
    :try_start_c
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-eqz v1, :cond_1f

    .line 3008
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1f} :catch_3e

    .line 3013
    :cond_1f
    :goto_1f
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMPVideoActivity.mIsHDMIPlugged is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    return-void

    .line 3010
    :catch_3e
    move-exception v0

    .line 3011
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method
