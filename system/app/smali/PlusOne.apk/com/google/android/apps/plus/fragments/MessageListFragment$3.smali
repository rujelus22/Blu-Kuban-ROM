.class Lcom/google/android/apps/plus/fragments/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 327
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 324
    return-void
.end method
