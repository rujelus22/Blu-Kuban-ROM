.class Lcom/google/android/music/activitymanagement/MusicUIController$3$1;
.super Ljava/lang/Object;
.source "MusicUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicUIController$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/activitymanagement/MusicUIController$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicUIController$3;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicUIController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicUIController$3;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicUIController$3;

    iget-object v1, v1, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicUIController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicUIController$3;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/MusicUIController$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    return-void
.end method
