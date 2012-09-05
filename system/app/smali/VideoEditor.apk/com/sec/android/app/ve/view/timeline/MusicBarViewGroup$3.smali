.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 194
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16

    .line 247
    :goto_15
    return v6

    .line 229
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 240
    .local v1, width:I
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    .local v0, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->x:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$6(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 243
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 245
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$2(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_15
.end method
