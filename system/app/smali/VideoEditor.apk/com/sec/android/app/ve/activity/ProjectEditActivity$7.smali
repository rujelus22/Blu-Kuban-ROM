.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchDeleteDrawingDialog(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fSelectedDur:F

.field nDurType:I

.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;IF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->nDurType:I

    .line 549
    iput p3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->fSelectedDur:F

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "nIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 554
    if-eq p2, v5, :cond_7

    const/4 v4, -0x2

    if-ne p2, v4, :cond_48

    .line 556
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 557
    .local v0, curElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v0, :cond_48

    .line 559
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v1

    .line 560
    .local v1, drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->getTimeToPreviousDrawing(Lcom/samsung/app/video/editor/external/ClipartParams;)F

    move-result v3

    .line 561
    .local v3, prevEndTime:F
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->getTimeToNextDrawing(Lcom/samsung/app/video/editor/external/ClipartParams;)F

    move-result v2

    .line 562
    .local v2, nextStartTime:F
    if-ne p2, v5, :cond_57

    .line 564
    iget v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->nDurType:I

    if-nez v4, :cond_4c

    .line 566
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->removeDrawingsToRightOfClip(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 573
    :goto_2a
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->fSelectedDur:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 587
    :goto_34
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->fSelectedDur:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 588
    invoke-static {}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->get_instance()Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    .line 592
    .end local v0           #curElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v2           #nextStartTime:F
    .end local v3           #prevEndTime:F
    :cond_48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 593
    return-void

    .line 570
    .restart local v0       #curElement:Lcom/samsung/app/video/editor/external/Element;
    .restart local v1       #drawingClipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .restart local v2       #nextStartTime:F
    .restart local v3       #prevEndTime:F
    :cond_4c
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->retainOnlyDrawingClip(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 571
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    goto :goto_2a

    .line 577
    :cond_57
    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 578
    iget v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->nDurType:I

    if-ne v4, v6, :cond_66

    .line 580
    sub-float v4, v2, v3

    iput v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->fSelectedDur:F

    .line 581
    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    goto :goto_34

    .line 584
    :cond_66
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    sub-float v4, v2, v4

    iput v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;->fSelectedDur:F

    goto :goto_34
.end method
