.class Lcom/sec/android/app/ve/activity/ProjectListActivity$22;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2208
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V

    .line 2209
    const-string v0, "Deleting the project"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->updateProjList()V

    .line 2211
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_33

    .line 2212
    const-string v0, "No projects...deleted all"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2213
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->changeVisibilty()V

    .line 2215
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2217
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2219
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2220
    return-void
.end method