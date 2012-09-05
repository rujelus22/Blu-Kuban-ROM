.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2107
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3e

    .line 2108
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$6()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2109
    const-string v2, "Stopping Export"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2110
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2111
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->stopExport()V

    .line 2112
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2115
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    :cond_3d
    move v0, v1

    .line 2123
    :cond_3e
    return v0
.end method
