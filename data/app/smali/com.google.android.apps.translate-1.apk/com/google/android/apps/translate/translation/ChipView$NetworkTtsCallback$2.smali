.class Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->hideTtsLoading(I)V
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
    .line 888
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    iput p2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;->val$ttsLoadingResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTtsIconView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->access$2900(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;->val$ttsLoadingResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;->this$1:Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTriggeringSpeaker:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->access$3200(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 894
    return-void
.end method
