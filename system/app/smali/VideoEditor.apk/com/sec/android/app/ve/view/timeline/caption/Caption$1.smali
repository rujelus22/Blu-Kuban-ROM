.class Lcom/sec/android/app/ve/view/timeline/caption/Caption$1;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
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

    .line 60
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 61
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v1

    .line 61
    if-nez v1, :cond_16

    .line 70
    :goto_15
    return v3

    :cond_16
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 66
    .local v0, caption:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$0(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 67
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$1()Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

    move-result-object v1

    iput-object v0, v1, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    .line 68
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$1()Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showClipDeleteView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    .line 69
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->setVisibility(I)V

    goto :goto_15
.end method
