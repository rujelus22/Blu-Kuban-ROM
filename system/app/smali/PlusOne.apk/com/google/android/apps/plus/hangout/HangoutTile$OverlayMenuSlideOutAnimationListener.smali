.class Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayMenuSlideOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    .line 104
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 118
    return-void
.end method
