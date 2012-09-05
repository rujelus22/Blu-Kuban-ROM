.class Lcom/android/task/TaskViewActivity$AnimListener;
.super Ljava/lang/Object;
.source "TaskViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/task/TaskViewActivity$AnimListener;->this$0:Lcom/android/task/TaskViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/task/TaskViewActivity$AnimListener;->this$0:Lcom/android/task/TaskViewActivity;

    #setter for: Lcom/android/task/TaskViewActivity;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/task/TaskViewActivity;->access$802(Lcom/android/task/TaskViewActivity;Z)Z

    .line 720
    iget-object v0, p0, Lcom/android/task/TaskViewActivity$AnimListener;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/task/TaskViewActivity;->access$900(Lcom/android/task/TaskViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/task/TaskViewActivity$AnimListener;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/task/TaskViewActivity;->access$900(Lcom/android/task/TaskViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 726
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/task/TaskViewActivity$AnimListener;->this$0:Lcom/android/task/TaskViewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/task/TaskViewActivity;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/task/TaskViewActivity;->access$802(Lcom/android/task/TaskViewActivity;Z)Z

    .line 731
    return-void
.end method
