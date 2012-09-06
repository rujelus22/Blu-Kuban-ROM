.class public Lcom/google/android/apps/translate/translation/InputPanel;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;
.implements Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;
.implements Lcom/google/android/apps/translate/editor/EditPanelView$Callback;


# static fields
.field private static final ALWAYS_SHOW_INTRO:Z = true

.field private static final CLEAR_OR_APPEND_TEXT_AFTER_TRANSLATION:Z = false

.field private static final CLEAR_TEXT_AFTER_TRANSLATION:Z = false

.field private static final SELECT_TEXT_AFTER_TRANSLATION:Z = true

.field private static final TAG:Ljava/lang/String; = "InputPanel"


# instance fields
.field private mActionBarHeight:I

.field private mActivity:Landroid/app/Activity;

.field private mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mBtnClearInput:Landroid/widget/ImageButton;

.field private mChipView:Lcom/google/android/apps/translate/translation/ChipView;

.field private mChipWrapper:Landroid/view/View;

.field private mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

.field private mControlPanelWrapper:Landroid/view/View;

.field private mEnableLanguageDetector:Z

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mIntroMessageView:Landroid/view/View;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mLanguagePanel:Landroid/view/View;

.field private mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

.field private mListView:Landroid/widget/ListView;

.field private mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field private mPanelView:Landroid/view/View;

.field private mPrevTextLength:I

.field private mSelectionEnd:I

.field private mSelectionSaved:Z

.field private mSelectionStart:I

.field private mSelectionText:Ljava/lang/String;

.field private mShowIntro:Z

.field private mTitleView:Lcom/google/android/apps/translate/home/TitleView;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;

.field private mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

.field private mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

