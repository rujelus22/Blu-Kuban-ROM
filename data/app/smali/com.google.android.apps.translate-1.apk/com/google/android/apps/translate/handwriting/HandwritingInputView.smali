.class public Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
.super Landroid/widget/LinearLayout;
.source "HandwritingInputView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.implements Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;
.implements Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/research/handwriting/gui/UIHandlerCallback;
.implements Lcom/google/android/apps/translate/handwriting/EditTextCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;,
        Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;,
        Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_TEXTBOX:Ljava/lang/String; = "textbox"

.field private static final CLIENT_NAME:Ljava/lang/String; = "atrans"

.field private static final HANDWRITING_API_RECO_URL:Ljava/lang/String; = "/request"

.field private static final HANDWRITING_API_SERVER_NAME:Ljava/lang/String; = "http://inputtools.google.com"

.field private static final MAX_STROKE_WIDTH_CHAR_BY_CHAR:F = 4.0f

.field private static final MAX_STROKE_WIDTH_WORD_BY_WORD:F = 4.0f

.field private static final MIN_STROKE_WIDTH_CHAR_BY_CHAR:F = 4.0f

.field private static final MIN_STROKE_WIDTH_WORD_BY_WORD:F = 4.0f

.field private static final MSG_HINT:I = 0x1

.field private static final SPACE_KEY_LABEL_FOR_PENDING_REQUESTS:Ljava/lang/String; = "..."

.field private static final SUPPORT_BOOKKEEPER:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field private static final TALK_TO_TRANSLATE_FRONTEND:Z = true

.field private static final TRANSLATE_API_RECO_URL:Ljava/lang/String; = "/translate_a/hw"

.field private static final TRANSLATE_API_SERVER_NAME:Ljava/lang/String; = "http://translate.google.com"


# instance fields
.field private mCallback:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;

.field private mCandidateContainerView:Landroid/view/View;

.field private mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

.field private final mCodeDelete:I

.field private final mCodeKeyboard:I

.field private final mCodeSpace:I

.field private mContext:Landroid/content/Context;

.field private mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

.field private mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

.field private mCursorSelectionEnd:I

.field private mCursorSelectionStart:I

.field private mEditText:Landroid/widget/EditText;

.field private mFullScreenHorizontal:Z

.field private mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

.field private mHintText:Landroid/widget/TextView;

.field private mIcLock:Ljava/lang/Object;

.field private mInputConnection:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

.field private mInputMethodView:Lcom/google/android/apps/translate/editor/InputMethodView;

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLocale:Ljava/lang/String;

.field private mMessageHandler:Landroid/os/Handler;

.field private final mPostContextSize:I

.field private final mPreContextSize:I

.field private mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

.field private final mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

.field private mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

.field private mShouldShowTopCandidateOnSpaceKey:Z

.field private mShowHint:Z

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;

.field private mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

