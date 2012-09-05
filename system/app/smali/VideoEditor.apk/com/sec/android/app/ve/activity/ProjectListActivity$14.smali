.class Lcom/sec/android/app/ve/activity/ProjectListActivity$14;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inside DIALOG_EXPORT_RESOLUTION dialog and id -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2020
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_40

    .line 2021
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$4()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2022
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2023
    :cond_36
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2024
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    .line 2038
    :cond_3f
    :goto_3f
    return-void

    .line 2027
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2029
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2031
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2032
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V

    .line 2034
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_3f

    .line 2037
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_3f
.end method
