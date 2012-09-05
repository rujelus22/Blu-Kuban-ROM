.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2054
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
    const/4 v0, 0x0

    .line 2057
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2c

    .line 2058
    const-string v1, "Inside DIALOG_EXPORT_RESOLUTION onCanel"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2059
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$6()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2060
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2061
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2062
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 2063
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2064
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2067
    :cond_2c
    const/16 v1, 0x54

    if-ne p2, v1, :cond_31

    .line 2068
    const/4 v0, 0x1

    .line 2070
    :cond_31
    return v0
.end method
