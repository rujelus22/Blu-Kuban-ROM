.class Lcom/sec/android/app/ve/activity/ProjectListActivity$33;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 2435
    const-string v5, "Deleting the projects"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2436
    const/4 v4, 0x0

    .line 2437
    .local v4, x:I
    const-string v5, "Deleting the projects"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2438
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getProjectSelections()[Z

    move-result-object v3

    .line 2439
    .local v3, toBeDeleted:[Z
    array-length v2, v3

    .line 2440
    .local v2, size:I
    const/4 v1, 0x0

    .line 2441
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    if-lt v0, v2, :cond_67

    .line 2447
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_37

    .line 2448
    const-string v5, "No projects...deleted all"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2449
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->changeVisibilty()V

    .line 2451
    :cond_37
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    .line 2452
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2453
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2455
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2456
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v6, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2457
    const v5, 0x7f0800be

    const/4 v6, -0x1

    invoke-static {v5, v6, v7, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    .line 2458
    return-void

    .line 2442
    :cond_67
    aget-boolean v5, v3, v0

    if-eqz v5, :cond_76

    .line 2443
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v5

    sub-int v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->updateProjectList(I)V

    .line 2444
    add-int/lit8 v1, v1, 0x1

    .line 2441
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
