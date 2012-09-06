.class Lcom/google/android/music/ActionbarController$6;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ActionbarController;->animateActionBar(ZIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ActionbarController;

.field final synthetic val$actionBar:Landroid/view/ViewGroup;

.field final synthetic val$makeVis:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/ActionbarController;Landroid/view/ViewGroup;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$6;->this$0:Lcom/google/android/music/ActionbarController;

    iput-object p2, p0, Lcom/google/android/music/ActionbarController$6;->val$actionBar:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/google/android/music/ActionbarController$6;->val$makeVis:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/google/android/music/ActionbarController$6;->val$actionBar:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 699
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController$6;->val$makeVis:Z

    if-nez v0, :cond_e

    .line 700
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$6;->val$actionBar:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 702
    :cond_e
    monitor-exit v1

    .line 703
    return-void

    .line 702
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 704
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 705
    return-void
.end method
