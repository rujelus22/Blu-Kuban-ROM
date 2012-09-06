.class Lcom/google/android/music/activitymanagement/MusicUIController$3;
.super Ljava/lang/Object;
.source "MusicUIController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicUIController;->startExitAnimation(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicUIController;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicUIController;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->this$0:Lcom/google/android/music/activitymanagement/MusicUIController;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$parent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;-><init>(Lcom/google/android/music/activitymanagement/MusicUIController$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method
