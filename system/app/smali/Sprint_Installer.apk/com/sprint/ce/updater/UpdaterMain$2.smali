.class Lcom/sprint/ce/updater/UpdaterMain$2;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 478
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "SprintUpdater"

    const-string v1, "mFinishOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const/4 v1, 0x1

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z
    invoke-static {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$0(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    .line 480
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_22

    .line 481
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInstallSuccess:Z

    if-eqz v0, :cond_28

    .line 482
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->startPostAction()V
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain;->access$3(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 487
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    .line 488
    return-void

    .line 483
    :cond_28
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$2;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    if-eqz v0, :cond_22

    .line 484
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "SprintUpdater"

    const-string v1, "User canceled..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
