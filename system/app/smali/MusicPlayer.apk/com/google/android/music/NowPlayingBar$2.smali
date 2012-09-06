.class Lcom/google/android/music/NowPlayingBar$2;
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

.field final synthetic val$newVisibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/NowPlayingBar;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$2;->this$0:Lcom/google/android/music/NowPlayingBar;

    iput p2, p0, Lcom/google/android/music/NowPlayingBar$2;->val$newVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$2;->this$0:Lcom/google/android/music/NowPlayingBar;

    const/4 v1, -0x1

    #setter for: Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I
    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$102(Lcom/google/android/music/NowPlayingBar;I)I

    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$2;->this$0:Lcom/google/android/music/NowPlayingBar;

    iget v1, p0, Lcom/google/android/music/NowPlayingBar$2;->val$newVisibility:I

    #calls: Lcom/google/android/music/NowPlayingBar;->superSetVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$000(Lcom/google/android/music/NowPlayingBar;I)V

    .line 191
    return-void
.end method
