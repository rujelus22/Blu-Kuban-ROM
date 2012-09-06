.class public Lcom/google/android/apps/translate/editor/EditPanelView;
.super Landroid/widget/LinearLayout;
.source "EditPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;
.implements Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;
.implements Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;
.implements Landroid/text/TextWatcher;
.implements Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/EditPanelView$6;,
        Lcom/google/android/apps/translate/editor/EditPanelView$Callback;
    }
.end annotation


# static fields
.field public static final ALWAYS_SHOW_CLEAR_BUTTON_IN_EDITMODE:Z = true

.field private static final SELECT_TEXT_WHEN_EDIT_MODE_STARTS:Z = true

.field private static final TAG:Ljava/lang/String; = "EditPanelView"

.field private static final TRANSLATE_AFTER_VOICE_INPUT:Z = true


# instance fields
.field private mAccept:Landroid/widget/ImageView;

.field private mAcceptWrapper:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

.field private mClearButton:Landroid/widget/ImageButton;

.field private mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

.field private mControlPanelWrapper:Landroid/view/View;

.field private mEditMode:Z

.field private mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

.field private mInstantTranslationDivider:Landroid/view/View;

.field private mInternalEditMode:Z

.field private mIsConversationMode:Z

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mLatestTranslationSource:Ljava/lang/String;

.field private mLatestTranslationTarget:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mLongPressed:Z

.field private mPostEditInitialText:Ljava/lang/String;

.field private mPostEditInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

.field private mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;

.field private mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

.field private mTranslateProgressBar:Landroid/widget/ProgressBar;

.field private mVoiceLocale:Ljava/lang/String;

.field private final sMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInternalEditMode:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    .line 103
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 107
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLongPressed:Z

    .line 126
    const-string v0, "EditPanelView"

    const-string v1, "EditPanelView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-direct {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$integer;->InputMaxLines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->sMaxLines:I

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/editor/EditPanelView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onSuggestSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/InputMethodView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/editor/EditPanelView;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslateProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/editor/EditPanelView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAccept:Landroid/widget/ImageView;

    return-object v0
.end method

