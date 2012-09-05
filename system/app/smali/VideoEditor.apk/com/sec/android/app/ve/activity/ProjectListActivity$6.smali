.class Lcom/sec/android/app/ve/activity/ProjectListActivity$6;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 525
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v4

    if-nez v4, :cond_cf

    .line 527
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->entered:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$28(Lcom/sec/android/app/ve/activity/ProjectListActivity;Z)V

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gallery:::mDeletView visible::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, p3

    if-eqz v4, :cond_82

    .line 530
    const-string v4, "ON-->OFF"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v4

    aput-boolean v6, v4, p3

    .line 532
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$26()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$27()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 535
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 545
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5d
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_af

    .line 553
    :goto_66
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->entered:Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$29(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 554
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iput-boolean v6, v4, Lcom/sec/android/app/ve/activity/ProjectListActivity;->markingStarted:Z

    .line 555
    :cond_72
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-boolean v4, v4, Lcom/sec/android/app/ve/activity/ProjectListActivity;->markingStarted:Z

    if-nez v4, :cond_81

    .line 556
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->disableDeleteButton()V

    .line 588
    .end local v1           #i:I
    :cond_81
    :goto_81
    return-void

    .line 538
    :cond_82
    const-string v4, "OFF--->ON"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$27()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$26()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v4

    aput-boolean v7, v4, p3

    .line 542
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 543
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_5c

    .line 546
    .restart local v1       #i:I
    :cond_af
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_cc

    .line 547
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->entered:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$28(Lcom/sec/android/app/ve/activity/ProjectListActivity;Z)V

    .line 548
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iput-boolean v7, v4, Lcom/sec/android/app/ve/activity/ProjectListActivity;->markingStarted:Z

    .line 549
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->enableDeleteButton()V

    goto :goto_66

    .line 545
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 561
    .end local v1           #i:I
    :cond_cf
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e6

    .line 562
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 565
    :cond_e6
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static {v4, p3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 566
    const-string v4, "PLA:::position"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 567
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    .line 568
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 569
    .local v3, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->setCloneTE(Ljava/lang/Object;)V

    .line 570
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v4

    sput v4, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 574
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const-class v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .local v1, i:Landroid/content/Intent;
    const-string v4, "filename"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    if-eqz v3, :cond_143

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    if-lez v4, :cond_143

    .line 579
    const-string v4, "launch theme is true-->"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 580
    const-string v4, "launchaddmedia"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    :goto_137
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->themeNotLaunched:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$31(Lcom/sec/android/app/ve/activity/ProjectListActivity;Z)V

    .line 586
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_81

    .line 583
    :cond_143
    const-string v4, "launchaddmedia"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_137
.end method
