.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->initializeHangoutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

.field final synthetic val$overlayMenu:Landroid/view/View;

.field final synthetic val$slideInDown:Landroid/view/animation/Animation;

.field final synthetic val$slideInUp:Landroid/view/animation/Animation;

.field final synthetic val$slideOutDown:Landroid/view/animation/Animation;

.field final synthetic val$slideOutUp:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutUp:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutDown:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideInDown:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideInUp:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 990
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5d

    .line 991
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1600(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 992
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 994
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutUp:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 995
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 997
    :cond_37
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutDown:Landroid/view/animation/Animation;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {v3, v4, v6}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 999
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutDown:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    :goto_4f
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1600(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v3

    if-nez v3, :cond_5a

    move v0, v1

    :cond_5a
    #setter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1602(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Z)Z

    .line 1015
    :cond_5d
    return v1

    .line 1002
    :cond_5e
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1004
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideInDown:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1005
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    :cond_82
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideOutDown:Landroid/view/animation/Animation;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1008
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$slideInUp:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    goto :goto_4f
.end method
