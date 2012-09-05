.class Lcom/sec/android/app/ve/activity/ProjectListActivity$8;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proj:::Item slected:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v0, p3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;
    invoke-static {v0, p2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_76

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Making selection for:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    .line 643
    if-nez v0, :cond_77

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->disableExportShareButton()V

    .line 649
    :goto_65
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 652
    :cond_76
    return-void

    .line 647
    :cond_77
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->enableExportShareButton()V

    goto :goto_65
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->changeVisibilty()V

    .line 658
    return-void
.end method