.method private declared-synchronized clearTexts()V
    .registers 3

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    const-string v0, "EditPanelView"

    const-string v1, "clearTexts"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 281
    monitor-exit p0

    return-void

    .line 278
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleTapOnInputTextBox()V
    .registers 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 786
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView$Callback;->onEditModeStart(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 803
    :goto_d
    return-void

    .line 788
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->hasInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 789
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_d

    .line 791
    :cond_1c
    sget-object v0, Lcom/google/android/apps/translate/editor/EditPanelView$6;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    goto :goto_d

    .line 793
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_d

    .line 796
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->cancel()V

    goto :goto_d

    .line 791
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method

.method private onSuggestSelected(Ljava/lang/String;)V
    .registers 5
    .parameter "inputText"

    .prologue
    .line 529
    const-string v0, "EditPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuggestSelected inputText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/editor/EditPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView$3;-><init>(Lcom/google/android/apps/translate/editor/EditPanelView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method private updateButtons(Ljava/lang/String;)V
    .registers 8
    .parameter "text"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 717
    const-string v3, "EditPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateButtons text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    move v0, v1

    .line 722
    .local v0, enableButtons:Z
    :goto_21
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mClearButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2b
    move v2, v1

    :cond_2c
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 724
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAccept:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 725
    return-void

    .end local v0           #enableButtons:Z
    :cond_35
    move v0, v2

    .line 718
    goto :goto_21
.end method

.method private updateImeSuggestions()V
    .registers 5

    .prologue
    .line 255
    const-string v1, "EditPanelView"

    const-string v2, "updateImeSuggestions"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, deviceLang:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 259
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/TextSlot;->getInputType()I

    move-result v2

    const v3, -0x10001

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setInputType(I)V

    .line 267
    :goto_2a
    return-void

    .line 264
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/TextSlot;->getInputType()I

    move-result v2

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setInputType(I)V

    goto :goto_2a
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 697
    const-string v1, "EditPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->isInternalEditMode()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 714
    :goto_24
    return-void

    .line 703
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInternalEditMode:Z

    if-nez v1, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 707
    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 709
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    if-eqz v1, :cond_53

    .line 711
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 713
    :cond_53
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->updateButtons(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 728
    return-void
.end method

.method public disableEditMode(ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 7
    .parameter "hideTranslation"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 391
    const-string v2, "EditPanelView"

    const-string v3, "disableEditMode"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableSuggestions()Z

    .line 393
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->sMaxLines:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/editor/TextSlot;->setMaxLines(I)V

    .line 394
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 395
    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditMode:Z

    .line 396
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 397
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    if-eqz p1, :cond_26

    move v0, v1

    :cond_26
    invoke-virtual {v2, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->stop()V

    .line 400
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-eqz v0, :cond_41

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanelWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAcceptWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 406
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslationDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public disableSuggestions()Z
    .registers 3

    .prologue
    .line 506
    const-string v0, "EditPanelView"

    const-string v1, "disableSuggestions"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1a

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public enableEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 6
    .parameter "inputMethod"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    const-string v0, "EditPanelView"

    const-string v1, "enableEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput-boolean v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditMode:Z

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setMaxLines(I)V

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 414
    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->initInstantTranslation(Z)V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslationDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanelWrapper:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAcceptWrapper:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 420
    invoke-static {p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->logInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 421
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 422
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-eqz v0, :cond_5d

    .line 423
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 427
    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideTranslationLoading()V

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->updateButtons(Ljava/lang/String;)V

    .line 429
    return-void

    .line 425
    :cond_5d
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_48
.end method

.method public enableSuggestions()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 494
    const-string v1, "EditPanelView"

    const-string v2, "enableSuggestions"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_21

    .line 496
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 497
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 500
    const/4 v0, 0x1

    .line 502
    :cond_21
    return v0
.end method

.method public endInternalEdit()V
    .registers 2

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInternalEditMode:Z

    .line 693
    return-void
.end method

.method public getSourceLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getSuggestTextViewCount()I
    .registers 7

    .prologue
    .line 585
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->getEditingAreaViewHeight()I

    move-result v0

    .line 586
    .local v0, editingAreaHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 587
    .local v1, r:Landroid/content/res/Resources;
    sget v3, Lcom/google/android/apps/translate/R$dimen;->suggest_text_box_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 588
    .local v2, suggestTextViewHeight:I
    if-nez v2, :cond_15

    .line 589
    const/4 v3, 0x0

    .line 593
    :goto_14
    return v3

    .line 591
    :cond_15
    const-string v3, "EditPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSuggestTextViewCount editingAreaHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v3, "EditPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSuggestTextViewCount suggestTextViewHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    div-int v3, v0, v2

    goto :goto_14
.end method

.method public getTargetLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getTranslationText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "srcText"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLatestTranslationSource:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 611
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLatestTranslationTarget:Ljava/lang/String;

    .line 613
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->getTranslationText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public hasInputMethodShown()Z
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->hasInputMethodShown()Z

    move-result v0

    return v0
.end method

.method public hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 382
    const-string v0, "EditPanelView"

    const-string v1, "hideCurrentInputMethod"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    move-result v0

    return v0
.end method

.method public hideTranslationLoading()V
    .registers 3

    .prologue
    .line 556
    const-string v0, "EditPanelView"

    const-string v1, "hideTranslationLoading"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/editor/EditPanelView$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/editor/EditPanelView$5;-><init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V
    .registers 18
    .parameter "activity"
    .parameter "languages"
    .parameter "fromLanguage"
    .parameter "toLanguage"
    .parameter "locale"
    .parameter "isConversationMode"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    .line 167
    iput-object p3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 168
    iput-object p4, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 169
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mVoiceLocale:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v10

    .line 175
    .local v10, im:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->initInstantTranslation(Z)V

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v6, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v7, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iget-object v8, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mVoiceLocale:Ljava/lang/String;

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/translate/editor/InputMethodView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/editor/TextSlot;Lcom/google/android/apps/translate/asreditor/AsrResultEditor;Ljava/lang/String;Lcom/google/android/apps/translate/editor/EditPanelView;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/translate/editor/InputMethodView;->restartInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->updateImeSuggestions()V

    .line 181
    new-instance v1, Lcom/google/android/apps/translate/editor/EditPanelView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/editor/EditPanelView$1;-><init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    .line 209
    new-instance v1, Lcom/google/android/apps/translate/editor/SuggestAdapter;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v6, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/translate/editor/SuggestAdapter;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableSuggestions()Z

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_64

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/apps/translate/editor/EditPanelView$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/EditPanelView$2;-><init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    :cond_64
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->updateButtons(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public initInstantTranslation(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditMode:Z

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getInstantTranslation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->forceInstantTranslation()V

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setVisibility(I)V

    .line 243
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->invalidate()V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->invalidate()V

    .line 245
    return-void

    .line 240
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->stop()V

    goto :goto_24
.end method

.method public isEditMode()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditMode:Z

    return v0
.end method

.method public onAccept(Z)V
    .registers 5
    .parameter "doTranslate"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, inputText:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(I)V

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInitialText:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInitialText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 320
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV_EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 322
    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33

    .line 323
    const/4 p1, 0x0

    .line 325
    :cond_33
    if-eqz p1, :cond_38

    .line 326
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->showTranslationLoading()V

    .line 329
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->getId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/apps/translate/editor/EditPanelView$Callback;->onAccept(IZ)V

    .line 330
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 285
    const-string v2, "EditPanelView"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 287
    .local v0, id:I
    sget v2, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_accept:I

    if-ne v0, v2, :cond_1b

    .line 288
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 289
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 303
    :cond_1a
    :goto_1a
    return-void

    .line 290
    :cond_1b
    sget v2, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_clear:I

    if-ne v0, v2, :cond_1a

    .line 291
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/TextSlot;->isEmpty()Z

    move-result v1

    .line 292
    .local v1, isTextEmpty:Z
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->clearTexts()V

    .line 293
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    if-eqz v2, :cond_31

    .line 294
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->reset()V

    .line 296
    :cond_31
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->onClearText()V

    .line 297
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->cancel()V

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->hasInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_1a

    .line 300
    :cond_4b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    goto :goto_1a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 574
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    .line 575
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 577
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 578
    return-void
.end method

.method public onConfirm()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->EDITPANELVIEW_INSTANT_TRANSLATION_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 311
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 312
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->onDestroy()V

    .line 379
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public onEditCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "srcText"
    .parameter "trgText"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLatestTranslationSource:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLatestTranslationTarget:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public onEditPanelHeightChanged(I)V
    .registers 3
    .parameter "actionBarHeight"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->onEditPanelHeightChanged(I)V

    .line 598
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v0, "EditPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction actionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz p3, :cond_37

    .line 336
    const-string v0, "EditPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction event.getAction()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_37
    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_42

    :cond_3f
    const/4 v0, 0x6

    if-ne p2, v0, :cond_4c

    .line 340
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 341
    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 343
    :cond_4c
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 134
    sget v0, Lcom/google/android/apps/translate/R$id;->msg_confirm_content:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 137
    sget v0, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_accept:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAccept:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget v0, Lcom/google/android/apps/translate/R$id;->frame_accept:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mAcceptWrapper:Landroid/view/View;

    .line 140
    sget v0, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_clear:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mClearButton:Landroid/widget/ImageButton;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lcom/google/android/apps/translate/R$id;->instant_translation_divider:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslationDivider:Landroid/view/View;

    .line 143
    sget v0, Lcom/google/android/apps/translate/R$id;->edit_panel_instant_translate:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setCallback(Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;)V

    .line 145
    sget v0, Lcom/google/android/apps/translate/R$id;->translation_loading:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslateProgressBar:Landroid/widget/ProgressBar;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setCursorVisible(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setInstantTranslateHandler(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->setKeyPreImeListener(Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 649
    const-string v0, "EditPanelView"

    const-string v1, "onInputMethodReady"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableSuggestions()Z

    .line 651
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->invalidate()V

    .line 652
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView$Callback;->onEditModeReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 653
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLongPressed:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-nez v0, :cond_2b

    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->CAMERA:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eq p1, v0, :cond_26

    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->HANDWRITING:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eq p1, v0, :cond_26

    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne p1, v0, :cond_2b

    .line 660
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->selectAll()V

    .line 663
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableSuggestions()Z

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v0, v1, :cond_39

    .line 666
    invoke-static {p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->logInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 667
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 669
    :cond_39
    return-void
.end method

.method public onInputMethodStart(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)Z
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 639
    const-string v0, "EditPanelView"

    const-string v1, "onInputMethodStart NOT-EDIT"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView$Callback;->onEditModeStart(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 641
    const/4 v0, 0x1

    .line 645
    :goto_13
    return v0

    .line 643
    :cond_14
    const-string v0, "EditPanelView"

    const-string v1, "onInputMethodStart EDIT"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableSuggestions()Z

    .line 645
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 673
    const-string v1, "EditPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey KeyEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-eqz p3, :cond_41

    const/16 v1, 0x42

    if-ne p2, v1, :cond_41

    .line 675
    const-string v1, "EditPanelView"

    const-string v2, "onKey ENTER"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_40

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 677
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 678
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 684
    :cond_40
    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 460
    const-string v1, "EditPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyPreIme keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz p2, :cond_70

    const/4 v1, 0x4

    if-ne p1, v1, :cond_70

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 462
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_68

    .line 463
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->hasInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 464
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 465
    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-eqz v1, :cond_3d

    .line 490
    :cond_3c
    :goto_3c
    return v0

    .line 470
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 472
    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    goto :goto_3c

    .line 475
    :cond_51
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_3c

    .line 476
    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    goto :goto_3c

    .line 482
    :cond_5d
    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 483
    const-string v1, "EditPanelView"

    const-string v2, "onKeyPreIme ACCEPT"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 486
    :cond_68
    const-string v1, "EditPanelView"

    const-string v2, "onKeyPreIme FORWARD_BACK"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 490
    :cond_70
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/editor/InputMethodView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3c
.end method

.method public onLongPause(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V
    .registers 5
    .parameter "inputText"
    .parameter "targetText"

    .prologue
    .line 366
    const-string v0, "EditPanelView"

    const-string v1, "onLongPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->onLongPause(Landroid/widget/EditText;)V

    .line 368
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLongPressed:Z

    .line 750
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->handleTapOnInputTextBox()V

    .line 751
    return-void
.end method

.method public onNonStreamingVoiceResult(Ljava/lang/String;)V
    .registers 6
    .parameter "recognitionResult"

    .prologue
    .line 436
    const-string v1, "EditPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNonStreamingVoiceResult recognitionResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-eqz p1, :cond_30

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->replaceSelectedText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, newText:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-nez v1, :cond_31

    .line 440
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 441
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 448
    .end local v0           #newText:Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 443
    .restart local v0       #newText:Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInitialText:Ljava/lang/String;

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mIsConversationMode:Z

    if-eqz v1, :cond_30

    .line 444
    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mPostEditInitialText:Ljava/lang/String;

    goto :goto_30
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 372
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableEditMode(ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 374
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->onPause()V

    .line 375
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 760
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLongPressed:Z

    .line 780
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->handleTapOnInputTextBox()V

    .line 781
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 618
    if-gtz p2, :cond_49

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getHeight()I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->HANDWRITING:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v0, v1, :cond_49

    .line 621
    const-string v0, "EditPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcibly switch to keyboard. edit_panel_height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " input_method_panel_height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 635
    :cond_49
    return-void
.end method

.method public onSourceTextDone(Landroid/text/SpannableStringBuilder;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 357
    return-void
.end method

.method public onSourceTextUpdate(Landroid/text/SpannableStringBuilder;)V
    .registers 2
    .parameter "voiceInputText"

    .prologue
    .line 348
    return-void
.end method

.method public onTargetTextDone(Landroid/text/SpannableStringBuilder;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setTranslate(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public onTargetTextUpdate(Landroid/text/SpannableStringBuilder;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslate:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->onTargetTextUpdate(Landroid/text/SpannableStringBuilder;Landroid/widget/EditText;)V

    .line 353
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 731
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 732
    const-string v0, "EditPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_3c
    return-void
.end method

.method public onTranslationDone()V
    .registers 3

    .prologue
    .line 568
    const-string v0, "EditPanelView"

    const-string v1, "onTranslationDone"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideTranslationLoading()V

    .line 570
    return-void
.end method

.method public resetSuggestions()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_28

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mSuggestAdapter:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 526
    :cond_28
    return-void
.end method

.method public setCallback(Lcom/google/android/apps/translate/editor/EditPanelView$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 273
    const-string v0, "EditPanelView"

    const-string v1, "setCallback"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mCallback:Lcom/google/android/apps/translate/editor/EditPanelView$Callback;

    .line 275
    return-void
.end method

.method public setInputMethodView(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$id;->input_method_view_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanelWrapper:Landroid/view/View;

    .line 158
    return-void
.end method

.method public setLanguageList(Lcom/google/android/apps/translate/Languages;)V
    .registers 2
    .parameter "list"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 252
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 2
    .parameter "listView"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mListView:Landroid/widget/ListView;

    .line 162
    return-void
.end method

.method public showTranslationLoading()V
    .registers 3

    .prologue
    .line 544
    const-string v0, "EditPanelView"

    const-string v1, "showTranslationLoading"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/editor/EditPanelView$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/editor/EditPanelView$4;-><init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public startInternalEdit()V
    .registers 2

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView;->mInternalEditMode:Z

    .line 689
    return-void
.end method