.field private final mUiSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    invoke-direct {v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUiSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    .line 88
    new-instance v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-direct {v1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    .line 94
    new-instance v1, Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    invoke-direct {v1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    .line 95
    new-instance v1, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-direct {v1}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    .line 98
    iput-boolean v6, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShowHint:Z

    .line 99
    iput-boolean v6, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mFullScreenHorizontal:Z

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mIcLock:Ljava/lang/Object;

    .line 102
    iput-boolean v6, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShouldShowTopCandidateOnSpaceKey:Z

    .line 114
    iput v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I

    .line 115
    iput v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I

    .line 181
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v2, "HandwritingInputView constructor"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$integer;->button_input_method_keyboard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeKeyboard:I

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$integer;->button_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeSpace:I

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$integer;->button_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeDelete:I

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$integer;->handwriting_pre_context_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mPreContextSize:I

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$integer;->handwriting_post_context_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mPostContextSize:I

    .line 190
    invoke-virtual {p0, v5}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setWillNotDraw(Z)V

    .line 192
    new-instance v1, Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    iget-object v4, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mIcLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/research/handwriting/gui/UIHandler;-><init>(Lcom/google/research/handwriting/gui/UIHandlerCallback;Lcom/google/research/handwriting/gui/ContinuousWritingHandler;Lcom/google/research/handwriting/gui/ContinuousWritingManager;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, p0}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingImeView(Landroid/view/View;)V

    .line 195
    new-instance v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;-><init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    .line 196
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setHIHandler(Lcom/google/research/handwriting/gui/UIHandler;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v1, v5}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setAutoSelect(Z)V

    .line 198
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setAutoSelectMilli(I)V

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setApplicationContext(Landroid/content/Context;)V

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v1, v5}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setShowDebugInformation(Z)V

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, v6}, Lcom/google/research/handwriting/gui/UIHandler;->setAutoSpace(Z)V

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, v5}, Lcom/google/research/handwriting/gui/UIHandler;->setUseBookkeeper(Z)V

    .line 204
    invoke-static {}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;->getNewHttpClient()Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;

    move-result-object v0

    .line 205
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->generateUserAgentName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->setUserAgentToHttpClient(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iput-boolean v6, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    const-string v2, "http://translate.google.com"

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->server:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    const-string v2, "/translate_a/hw"

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->recoPath:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iput v5, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->verbosity:I

    .line 215
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    const-string v2, "atrans"

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->clientName:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUiSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iput-boolean v5, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useBackGesture:Z

    .line 217
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUiSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iput-boolean v5, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useSpaceGesture:Z

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUiSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setRecognizerSettings(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;)V

    .line 220
    new-instance v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-direct {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;-><init>(Lcom/google/research/handwriting/gui/RecognizerClient;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    new-instance v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;

    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-direct {v2, v0, v3}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;)V

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/RecognizerHandler;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 225
    sget v1, Lcom/google/android/apps/translate/R$id;->busyDisplay:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_123
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setRecognizerHandler(Lcom/google/research/handwriting/gui/RecognizerHandler;)V

    .line 228
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingRecognizer(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V

    .line 230
    new-instance v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$1;-><init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mMessageHandler:Landroid/os/Handler;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Lcom/google/research/handwriting/gui/UIHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;ILandroid/view/inputmethod/InputConnection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHintText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setInputBoxIcons(ZZ)V

    return-void
.end method

.method private clearLimboStateAndClearText()V
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 727
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 729
    :cond_9
    return-void
.end method

.method private initializeCursor()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 325
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mIcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 327
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_25

    .line 328
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 329
    .local v0, exText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_3b

    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getCursorSelectionStart()I

    move-result v2

    if-ne v2, v5, :cond_25

    .line 336
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V

    .line 347
    .end local v0           #exText:Landroid/view/inputmethod/ExtractedText;
    :cond_25
    :goto_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_4f

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getCursorSelectionStart()I

    move-result v2

    if-ne v2, v5, :cond_3a

    .line 350
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V

    .line 352
    :cond_3a
    return-void

    .line 339
    .restart local v0       #exText:Landroid/view/inputmethod/ExtractedText;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getCursorSelectionStart()I

    move-result v2

    if-ne v2, v5, :cond_25

    .line 343
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V

    goto :goto_25

    .line 347
    .end local v0           #exText:Landroid/view/inputmethod/ExtractedText;
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_4f

    throw v2
.end method

.method private isCharacterByCharacterRecognitionLanguage(Ljava/lang/String;)Z
    .registers 3
    .parameter "sourceLangShortName"

    .prologue
    .line 422
    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "zh-CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "zh-TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private setCursor(ILandroid/view/inputmethod/InputConnection;)V
    .registers 3
    .parameter "pos"
    .parameter "ic"

    .prologue
    .line 355
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I

    .line 356
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I

    .line 357
    if-eqz p2, :cond_9

    .line 358
    invoke-interface {p2, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 360
    :cond_9
    return-void
.end method

.method private setInputBoxIcons(ZZ)V
    .registers 9
    .parameter "initializeBookkeeper"
    .parameter "showHint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    sget-object v3, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInputBoxIcons initializeBookkeeper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showHint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_59

    .line 305
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    move v0, v1

    .line 307
    .local v0, hasInputText:Z
    :goto_35
    if-eqz p2, :cond_5c

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$string;->hint_handwriting_input_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setHint(Ljava/lang/String;)V

    .line 315
    :goto_52
    if-eqz p1, :cond_59

    if-nez v0, :cond_59

    .line 319
    invoke-direct {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->initializeCursor()V

    .line 322
    .end local v0           #hasInputText:Z
    :cond_59
    return-void

    :cond_5a
    move v0, v2

    .line 305
    goto :goto_35

    .line 312
    .restart local v0       #hasInputText:Z
    :cond_5c
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setHint(Ljava/lang/String;)V

    goto :goto_52
.end method

.method private setKeyboardView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 272
    sget v5, Lcom/google/android/apps/translate/R$id;->handwriting_view_buttons:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/KeyboardView;

    iput-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 273
    new-instance v5, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/apps/translate/R$xml;->handwriting_view_buttons:I

    invoke-direct {v5, v6, v7}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 274
    iget-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v6, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v5, v6}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 276
    iget-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v8}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 277
    iget-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 278
    const/4 v4, 0x0

    .line 279
    .local v4, keyIndex:I
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/apps/translate/R$integer;->button_space:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 280
    .local v3, keyCodeForButtonSpace:I
    iget-object v5, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v5}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 281
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v0, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 282
    .local v0, codes:[I
    array-length v5, v0

    if-lez v5, :cond_56

    aget v5, v0, v8

    if-ne v5, v3, :cond_56

    .line 283
    iput-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 288
    .end local v0           #codes:[I
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_55
    return-void

    .line 286
    .restart local v0       #codes:[I
    .restart local v2       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_56
    add-int/lit8 v4, v4, 0x1

    .line 287
    goto :goto_3e
.end method

.method private updateSpaceKeyLabel(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "candidate"

    .prologue
    const/4 v1, 0x0

    .line 627
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 628
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 629
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$drawable;->sym_keyboard_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 634
    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 635
    return-void

    .line 631
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object p1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_19
.end method


# virtual methods
.method public cancelStroke()V
    .registers 1

    .prologue
    .line 698
    return-void
.end method

.method public clearLimboState()V
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 733
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 734
    return-void
.end method

.method public deleteText()V
    .registers 4

    .prologue
    .line 470
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 471
    .local v0, e:Landroid/text/Editable;
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-gez v1, :cond_27

    .line 472
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_21

    .line 473
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 480
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->clearTranslatedText()V

    .line 481
    return-void

    .line 475
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 476
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_21

    .line 477
    :cond_45
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_21

    .line 478
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_21
.end method

.method public getCursorSelectionEnd()I
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I

    return v0
.end method

.method public getCursorSelectionStart()I
    .registers 2

    .prologue
    .line 644
    iget v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I

    return v0
.end method

.method public getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mInputConnection:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    return-object v0
.end method

.method public getRecognizerLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTextToTranslate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initText(Ljava/lang/String;)V
    .registers 5
    .parameter "initText"

    .prologue
    .line 590
    sget-object v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v1, "initText"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mIcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public initialize(Lcom/google/research/handwriting/gui/CandidateViewHandler;Landroid/widget/EditText;Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 8
    .parameter "candidateViewHandler"
    .parameter "editText"
    .parameter "inputMethodView"

    .prologue
    const/4 v3, 0x1

    .line 544
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v2, "initialize"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iput-object p2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    .line 547
    iput-object p3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mInputMethodView:Lcom/google/android/apps/translate/editor/InputMethodView;

    .line 548
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    check-cast v1, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;

    invoke-interface {v1, p0}, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;->setCallback(Lcom/google/android/apps/translate/handwriting/EditTextCallback;)V

    .line 550
    new-instance v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;-><init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mInputConnection:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    .line 552
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$2;-><init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 569
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    .line 570
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v1, p0}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->setListener(Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;)V

    .line 571
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->setCompletionListLocationBelowCandidates(Z)V

    .line 572
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setCandidateViewHandler(Lcom/google/research/handwriting/gui/CandidateViewHandler;)V

    .line 574
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->getContainerView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateContainerView:Landroid/view/View;

    .line 575
    sget v1, Lcom/google/android/apps/translate/R$id;->handwriting_candidate_view:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 576
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateContainerView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/translate/R$drawable;->handwriting_extra_row_bg_tile:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 579
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mIcLock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setIclock(Ljava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mInputConnection:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setCurrentInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 581
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setUIHandler(Lcom/google/research/handwriting/gui/UIHandler;)V

    .line 582
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->onInitialized(Z)V

    .line 583
    return-void
.end method

.method public initializeEditText(Landroid/widget/EditText;)V
    .registers 2
    .parameter "editText"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    .line 587
    return-void
.end method

.method public onClearText()V
    .registers 3

    .prologue
    .line 755
    sget-object v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v1, "onClearText"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->onKeyDelete()V

    .line 759
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->resetStrokes(Z)V

    .line 760
    return-void
.end method

.method public onCommitText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 532
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCallback:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/UIHandler;->getTranslatedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;->onEditCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 365
    return-void
.end method

.method public onEditCompleted(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 792
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    if-ne p1, v0, :cond_52

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v2, v0}, Lcom/google/research/handwriting/gui/UIHandler;->finishInput(Z)V

    .line 793
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCallback:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/UIHandler;->getTranslatedText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;->onEditCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTranslatedText is... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/UIHandler;->getTranslatedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->resetStrokes(Z)V

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 800
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setVisibility(I)V

    .line 801
    return-void

    :cond_52
    move v0, v1

    .line 792
    goto :goto_d
.end method

.method public onEditStarted()V
    .registers 5

    .prologue
    .line 766
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    if-eqz v2, :cond_b

    .line 769
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 771
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/RecognizerHandler;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 774
    sget v2, Lcom/google/android/apps/translate/R$id;->busyDisplay:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getWidth()I

    move-result v1

    .line 777
    .local v1, w:I
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getHeight()I

    move-result v0

    .line 778
    .local v0, h:I
    if-lez v1, :cond_31

    if-lez v0, :cond_31

    .line 780
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->onSizeChanged(II)V

    .line 785
    :cond_31
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 254
    sget v0, Lcom/google/android/apps/translate/R$id;->handwriting_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    iput-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0, p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setHandwritingOverlayListener(Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    sget v1, Lcom/google/android/apps/translate/R$id;->busyDisplay:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerHandler;->setBusyDisplay(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 261
    invoke-direct {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setKeyboardView()V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->setRecognizer(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->setCallback(Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->initialize()V

    .line 268
    sget v0, Lcom/google/android/apps/translate/R$id;->handwriting_hint_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHintText:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method public onKey(I[I)V
    .registers 7
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 430
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey primaryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 432
    .local v0, e:Landroid/text/Editable;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_27

    .line 433
    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->onEditCompleted(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 452
    :goto_26
    return-void

    .line 436
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->cancelAutoSelect()V

    .line 437
    if-ltz p1, :cond_4f

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, p1}, Lcom/google/research/handwriting/gui/UIHandler;->onKeyNormal(I)V

    .line 449
    :goto_33
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPreContext(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPostContext(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    goto :goto_26

    .line 439
    :cond_4f
    iget v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeDelete:I

    if-ne p1, v1, :cond_59

    .line 440
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->onKeyDelete()V

    goto :goto_33

    .line 441
    :cond_59
    iget v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeKeyboard:I

    if-ne p1, v1, :cond_74

    .line 442
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->resetStrokes(Z)V

    .line 443
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V

    .line 444
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mInputMethodView:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_33

    .line 447
    :cond_74
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->sendKeyChar(C)V

    goto :goto_33
.end method

.method public onPenDown(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShowHint:Z

    if-eqz v0, :cond_7

    .line 679
    iput-boolean v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShowHint:Z

    .line 681
    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setHint(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    check-cast v0, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;->setIsTextEditor(Z)V

    .line 683
    iget-boolean v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShouldShowTopCandidateOnSpaceKey:Z

    if-eqz v0, :cond_1c

    .line 684
    const-string v0, "..."

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->updateSpaceKeyLabel(Ljava/lang/CharSequence;)V

    .line 686
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/UIHandler;->onPenDown(FFJF)V

    .line 687
    return-void
.end method

.method public onPenMove(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/UIHandler;->onPenMove(FFJF)V

    .line 692
    return-void
.end method

.method public onPenUp(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/UIHandler;->onPenUp(FFJF)V

    .line 703
    return-void
.end method

.method public onPickSuggestion(ILjava/lang/CharSequence;Z)V
    .registers 5
    .parameter "index"
    .parameter "selectedString"
    .parameter "completion"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/research/handwriting/gui/UIHandler;->onPickSuggestion(ILjava/lang/CharSequence;Z)V

    .line 540
    return-void
.end method

.method public onPress(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 485
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 489
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 722
    const-string v0, "textbox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->initText(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 718
    const-string v0, "textbox"

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public onSelectionChanged(II)V
    .registers 5
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    if-nez v0, :cond_5

    .line 751
    :goto_4
    return-void

    .line 743
    :cond_5
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I

    .line 744
    iput p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I

    .line 745
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->getJustModifiedComposingRegion()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 746
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->setJustModifiedComposingRegion(Z)V

    goto :goto_4

    .line 750
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/google/research/handwriting/gui/UIHandler;->onUpdateSelection(II)V

    goto :goto_4
.end method

.method public onSizeChanged(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 659
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    if-eqz v1, :cond_39

    .line 662
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, p1, p2}, Lcom/google/research/handwriting/gui/UIHandler;->onSizeChanged(II)V

    .line 665
    :cond_39
    invoke-direct {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->clearLimboStateAndClearText()V

    .line 666
    invoke-direct {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setKeyboardView()V

    .line 668
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_57

    .line 670
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 672
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 674
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_57
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 493
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 372
    sget-object v3, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v4, "onTouch"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    if-nez v3, :cond_d

    .line 390
    :goto_c
    :pswitch_c
    return v2

    .line 377
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 378
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 379
    .local v1, y:I
    sget-object v3, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_48

    .line 390
    :pswitch_46
    const/4 v2, 0x1

    goto :goto_c

    .line 380
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_c
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public resetStrokes(Z)V
    .registers 5
    .parameter "clearAllText"

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->clearRecognizer()V

    .line 292
    if-eqz p1, :cond_f

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    check-cast v0, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;

    invoke-interface {v0, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;->setIsTextEditor(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShowHint:Z

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setInputBoxIcons(ZZ)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 298
    return-void
.end method

.method public sendKeyChar(C)V
    .registers 6
    .parameter "primaryCode"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 457
    .local v0, e:Landroid/text/Editable;
    iget v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCodeSpace:I

    if-ne p1, v1, :cond_2a

    .line 458
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v2, "sendKeyChar codeSpace"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_24

    .line 460
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 462
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->clearTranslatedText()V

    .line 466
    :goto_29
    return-void

    .line 464
    :cond_2a
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyChar ignoring primaryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public setCallback(Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCallback:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;

    .line 520
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mMessageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    return-void
.end method

.method public setImeCandidatesViewShown(Z)V
    .registers 4
    .parameter "shown"

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mFullScreenHorizontal:Z

    if-eqz v0, :cond_5

    .line 624
    :goto_4
    return-void

    .line 623
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCandidateContainerView:Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public setSourceAndTargetLanguages(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 7
    .parameter "sourceLanguage"
    .parameter "targetLanguage"

    .prologue
    const/high16 v3, 0x4080

    .line 394
    sget-object v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->TAG:Ljava/lang/String;

    const-string v2, "setSourceAndTargetLanguages"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 396
    iput-object p2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 397
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, sourceLangShortName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v1, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    if-eqz v1, :cond_21

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizerSettings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->targetLanguage:Ljava/lang/String;

    .line 401
    :cond_21
    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getHandwritingLangShortNameFromFromShortLangName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mLocale:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    if-eqz v1, :cond_32

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setLanguage(Ljava/lang/String;)V

    .line 406
    :cond_32
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->isCharacterByCharacterRecognitionLanguage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 407
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMinStrokeWidth(F)V

    .line 408
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMaxStrokeWidth(F)V

    .line 413
    :goto_42
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShowHint:Z

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setInputBoxIcons(ZZ)V

    .line 414
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/research/handwriting/gui/ImeUtils;->isLanguageWithSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShouldShowTopCandidateOnSpaceKey:Z

    .line 419
    :cond_57
    return-void

    .line 410
    :cond_58
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMinStrokeWidth(F)V

    .line 411
    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v1, v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMaxStrokeWidth(F)V

    goto :goto_42
.end method

.method public setSuggestedWords(Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 3
    .parameter "suggestions"

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mShouldShowTopCandidateOnSpaceKey:Z

    if-nez v0, :cond_5

    .line 615
    :goto_4
    return-void

    .line 606
    :cond_5
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 607
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 608
    const-string v0, "..."

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->updateSpaceKeyLabel(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 610
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->updateSpaceKeyLabel(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 613
    :cond_24
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->updateSpaceKeyLabel(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 497
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 501
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 509
    return-void
.end method
