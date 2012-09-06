.class Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 140
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #getter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$300(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->invalidate()V

    .line 145
    return-void
.end method
