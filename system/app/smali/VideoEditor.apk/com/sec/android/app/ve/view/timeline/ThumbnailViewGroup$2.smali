.class Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;
.super Ljava/lang/Object;
.source "ThumbnailViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    .line 644
    :cond_7
    :goto_7
    return-void

    .line 608
    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 610
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 611
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 613
    :cond_25
    const/4 v1, -0x1

    .line 614
    .local v1, setDuration:I
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 615
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v2

    float-to-int v1, v2

    .line 620
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    .line 621
    new-instance v3, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;-><init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)V

    .line 636
    const/4 v4, 0x1

    .line 620
    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showImageDurationDialog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;II)V

    goto :goto_7

    .line 605
    nop

    :pswitch_data_46
    .packed-switch 0x7f0b009e
        :pswitch_8
    .end packed-switch
.end method
