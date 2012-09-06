.class public Lcom/google/android/apps/translate/conversation/ConversationPanel;
.super Landroid/widget/RelativeLayout;
.source "ConversationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/translate/editor/EditPanelView$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;


# static fields
.field private static final ALWAYS_SHOW_INTRO:Z = true

.field private static final TAG:Ljava/lang/String; = "ConversationPanel"

.field private static final USE_VOICE_IS_POSSIBLE:Z = true


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

.field private mControlPanelWrapper:Landroid/view/View;

.field private mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

.field private mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mIntroMessageView:Landroid/view/View;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mLanguagePanel:Landroid/view/View;

.field private mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

.field private mLeftAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mListWrapper:Landroid/view/View;

.field private mRightAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mRightBtn:Landroid/widget/TextView;

.field private mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mTitleView:Lcom/google/android/apps/translate/home/TitleView;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;

.field private mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/conversation/ConversationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/TextSlot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/TextSlot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    return-void
.end method

.method private endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 15
    .parameter "confirmView"
    .parameter "textSlot"
    .parameter "langNameView"
    .parameter "theOtherConfirmViewWrapper"
    .parameter "doTranslate"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 376
    const-string v0, "ConversationPanel"

    const-string v1, "endEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, text:Ljava/lang/String;
    if-eqz p5, :cond_33

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {p2}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getTargetLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-ne v5, p1, :cond_62

    move v5, v2

    :goto_30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->addNewTranslateEntry(Ljava/lang/String;ZLcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 387
    :cond_33
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-virtual {p1, v2, p6}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableEditMode(ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 390
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->setVisibility(I)V

    .line 391
    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->invalidate()V

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    if-eqz v0, :cond_52

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_52
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0, p1, v7}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    .line 400
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationPanel$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/conversation/ConversationPanel$5;-><init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void

    :cond_62
    move v5, v7

    .line 379
    goto :goto_30
.end method

.method private languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V
    .registers 8
    .parameter "from"
    .parameter "to"
    .parameter "triggerTranslate"
    .parameter "manual"

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p2, v2}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_11
    move v0, v1

    .line 212
    .local v0, isChanged:Z
    :goto_12
    if-eqz v0, :cond_29

    .line 213
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 214
    iput-object p2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 215
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 216
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/google/android/apps/translate/Util;->generateLongPairText(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 220
    :cond_29
    return-void

    .line 209
    .end local v0           #isChanged:Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private onVoiceInputClick(ILcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "id"
    .parameter "lang"

    .prologue
    .line 224
    const/16 v0, 0xb5

    .line 225
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/translate/VoiceInputHelper;->isVoiceInputAvailable(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->VOICE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onVoiceInput(Lcom/google/android/apps/translate/Language;IILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 233
    :cond_11
    :goto_11
    return-void

    .line 228
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_voice_input_not_supported:I

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/apps/translate/Profile;->getConversationInputConfirm(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onVoiceInput(Lcom/google/android/apps/translate/Language;IILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_11
.end method

.method private startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 13
    .parameter "confirmView"
    .parameter "langNameView"
    .parameter "theOtherConfirmViewWrapper"
    .parameter "im"

    .prologue
    const/16 v7, 0x8

    .line 349
    const-string v0, "ConversationPanel"

    const-string v1, "startEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/home/TitleView;->hideTitleBar()V

    .line 353
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 354
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getTargetLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 361
    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->setCurrentConfirmView(Lcom/google/android/apps/translate/editor/EditPanelView;)V

    .line 363
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->setVisibility(I)V

    .line 365
    if-eqz p4, :cond_41

    .line 366
    invoke-virtual {p1, p4}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 368
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_4a
    return-void
.end method

.method private swapLanguagePair(Z)V
    .registers 6
    .parameter "manualSwap"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 196
    .local v0, from:Lcom/google/android/apps/translate/Language;
    if-nez v0, :cond_14

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 200
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 201
    .local v1, to:Lcom/google/android/apps/translate/Language;
    if-nez v1, :cond_28

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 204
    :cond_28
    invoke-direct {p0, v0, v1, p1, p1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 205
    return-void
.end method


# virtual methods
.method getIntroView()Landroid/view/View;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    return-object v0
.end method

.method getLeftLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method getRightLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getVoiceInput(ILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 5
    .parameter "resourceId"
    .parameter "im"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;-><init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;ILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public initParameters(Lcom/google/android/apps/translate/conversation/ConversationHelper;Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 12
    .parameter "helper"
    .parameter "activity"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 92
    const-string v4, "ConversationPanel"

    const-string v5, "initParameters"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    .line 94
    iput-object p2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    .line 96
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v4

    if-eqz v4, :cond_185

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->getRootView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/android/apps/translate/R$id;->fragments_translate_title_bar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/home/TitleView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    .line 98
    sget v4, Lcom/google/android/apps/translate/R$id;->translate_title_bar:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/home/TitleView;

    .line 99
    .local v3, titleViewInFragment:Lcom/google/android/apps/translate/home/TitleView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/home/TitleView;->setVisibility(I)V

    .line 104
    .end local v3           #titleViewInFragment:Lcom/google/android/apps/translate/home/TitleView;
    :goto_2c
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    sget v5, Lcom/google/android/apps/translate/R$id;->translate_title:I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/home/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, mTitleTextView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/apps/translate/TranslateBaseActivity;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v4, Lcom/google/android/apps/translate/R$id;->language_selection_panel:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;

    .line 107
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/home/TitleView;->setLanguagePanel(Landroid/view/View;)V

    .line 109
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/TranslateApplication;->getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 112
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/android/apps/translate/R$id;->input_method_view_wrapper:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mControlPanelWrapper:Landroid/view/View;

    .line 114
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mControlPanelWrapper:Landroid/view/View;

    sget v5, Lcom/google/android/apps/translate/R$id;->control_panel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/editor/InputMethodView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    .line 116
    sget v4, Lcom/google/android/apps/translate/R$id;->left_conv_edit_view:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/editor/EditPanelView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->setCallback(Lcom/google/android/apps/translate/editor/EditPanelView$Callback;)V

    .line 118
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/EditPanelView;->setInputMethodView(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 120
    sget v4, Lcom/google/android/apps/translate/R$id;->right_conv_edit_view:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/editor/EditPanelView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 121
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->setCallback(Lcom/google/android/apps/translate/editor/EditPanelView$Callback;)V

    .line 122
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/EditPanelView;->setInputMethodView(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 124
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 126
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget v5, Lcom/google/android/apps/translate/R$id;->msg_confirm_content:I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 128
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 129
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->setTouchEventCallback(Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;)V

    .line 130
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget v5, Lcom/google/android/apps/translate/R$id;->msg_confirm_content:I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 132
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 133
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->setTouchEventCallback(Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;)V

    .line 134
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 135
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 136
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    sget v4, Lcom/google/android/apps/translate/R$id;->left_speak_btn:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    .line 140
    sget v4, Lcom/google/android/apps/translate/R$id;->right_speak_btn:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    .line 141
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v4, Lcom/google/android/apps/translate/R$id;->conversation_list_wrapper:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mListWrapper:Landroid/view/View;

    .line 146
    sget v4, Lcom/google/android/apps/translate/R$id;->btn_swap:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v4, Lcom/google/android/apps/translate/R$id;->spinner_my_lang:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 148
    .local v1, spinner1:Landroid/widget/Spinner;
    sget v4, Lcom/google/android/apps/translate/R$id;->spinner_their_lang:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 149
    .local v2, spinner2:Landroid/widget/Spinner;
    new-instance v4, Lcom/google/android/apps/translate/LanguagePicker;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, v1, v2, p0}, Lcom/google/android/apps/translate/LanguagePicker;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;)V

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    .line 150
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v4, v5, p3, p4}, Lcom/google/android/apps/translate/LanguagePicker;->setupLanguageSpinnersForConversationMode(Lcom/google/android/apps/translate/VoiceInputHelper;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 151
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/LanguagePicker;->getFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 152
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/LanguagePicker;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 154
    const-string v4, "ConversationPanel"

    const-string v5, "setLanguagePair 4"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 156
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    sget v4, Lcom/google/android/apps/translate/R$id;->conversation_list_empty_view:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mIntroMessageView:Landroid/view/View;

    .line 166
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 167
    return-void

    .line 101
    .end local v0           #mTitleTextView:Landroid/widget/TextView;
    .end local v1           #spinner1:Landroid/widget/Spinner;
    .end local v2           #spinner2:Landroid/widget/Spinner;
    :cond_185
    sget v4, Lcom/google/android/apps/translate/R$id;->translate_title_bar:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/home/TitleView;

    iput-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    goto/16 :goto_2c
.end method

.method public onAccept(IZ)V
    .registers 6
    .parameter "resourceId"
    .parameter "doTranslate"

    .prologue
    .line 328
    const-string v0, "ConversationPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccept resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;-><init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 176
    .local v0, id:I
    const-string v1, "ConversationPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget v1, Lcom/google/android/apps/translate/R$id;->left_speak_btn:I

    if-ne v0, v1, :cond_34

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onVoiceInputClick(ILcom/google/android/apps/translate/Language;)V

    .line 192
    :cond_33
    :goto_33
    return-void

    .line 181
    :cond_34
    sget v1, Lcom/google/android/apps/translate/R$id;->right_speak_btn:I

    if-ne v0, v1, :cond_4c

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 183
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onVoiceInputClick(ILcom/google/android/apps/translate/Language;)V

    goto :goto_33

    .line 185
    :cond_4c
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_swap:I

    if-ne v0, v1, :cond_55

    .line 186
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->swapLanguagePair(Z)V

    goto :goto_33

    .line 187
    :cond_55
    sget v1, Lcom/google/android/apps/translate/R$id;->conversation_list_empty_view:I

    if-ne v0, v1, :cond_33

    goto :goto_33
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 517
    const-string v0, "ConversationPanel"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 520
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-nez v0, :cond_16

    .line 526
    :cond_15
    :goto_15
    return-void

    .line 523
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    goto :goto_15
.end method

.method onDestroy()V
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_9

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->onDestroy()V

    .line 478
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_12

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->onDestroy()V

    .line 481
    :cond_12
    return-void
.end method

.method public onEditModeReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 5
    .parameter "inputMethod"

    .prologue
    .line 494
    const-string v0, "ConversationPanel"

    const-string v1, "onEditModeReady"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_17

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    .line 498
    :cond_17
    return-void
.end method

.method public onEditModeStart(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 6
    .parameter "editPanelView"
    .parameter "inputMethod"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-ne p1, v0, :cond_e

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 490
    :goto_d
    return-void

    .line 488
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_d
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_b

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 541
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V
    .registers 8
    .parameter "left"
    .parameter "right"
    .parameter "triggerTranslate"
    .parameter "manual"

    .prologue
    .line 455
    const-string v0, "ConversationPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguagePairSelected left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/translate/UserActivityMgr;->setLanguageChangesForConversation(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 457
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 458
    iput-object p2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 459
    const-string v0, "ConversationPanel"

    const-string v1, "setLanguagePair 5"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v0, v1, p4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 461
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 546
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onEditModeStart(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 472
    :cond_17
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 411
    const-string v3, "ConversationPanel"

    const-string v4, "onTouch"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 413
    .local v0, id:I
    if-eqz p2, :cond_78

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_78

    .line 414
    sget v3, Lcom/google/android/apps/translate/R$id;->editor_field:I

    if-ne v0, v3, :cond_1c

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-nez v3, :cond_78

    .line 415
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    if-ne p1, v3, :cond_4a

    .line 416
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 417
    .local v1, lang:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->isConversationLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 418
    sget v3, Lcom/google/android/apps/translate/R$id;->left_speak_btn:I

    invoke-direct {p0, v3, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onVoiceInputClick(ILcom/google/android/apps/translate/Language;)V

    .line 439
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    :goto_33
    return v2

    .line 420
    .restart local v1       #lang:Lcom/google/android/apps/translate/Language;
    :cond_34
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 422
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_33

    .line 426
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    :cond_4a
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    if-ne p1, v3, :cond_78

    .line 427
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSourceLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 428
    .restart local v1       #lang:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->isConversationLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 429
    sget v3, Lcom/google/android/apps/translate/R$id;->right_speak_btn:I

    invoke-direct {p0, v3, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onVoiceInputClick(ILcom/google/android/apps/translate/Language;)V

    goto :goto_33

    .line 431
    :cond_62
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->clearFocus()V

    .line 432
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 433
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_33

    .line 439
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    :cond_78
    const/4 v2, 0x0

    goto :goto_33
.end method

.method public onVoiceRecognitionResult(Ljava/lang/String;)V
    .registers 4
    .parameter "recognitionResult"

    .prologue
    .line 443
    const-string v0, "ConversationPanel"

    const-string v1, "onVoiceRecognitionResult"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onNonStreamingVoiceResult(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getConversationInputConfirm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onAccept(IZ)V

    .line 450
    :cond_25
    return-void
.end method

.method refreshLanguageList()V
    .registers 7

    .prologue
    .line 501
    const-string v3, "ConversationPanel"

    const-string v4, "refreshLanguageList"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 505
    .local v0, languageList:Lcom/google/android/apps/translate/Languages;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 506
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 508
    .local v1, newFrom:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 510
    .local v2, newTo:Lcom/google/android/apps/translate/Language;
    if-eqz v1, :cond_34

    if-eqz v2, :cond_34

    .line 511
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 513
    :cond_34
    return-void
.end method

.method public setLanguageList(Lcom/google/android/apps/translate/Languages;)V
    .registers 2
    .parameter "list"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 261
    return-void
.end method

.method public setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V
    .registers 12
    .parameter "left"
    .parameter "right"
    .parameter "manual"

    .prologue
    .line 267
    const-string v0, "ConversationPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguagePair ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 270
    const/4 v7, 0x1

    .line 271
    .local v7, bothLanguagesReady:Z
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 272
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v7, 0x0

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object p1

    .line 288
    :goto_4c
    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 289
    :cond_5a
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/4 v7, 0x0

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object p2

    .line 306
    :goto_6a
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, p2}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 324
    return-void

    .line 277
    :cond_bb
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/conversation/ConversationPanel$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/conversation/ConversationPanel$2;-><init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;)V

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    goto :goto_4c

    .line 294
    :cond_c6
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/conversation/ConversationPanel$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/conversation/ConversationPanel$3;-><init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;)V

    invoke-static {v0, p2, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    goto :goto_6a
.end method
