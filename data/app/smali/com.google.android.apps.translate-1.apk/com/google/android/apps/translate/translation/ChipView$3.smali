.class Lcom/google/android/apps/translate/translation/ChipView$3;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;

.field final synthetic val$viewState:Lcom/google/android/apps/translate/translation/ChipView$ViewState;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->val$viewState:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 397
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$8;->$SwitchMap$com$google$android$apps$translate$translation$ChipView$ViewState:[I

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->val$viewState:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_236

    .line 456
    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$2300(Lcom/google/android/apps/translate/translation/ChipView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$2300(Lcom/google/android/apps/translate/translation/ChipView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/ChipView;->setMinimumHeight(I)V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/ChipView;->invalidate()V

    .line 460
    return-void

    .line 399
    :pswitch_3c
    const-string v0, "ChipView"

    const-string v3, "renderOutputView UNSELECTED"

    invoke-static {v0, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v3, v2, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v3, v2, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$900(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mChipDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTtsWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTtsWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1300(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1400(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1500(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$style;->chip_unselected_translation:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1900(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/OutputPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->hideTranslateResultView()V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mChip:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    const-string v0, "ChipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsExpanded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$2300(Lcom/google/android/apps/translate/translation/ChipView;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ==> false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #setter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$2302(Lcom/google/android/apps/translate/translation/ChipView;Z)Z

    goto/16 :goto_12

    .line 422
    :pswitch_120
    const-string v0, "ChipView"

    const-string v3, "renderOutputView SELECTED_EXPANDED"

    invoke-static {v0, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->initializeOutputPanelView()V
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2400(Lcom/google/android/apps/translate/translation/ChipView;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$100(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setSpeakerIcons(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    invoke-static {v0, v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$2500(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v3, v5, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 431
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v3, v5, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$900(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mChipDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTtsWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTtsWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1300(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1400(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1500(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 441
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$style;->chip_selected_translation:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_231

    move v0, v1

    :goto_1d8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$2100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_233

    :goto_1f1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mChip:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1900(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/OutputPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V

    .line 450
    const-string v0, "ChipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$2300(Lcom/google/android/apps/translate/translation/ChipView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$3;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #setter for: Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z
    invoke-static {v0, v5}, Lcom/google/android/apps/translate/translation/ChipView;->access$2302(Lcom/google/android/apps/translate/translation/ChipView;Z)Z

    goto/16 :goto_12

    :cond_231
    move v0, v2

    .line 444
    goto :goto_1d8

    :cond_233
    move v1, v2

    .line 446
    goto :goto_1f1

    .line 397
    nop

    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_120
    .end packed-switch
.end method
