.class Lcom/google/android/music/NowPlayingBar$1;
.super Ljava/lang/Object;
.source "NowPlayingBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/NowPlayingBar;


# direct methods
.method constructor <init>(Lcom/google/android/music/NowPlayingBar;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$1;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$1;->this$0:Lcom/google/android/music/NowPlayingBar;

    const/16 v1, 0x8

    #calls: Lcom/google/android/music/NowPlayingBar;->superSetVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$000(Lcom/google/android/music/NowPlayingBar;I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$1;->this$0:Lcom/google/android/music/NowPlayingBar;

    const/4 v1, -0x1

    #setter for: Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I
    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$102(Lcom/google/android/music/NowPlayingBar;I)I

    .line 170
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 172
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 173
    return-void
.end method
