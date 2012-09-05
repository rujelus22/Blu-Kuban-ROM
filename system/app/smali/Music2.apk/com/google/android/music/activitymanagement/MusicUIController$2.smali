.class Lcom/google/android/music/activitymanagement/MusicUIController$2;
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
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicUIController;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController$2;->this$0:Lcom/google/android/music/activitymanagement/MusicUIController;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicUIController$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicUIController$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController$2;->val$parent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicUIController$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController$2$1;-><init>(Lcom/google/android/music/activitymanagement/MusicUIController$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 224
    return-void
.end method
