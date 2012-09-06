.class Lcom/google/android/apps/plus/phone/ComposeBarController$1;
.super Ljava/lang/Object;
.source "ComposeBarController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ComposeBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ComposeBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #getter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$000(Lcom/google/android/apps/plus/phone/ComposeBarController;)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 71
    :goto_9
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #calls: Lcom/google/android/apps/plus/phone/ComposeBarController;->updateVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$100(Lcom/google/android/apps/plus/phone/ComposeBarController;)V

    .line 72
    return-void

    .line 59
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    const/4 v1, 0x2

    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$002(Lcom/google/android/apps/plus/phone/ComposeBarController;I)I

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$202(Lcom/google/android/apps/plus/phone/ComposeBarController;F)F

    goto :goto_9

    .line 65
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$002(Lcom/google/android/apps/plus/phone/ComposeBarController;I)I

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #getter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$300(Lcom/google/android/apps/plus/phone/ComposeBarController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #getter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$400(Lcom/google/android/apps/plus/phone/ComposeBarController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_38
    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$202(Lcom/google/android/apps/plus/phone/ComposeBarController;F)F

    goto :goto_9

    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #getter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$400(Lcom/google/android/apps/plus/phone/ComposeBarController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_38

    .line 57
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_9
        :pswitch_1c
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 76
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #getter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$000(Lcom/google/android/apps/plus/phone/ComposeBarController;)I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 52
    :goto_9
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    #calls: Lcom/google/android/apps/plus/phone/ComposeBarController;->updateVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$100(Lcom/google/android/apps/plus/phone/ComposeBarController;)V

    .line 53
    return-void

    .line 42
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$002(Lcom/google/android/apps/plus/phone/ComposeBarController;I)I

    goto :goto_9

    .line 47
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;->this$0:Lcom/google/android/apps/plus/phone/ComposeBarController;

    const/4 v1, 0x3

    #setter for: Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ComposeBarController;->access$002(Lcom/google/android/apps/plus/phone/ComposeBarController;I)I

    goto :goto_9

    .line 40
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method
