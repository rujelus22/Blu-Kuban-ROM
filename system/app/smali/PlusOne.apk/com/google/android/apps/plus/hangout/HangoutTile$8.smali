.class Lcom/google/android/apps/plus/hangout/HangoutTile$8;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->initializeHangoutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field final synthetic val$overlayMenu:Landroid/view/View;

.field final synthetic val$slideInDown:Landroid/view/animation/Animation;

.field final synthetic val$slideInUp:Landroid/view/animation/Animation;

.field final synthetic val$slideOutDown:Landroid/view/animation/Animation;

.field final synthetic val$slideOutUp:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutUp:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutDown:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideInDown:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideInUp:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 914
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_43

    .line 915
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    .line 917
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 918
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutDown:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 923
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_43
    :goto_43
    return v3

    .line 926
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideInDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 927
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideOutDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 930
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$slideInUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;->val$overlayMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    goto :goto_43
.end method
