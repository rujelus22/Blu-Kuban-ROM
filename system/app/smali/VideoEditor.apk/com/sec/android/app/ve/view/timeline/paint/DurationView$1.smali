.class Lcom/sec/android/app/ve/view/timeline/paint/DurationView$1;
.super Ljava/lang/Object;
.source "DurationView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 51
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v1

    .line 51
    if-nez v1, :cond_16

    .line 59
    :goto_15
    return v3

    :cond_16
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 56
    .local v0, caption:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

    move-result-object v1

    iput-object v0, v1, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;->view:Landroid/view/View;

    .line 57
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showClipDeleteView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    .line 58
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setVisibility(I)V

    goto :goto_15
.end method
