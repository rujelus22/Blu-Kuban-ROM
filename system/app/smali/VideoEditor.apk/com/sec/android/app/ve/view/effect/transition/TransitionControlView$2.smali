.class Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;
.super Ljava/lang/Object;
.source "TransitionControlView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->onFinishInflate()V
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
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 330
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 354
    :cond_8
    :goto_8
    return-void

    .line 334
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 336
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 337
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    goto :goto_8

    .line 340
    :cond_21
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerCreated()Z

    move-result v0

    if-nez v0, :cond_8

    .line 346
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #calls: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->setSelection(I)V
    invoke-static {v0, p3}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$9(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$3(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;->transitionCommited(II)V

    .line 349
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$10(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->notifyDataSetChanged()V

    .line 350
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 351
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyOnUpdateElement(Lcom/samsung/app/video/editor/external/Element;)V

    goto :goto_8
.end method
