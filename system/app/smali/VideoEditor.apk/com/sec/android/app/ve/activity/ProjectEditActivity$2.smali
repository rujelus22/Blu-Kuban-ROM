.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "nIndex"

    .prologue
    const/4 v8, 0x1

    .line 459
    const/high16 v3, -0x4080

    .line 460
    .local v3, nSelectedDur:F
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 462
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 465
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    .line 467
    .local v2, drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080026

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 469
    const/high16 v3, 0x3f80

    .line 533
    :cond_30
    :goto_30
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v2, v6}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 534
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v6

    float-to-int v7, v3

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 535
    invoke-static {}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->get_instance()Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    .line 536
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 538
    .end local v2           #drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_4a
    :goto_4a
    return-void

    .line 471
    .restart local v2       #drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_4b
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080021

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 473
    const/high16 v3, 0x4040

    goto :goto_30

    .line 475
    :cond_63
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080022

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 477
    const/high16 v3, 0x40a0

    goto :goto_30

    .line 479
    :cond_7b
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080023

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 481
    const/high16 v3, 0x4120

    goto :goto_30

    .line 483
    :cond_93
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080024

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 485
    const/high16 v3, 0x41a0

    goto :goto_30

    .line 487
    :cond_ab
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080025

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 489
    const/high16 v3, 0x41f0

    goto/16 :goto_30

    .line 491
    :cond_c4
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f080089

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 493
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 499
    .local v1, curElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v1, :cond_30

    .line 501
    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleIndex(Lcom/samsung/app/video/editor/external/ClipartParams;)I

    move-result v0

    .line 502
    .local v0, curDrawingIndex:I
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v4

    .line 503
    .local v4, num:I
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v7

    sub-float v3, v6, v7

    .line 504
    add-int/lit8 v6, v4, -0x1

    if-ge v0, v6, :cond_30

    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchDeleteDrawingDialog(IF)V
    invoke-static {v6, v7, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectEditActivity;IF)V

    goto/16 :goto_4a

    .line 512
    .end local v0           #curDrawingIndex:I
    .end local v1           #curElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #num:I
    :cond_104
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    const v7, 0x7f08008a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 518
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 520
    .restart local v1       #curElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v1, :cond_30

    .line 522
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v4

    .line 523
    .restart local v4       #num:I
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v3

    .line 524
    if-le v4, v8, :cond_137

    .line 526
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 527
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchDeleteDrawingDialog(IF)V
    invoke-static {v6, v8, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectEditActivity;IF)V

    goto/16 :goto_4a

    .line 530
    :cond_137
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    goto/16 :goto_30
.end method
