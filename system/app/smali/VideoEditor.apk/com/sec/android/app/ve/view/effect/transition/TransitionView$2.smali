.class Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->gotFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsFocused()Z
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$4(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Z

    move-result v0

    return v0
.end method

.method public transitionCommited(II)V
    .registers 6
    .parameter "transitionType"
    .parameter "sec"

    .prologue
    const/4 v2, 0x1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition done :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_7a

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    new-instance v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;Lcom/samsung/app/video/editor/external/Edit;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 234
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->setEffectIndoInfo(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Edit;I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/Edit;->setTrans_duration(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #calls: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setOnResource(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$3(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setSelected(Z)V

    .line 248
    :goto_79
    return-void

    .line 242
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->setEffectIndoInfo(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Edit;I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;Lcom/samsung/app/video/editor/external/Edit;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    const v1, 0x7f02017e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setSelected(Z)V

    goto :goto_79
.end method
