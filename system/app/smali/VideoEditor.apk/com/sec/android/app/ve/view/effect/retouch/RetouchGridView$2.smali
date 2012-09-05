.class Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;
.super Ljava/lang/Object;
.source "RetouchGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->onFinishInflate()V
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
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v5, 0x190

    const/4 v4, 0x2

    .line 150
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 152
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 153
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 201
    :cond_1a
    :goto_1a
    return-void

    .line 156
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerCreated()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 160
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isKenburnsOn()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 161
    const v2, 0x7f0800c3

    const/4 v3, -0x1

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_1a

    .line 166
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #setter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I
    invoke-static {v2, p3}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$4(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;I)V

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #calls: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getEffectConstant(I)I
    invoke-static {v2, p3}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$5(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;I)I

    move-result v1

    .line 169
    .local v1, effect:I
    const/16 v2, 0x16

    if-ne v1, v2, :cond_92

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v3

    .line 170
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->setEffectIndoInfo(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Edit;I)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->removeRetouchEdit()V

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->removeRetouch()V

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$7(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$1;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;)V

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :goto_88
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$0(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1a

    .line 183
    :cond_92
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v3

    .line 183
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->setEffectIndoInfo(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Edit;I)V

    .line 187
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 188
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->applyRetouch()V

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$7(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$2;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;)V

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_88
.end method
