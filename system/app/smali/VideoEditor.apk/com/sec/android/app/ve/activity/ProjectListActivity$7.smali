.class Lcom/sec/android/app/ve/activity/ProjectListActivity$7;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;
    invoke-static {v2, p2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/view/View;)V

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1a

    .line 599
    const-string v2, "doing nothing "

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v2, v3

    .line 626
    :goto_19
    return v2

    .line 602
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 604
    .local v1, size:I
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    new-array v5, v1, [Z

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectListActivity;[Z)V

    .line 605
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    if-lt v0, v1, :cond_b5

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v2

    aput-boolean v4, v2, p3

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Long pressed view\'s parent:::"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v2, p3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    .line 614
    if-nez v2, :cond_c1

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->disableExportShareButton()V

    .line 621
    :goto_80
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Making selection for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v2

    if-eqz v2, :cond_b2

    .line 624
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    :cond_b2
    move v2, v4

    .line 626
    goto/16 :goto_19

    .line 606
    :cond_b5
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v2

    aput-boolean v3, v2, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    .line 618
    :cond_c1
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->enableExportShareButton()V

    goto :goto_80
.end method
