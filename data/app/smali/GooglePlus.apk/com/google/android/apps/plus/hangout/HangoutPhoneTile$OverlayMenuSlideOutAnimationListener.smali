.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayMenuSlideOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    .line 65
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 79
    return-void
.end method
