.class Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;
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
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animator"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->ping()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #getter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$000(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;->this$0:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    #getter for: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$100(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)F

    move-result v3

    #calls: Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->access$200(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;IFF)V

    .line 137
    return-void
.end method
