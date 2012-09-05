.class Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;
.super Ljava/lang/Object;
.source "TransitionControlView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 259
    packed-switch p2, :pswitch_data_a6

    .line 274
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$3(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v1

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v2

    .line 275
    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;->transitionCommited(II)V

    .line 278
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$4(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 283
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyOnUpdateElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 285
    return-void

    .line 261
    :pswitch_82
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V

    goto/16 :goto_3

    .line 264
    :pswitch_8e
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    const/4 v1, 0x2

    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V

    goto/16 :goto_3

    .line 267
    :pswitch_9a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;->this$1:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    const/4 v1, 0x3

    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V

    goto/16 :goto_3

    .line 259
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_82
        :pswitch_8e
        :pswitch_9a
    .end packed-switch
.end method
