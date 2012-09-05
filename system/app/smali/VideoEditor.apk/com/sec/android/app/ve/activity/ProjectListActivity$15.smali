.class Lcom/sec/android/app/ve/activity/ProjectListActivity$15;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2043
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2e

    .line 2044
    const-string v2, " PLA Inside DIALOG_EXPORT_RESOLUTION onCanel"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2045
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$4()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2046
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2047
    :cond_13
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2048
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    .line 2049
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2050
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v3, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2051
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V

    .line 2055
    :cond_2e
    const/16 v2, 0x54

    if-ne p2, v2, :cond_33

    .line 2058
    :goto_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_32
.end method
