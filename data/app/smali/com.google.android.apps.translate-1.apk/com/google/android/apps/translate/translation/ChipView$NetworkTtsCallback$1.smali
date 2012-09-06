.class Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->showTtsLoading(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

.field final synthetic val$ttsLoadingResId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    iput p2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->val$ttsLoadingResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 877
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTtsIconView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->access$2900(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->val$ttsLoadingResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 879
    .local v0, ttsLoading:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelWidth:I
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$3000(Lcom/google/android/apps/translate/translation/ChipView;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 880
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelHeight:I
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$3100(Lcom/google/android/apps/translate/translation/ChipView;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 881
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTriggeringSpeaker:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->access$3200(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 883
    return-void
.end method
