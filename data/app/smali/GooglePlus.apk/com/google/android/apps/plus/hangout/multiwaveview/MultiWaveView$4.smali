.class Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #getter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$400(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #getter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$400(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$500(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #setter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$402(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;I)I

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #calls: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$600(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;Z)V

    .line 156
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #setter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$702(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;Z)Z

    .line 157
    return-void
.end method
