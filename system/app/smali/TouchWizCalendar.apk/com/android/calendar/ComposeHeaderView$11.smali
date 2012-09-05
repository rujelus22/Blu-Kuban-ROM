.class Lcom/android/calendar/ComposeHeaderView$11;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;->removeToBtn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$11;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$11;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mToBtnDelHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$1700(Lcom/android/calendar/ComposeHeaderView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$11;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$1200(Lcom/android/calendar/ComposeHeaderView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2670
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 2662
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 2656
    return-void
.end method
