.class Lcom/google/android/apps/translate/translation/ChipView$7;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView;->setSpeakerIcons(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;

.field final synthetic val$canSpeakSrc:Z

.field final synthetic val$canSpeakTrg:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->val$canSpeakSrc:Z

    iput-boolean p3, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->val$canSpeakTrg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->val$canSpeakSrc:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTts:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$400(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/translate/translation/ChipView$7;->val$canSpeakTrg:Z

    if-eqz v3, :cond_21

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    return-void

    :cond_1f
    move v0, v2

    .line 806
    goto :goto_e

    :cond_21
    move v1, v2

    .line 807
    goto :goto_1b
.end method