.field private mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateHelper;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V
    .registers 20
    .parameter "activity"
    .parameter "languages"
    .parameter "rootView"
    .parameter "callback"
    .parameter "translateFragmentWrapper"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPrevTextLength:I

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mEnableLanguageDetector:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mShowIntro:Z

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionSaved:Z

    .line 127
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    .line 128
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 129
    sget v1, Lcom/google/android/apps/translate/R$id;->panel_input:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    .line 130
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    .line 131
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->fragments_translate_title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/home/TitleView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->translate_title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/translate/home/TitleView;

    .line 138
    .local v13, titleViewInFragment:Lcom/google/android/apps/translate/home/TitleView;
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lcom/google/android/apps/translate/home/TitleView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/google/android/apps/translate/translation/TranslateActivity;

    if-eqz v1, :cond_65

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->translate_title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/home/TitleView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    .line 147
    .end local v13           #titleViewInFragment:Lcom/google/android/apps/translate/home/TitleView;
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->language_selection_panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePanel:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/home/TitleView;->setLanguagePanel(Landroid/view/View;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->input_panel_intro:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mIntroMessageView:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->history_list_wrapper:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipWrapper:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/translate/TranslateApplication;

    .line 152
    .local v10, app:Lcom/google/android/apps/translate/TranslateApplication;
    invoke-virtual {v10}, Lcom/google/android/apps/translate/TranslateApplication;->getTranslateManager()Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->input_panel_chip_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/translation/ChipView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    .line 155
    invoke-virtual {v10}, Lcom/google/android/apps/translate/TranslateApplication;->getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 157
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->suggest_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mListView:Landroid/widget/ListView;

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->input_method_view_wrapper:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanelWrapper:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanelWrapper:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->control_panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/editor/InputMethodView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->input_panel_input_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/editor/EditPanelView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/editor/EditPanelView;->setCallback(Lcom/google/android/apps/translate/editor/EditPanelView$Callback;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->setInputMethodView(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->setListView(Landroid/widget/ListView;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget v2, Lcom/google/android/apps/translate/R$id;->msg_confirm_content:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setTouchEventCallback(Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget v2, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_clear:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mBtnClearInput:Landroid/widget/ImageButton;

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->btn_swap:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mBtnClearInput:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->spinner_my_lang:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 179
    .local v11, spinner1:Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->spinner_their_lang:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 180
    .local v12, spinner2:Landroid/widget/Spinner;
    new-instance v1, Lcom/google/android/apps/translate/LanguagePicker;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v11, v12, p0}, Lcom/google/android/apps/translate/LanguagePicker;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker;->setupLanguageSpinners()V

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker;->getFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 183
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v9, 0x0

    move-object v8, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/translate/translation/ChipView;->initParameters(Landroid/app/Activity;Landroid/widget/ListView;Lcom/google/android/apps/translate/history/HistoryListAdapter;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/ChipView;->getOutputView()Lcom/google/android/apps/translate/translation/OutputPanelView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->init(Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Languages;)V

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mShowIntro:Z

    .line 197
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V

    .line 198
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 199
    return-void

    .line 144
    .end local v10           #app:Lcom/google/android/apps/translate/TranslateApplication;
    .end local v11           #spinner1:Landroid/widget/Spinner;
    .end local v12           #spinner2:Landroid/widget/Spinner;
    :cond_1a4
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$id;->translate_title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/home/TitleView;

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    goto/16 :goto_65
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Languages;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/translation/InputPanel;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/home/TitleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/translation/ChipView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->setPreviousResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/VoiceInputHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/translation/InputPanel;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputTextHint()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/TextSlot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    return-object v0
.end method

.method private doTranslate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "text"
    .parameter "translatedText"

    .prologue
    .line 416
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTranslate input_text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->hideSoftKeyboard(Landroid/app/Activity;Landroid/os/IBinder;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->selectAll()V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->doTranslate(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, locale:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 429
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 430
    return-void
.end method

.method private endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mShowIntro:Z

    .line 784
    const-string v0, "InputPanel"

    const-string v1, "endEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel$6;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$7;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    return-void
.end method

.method private internalSetInputText(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 465
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSetInputText text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel$2;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method private isCompositionText(Landroid/text/Spanned;II)Z
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 597
    const-class v5, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 598
    .local v4, spans:[Ljava/lang/Object;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 599
    .local v3, span:Ljava/lang/Object;
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_23

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p3, :cond_23

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_23

    .line 601
    const/4 v5, 0x1

    .line 604
    .end local v3           #span:Ljava/lang/Object;
    :goto_22
    return v5

    .line 598
    .restart local v3       #span:Ljava/lang/Object;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 604
    .end local v3           #span:Ljava/lang/Object;
    :cond_26
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private notifyLanguageChanges(Z)V
    .registers 12
    .parameter "triggerTranslate"

    .prologue
    const/4 v6, 0x0

    .line 356
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "languagePairChanged triggerTranslate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/apps/translate/Constants$AppearanceType;->INPUT_PANEL:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/Util;->detectAndSetFonts(Landroid/widget/TextView;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/translate/TranslateManager;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v5, v8, v9}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 370
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputTextHint()V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->resetSuggestions()V

    .line 400
    :goto_5c
    return-void

    .line 373
    :cond_5d
    if-eqz p1, :cond_89

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->getCurrentTranslation()Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v7

    .line 375
    .local v7, currentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-eqz v7, :cond_7b

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, v7, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, v7, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 378
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->doTranslate(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v7           #currentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    :cond_89
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$1;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5c
.end method

.method private declared-synchronized restoreSelection()V
    .registers 4

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionSaved:Z

    if-eqz v0, :cond_33

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionSaved:Z

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionText:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 255
    iget v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionStart:I

    iget v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionEnd:I

    if-ge v0, v1, :cond_2a

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelected(Z)V

    .line 258
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionStart:I

    iget v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(II)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 261
    :cond_33
    monitor-exit p0

    return-void

    .line 251
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setInputBoxIcons(Z)V
    .registers 6
    .parameter "redrawList"

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    .line 506
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v0, 0x1

    .line 508
    .local v0, hasInputText:Z
    :goto_10
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_25

    .line 509
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mBtnClearInput:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mBtnClearInput:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 518
    :goto_22
    return-void

    .end local v0           #hasInputText:Z
    :cond_23
    move v0, v2

    .line 506
    goto :goto_10

    .line 513
    .restart local v0       #hasInputText:Z
    :cond_25
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mBtnClearInput:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_22
.end method

.method private setInputTextHint()V
    .registers 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    if-nez v0, :cond_5

    .line 413
    :goto_4
    return-void

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 409
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->hint_input_text_auto:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2e
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method private setPreviousResult()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->hasCurrentTranslation()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 752
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V

    .line 754
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setInputPanel(ZZ)V

    .line 759
    :goto_16
    return-void

    .line 757
    :cond_17
    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V

    goto :goto_16
.end method

.method private setResultView(Z)V
    .registers 5
    .parameter "hasResult"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 860
    if-eqz p1, :cond_10

    .line 861
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipWrapper:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 871
    :goto_f
    return-void

    .line 864
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mShowIntro:Z

    if-eqz v0, :cond_1f

    .line 866
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 868
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method private startEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 762
    const-string v0, "InputPanel"

    const-string v1, "startEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mShowIntro:Z

    .line 764
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPrevTextLength:I

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel$5;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 777
    return-void
.end method

.method private swapLanguagePair(Z)V
    .registers 6
    .parameter "manualSwap"

    .prologue
    const/4 v3, 0x0

    .line 331
    const-string v0, "InputPanel"

    const-string v1, "swapLanguagePair"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_error_swap_language:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 344
    :goto_1d
    return-void

    .line 339
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    goto :goto_1d
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->afterTextChanged(Landroid/text/Editable;)V

    .line 581
    :cond_9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_9

    .line 586
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/editor/EditPanelView;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 588
    :cond_9
    return-void
.end method

.method public clearInputText()V
    .registers 3

    .prologue
    .line 524
    const-string v0, "InputPanel"

    const-string v1, "clearInputText"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$3;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method declared-synchronized copyToInputTextBox(Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V
    .registers 8
    .parameter "chipPart"

    .prologue
    .line 963
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getCurrentTranslation()Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 964
    .local v0, entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-eqz v0, :cond_39

    .line 965
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    if-ne p1, v2, :cond_3b

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, text:Ljava/lang/String;
    :goto_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 969
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    if-ne p1, v2, :cond_3e

    .line 970
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v3, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v4, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 980
    :goto_36
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_48

    .line 983
    .end local v1           #text:Ljava/lang/String;
    :cond_39
    monitor-exit p0

    return-void

    .line 965
    :cond_3b
    :try_start_3b
    iget-object v1, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    goto :goto_15

    .line 976
    .restart local v1       #text:Ljava/lang/String;
    :cond_3e
    iget-object v2, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v3, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_48

    goto :goto_36

    .line 963
    .end local v0           #entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    .end local v1           #text:Ljava/lang/String;
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getContextMenuTargetView()Landroid/view/View;
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    return-object v0
.end method

.method public getFromLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getInputText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChipView()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v0, :cond_b

    .line 941
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/ChipView;->getSelectedChipPart()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    move-result-object v0

    .line 943
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    goto :goto_a
.end method

.method public getToLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 815
    return-void
.end method

.method public isInEditingMode()Z
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method declared-synchronized languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V
    .registers 8
    .parameter "from"
    .parameter "to"
    .parameter "triggerTranslate"
    .parameter "manual"

    .prologue
    .line 543
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p2, v1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_11
    const/4 v0, 0x1

    .line 546
    .local v0, isChanged:Z
    :goto_12
    if-eqz v0, :cond_32

    .line 547
    const-string v1, "InputPanel"

    const-string v2, "languagePairSelected CHANGED!"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 549
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 550
    invoke-direct {p0, p3}, Lcom/google/android/apps/translate/translation/InputPanel;->notifyLanguageChanges(Z)V

    .line 551
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 553
    if-nez p4, :cond_32

    .line 555
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/google/android/apps/translate/Util;->generateLongPairText(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_36

    .line 558
    :cond_32
    monitor-exit p0

    return-void

    .line 543
    .end local v0           #isChanged:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_12

    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onAccept(IZ)V
    .registers 7
    .parameter "resourceId"
    .parameter "doTranslate"

    .prologue
    .line 739
    const-string v2, "InputPanel"

    const-string v3, "onAccept"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, inputText:Ljava/lang/String;
    if-eqz p2, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 742
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->getTranslationText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, translatedText:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .end local v1           #translatedText:Ljava/lang/String;
    :goto_22
    return-void

    .line 745
    :cond_23
    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 746
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->setPreviousResult()V

    goto :goto_22
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 679
    const-string v1, "InputPanel"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sparse-switch p1, :sswitch_data_64

    .line 721
    :cond_c
    :goto_c
    return-void

    .line 682
    :sswitch_d
    if-ne p2, v3, :cond_c

    if-eqz p3, :cond_c

    .line 686
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, sms:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 689
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 693
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SMS:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 697
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;)V

    goto :goto_c

    .line 701
    .end local v0           #sms:Ljava/lang/String;
    :sswitch_3d
    if-ne p2, v3, :cond_c

    if-eqz p3, :cond_c

    .line 705
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->restoreSelection()V

    .line 707
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_53

    .line 709
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 712
    :cond_53
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 713
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-static {p3}, Lcom/google/android/apps/translate/VoiceInputHelper;->getRecognitionResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onNonStreamingVoiceResult(Ljava/lang/String;)V

    goto :goto_c

    .line 680
    :sswitch_data_64
    .sparse-switch
        0x64 -> :sswitch_3d
        0xaa -> :sswitch_d
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 301
    const-string v1, "InputPanel"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 303
    .local v0, id:I
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_swap:I

    if-ne v0, v1, :cond_23

    .line 304
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SWAP:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 307
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->swapLanguagePair(Z)V

    .line 315
    :cond_22
    :goto_22
    return-void

    .line 308
    :cond_23
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_confirm_view_clear:I

    if-ne v0, v1, :cond_22

    .line 309
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 310
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onClick(Landroid/view/View;)V

    goto :goto_22

    .line 312
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->clearInputText()V

    goto :goto_22
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 822
    const-string v1, "InputPanel"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_20

    .line 825
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 826
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    .line 829
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 917
    const-string v0, "InputPanel"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v0, :cond_10

    .line 919
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/ChipView;->onDestroy()V

    .line 921
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    if-eqz v0, :cond_19

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 924
    :cond_19
    return-void
.end method

.method public onEditModeReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 5
    .parameter "inputMethod"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_10

    .line 935
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    .line 937
    :cond_10
    return-void
.end method

.method public onEditModeStart(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 5
    .parameter "editPanelView"
    .parameter "inputMethod"

    .prologue
    .line 928
    const-string v0, "InputPanel"

    const-string v1, "onEditModeStart"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-direct {p0, p2}, Lcom/google/android/apps/translate/translation/InputPanel;->startEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 930
    return-void
.end method

.method public onFavoriteChanged(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 3
    .parameter "translateEntry"
    .parameter "isFavorite"

    .prologue
    .line 914
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_b

    .line 673
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 675
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V
    .registers 7
    .parameter "language1"
    .parameter "language2"
    .parameter "triggerTranslate"
    .parameter "manual"

    .prologue
    .line 320
    const-string v0, "InputPanel"

    const-string v1, "onLanguagePairSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/translate/UserActivityMgr;->setLanguageChanges(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 324
    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 325
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->onPause()V

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v0, :cond_12

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/ChipView;->onPause()V

    .line 271
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionEnd()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionSaved:Z

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionStart:I

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionEnd:I

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mSelectionText:Ljava/lang/String;

    .line 278
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/home/TitleView;->showTitleBar()V

    .line 286
    return-void
.end method

.method public onResume(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 11
    .parameter "translateEntry"

    .prologue
    const/4 v6, 0x0

    .line 209
    const-string v0, "InputPanel"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanelWrapper:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanelWrapper:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/LanguagePicker;->setupLanguageSpinners()V

    .line 216
    if-eqz p1, :cond_48

    .line 217
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v1, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v0, v1, v6, v6}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 224
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/home/TitleView;->showTitleBar()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->showSearchButtons()V

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->startEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 228
    const-string v0, "InputPanel"

    const-string v1, "onResume ==> startEditMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 246
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->restoreSelection()V

    .line 247
    return-void

    .line 219
    :cond_48
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    if-nez v0, :cond_1f

    .line 220
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/LanguagePicker;->getFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v6, v6}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    goto :goto_1f

    .line 230
    :cond_60
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 232
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 235
    if-eqz p1, :cond_3e

    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 236
    const-string v0, "InputPanel"

    const-string v1, "onResume ==> setTranslationResult"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 238
    iget-object v0, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 240
    :cond_9d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTranslationResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    goto :goto_3e
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 206
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 609
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 610
    const-string v2, "InputPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChanged s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_3e
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V

    .line 614
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputTextHint()V

    .line 616
    const/4 v0, 0x0

    .line 621
    .local v0, isSwapLanguagePair:Z
    iget-boolean v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mEnableLanguageDetector:Z

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v2

    if-nez v2, :cond_c9

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eq v2, v3, :cond_75

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v2, v3, :cond_c9

    :cond_75
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    add-int v3, p2, p4

    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/apps/translate/translation/InputPanel;->isCompositionText(Landroid/text/Spanned;II)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 626
    const-string v2, "InputPanel"

    const-string v3, "onTextChanged detecting language..."

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v1, languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/apps/translate/LanguageDetector;->detect(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_c9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_c9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 638
    const-string v2, "InputPanel"

    const-string v3, "onTextChanged SWAP!"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->swapLanguagePair(Z)V

    .line 640
    const/4 v0, 0x1

    .line 643
    .end local v1           #languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    :cond_c9
    if-nez v0, :cond_dd

    .line 645
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v3, v6

    sget-object v4, Lcom/google/android/apps/translate/Constants$AppearanceType;->INPUT_PANEL:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/translate/Util;->detectAndSetFonts(Landroid/widget/TextView;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 648
    :cond_dd
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v2, :cond_e6

    .line 649
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/apps/translate/editor/EditPanelView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 653
    :cond_e6
    iput-boolean v6, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mEnableLanguageDetector:Z

    .line 654
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 658
    const-string v1, "InputPanel"

    const-string v2, "onTouch"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 660
    .local v0, id:I
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mIntroMessageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 667
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public onTranslationDone()V
    .registers 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->onTranslationDone()V

    .line 819
    return-void
.end method

.method public onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 6
    .parameter "translateEntry"
    .parameter "isFavorite"

    .prologue
    .line 875
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTranslationDone mInputPanel.getInputText()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    .line 878
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->showSearchButtons()V

    .line 879
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 880
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$9;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 910
    :goto_38
    return-void

    .line 899
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$10;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_38
.end method

.method public onTranslationFailed()V
    .registers 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideTranslationLoading()V

    .line 953
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$11;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 457
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputText text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mEnableLanguageDetector:Z

    .line 461
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->internalSetInputText(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setLanguageList(Lcom/google/android/apps/translate/Languages;)V
    .registers 4
    .parameter "list"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v0, :cond_12

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 297
    :cond_12
    return-void
.end method

.method public setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 566
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguagePair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 572
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePicker:Lcom/google/android/apps/translate/LanguagePicker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 574
    :cond_47
    return-void
.end method

.method public setTextAndDoTranslate(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 498
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextAndDoTranslate text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "text"
    .parameter "translatedText"

    .prologue
    .line 489
    const-string v0, "InputPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextAndDoTranslate text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " translatedText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputText(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/translation/InputPanel;->doTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method setTranslationResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 4
    .parameter "translateEntry"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/InputPanel$8;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public showSearchButtons()V
    .registers 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/InputPanel$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/InputPanel$4;-><init>(Lcom/google/android/apps/translate/translation/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method
