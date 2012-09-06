.class public Lcom/google/android/apps/translate/editor/InputMethodView;
.super Landroid/widget/LinearLayout;
.source "InputMethodView.java"

# interfaces
.implements Lcom/google/android/apps/translate/VoiceInput$UiListener;
.implements Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/InputMethodView$17;,
        Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;,
        Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    }
.end annotation


# static fields
.field private static final ENABLE_CAMERA_FOR_AUTO_DETECT:Z = false

.field private static final HIDE_INPUT_SELECTOR:Z = true

.field private static final SHOW_KEYBOARD:Z = false

.field public static final SLIDE_ANIMATION_MILLISECONDS:I = 0x96

.field private static final TAG:Ljava/lang/String; = "InputMethodView"

.field private static final USE_STREAMING_VOICE_INPUT:Z


# instance fields
.field private mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

.field private mActivity:Landroid/app/Activity;

.field private mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mCameraBtn:Landroid/widget/ImageButton;

.field private mCameraHeight:I

.field private mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

.field private mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

.field private mCameraLoggingConfirmed:Z

.field private mCameraStarted:Z

.field private mCameraSupported:Z

.field private mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mHandwritingBtn:Landroid/widget/ImageButton;

.field private mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

.field private mIconCount:I

.field private mInputMethodPlaceholder:Landroid/widget/LinearLayout;

.field private mInputSelector:Landroid/view/View;

.field private mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

.field private mKeyboardBtn:Landroid/widget/ImageButton;

.field private mMicBtn:Landroid/widget/ImageButton;

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mStreamingView:Lcom/google/android/apps/translate/RecognitionView;

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;

.field private mTranslateView:Landroid/view/View;

.field private mVoiceInput:Lcom/google/android/apps/translate/VoiceInput;

.field private mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

.field private mVoiceLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 78
    iput v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    .line 82
    iput-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    .line 96
    iput-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    .line 98
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraSupported:Z

    .line 99
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraStarted:Z

    .line 100
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraLoggingConfirmed:Z

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/editor/InputMethodView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideSoftwareKeyboard()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/EditPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/editor/InputMethodView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/android/apps/translate/editor/InputMethodView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraLoggingConfirmed:Z

    return p1
.end method

.method private clearSelection()V
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mKeyboardBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mMicBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->input_voice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->input_handwriting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 514
    return-void
.end method

.method private getCameraInputUserAgent()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 351
    const-string v2, ""

    .line 353
    .local v2, versionName:Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 355
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_18} :catch_27

    .line 359
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_18
    const/4 v3, 0x0

    check-cast v3, Ljava/util/Locale;

    const-string v4, "GoogleGoggles-AndroidTranslateTextSearch/%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 356
    :catch_27
    move-exception v0

    .line 357
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "InputMethodView"

    const-string v4, "Unable to retrieve version code from manifest."

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private hideInputSelector(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 290
    const-string v0, "InputMethodView"

    const-string v1, "hideInputSelector"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_f

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->slideDown(Landroid/view/View;)V

    .line 296
    :goto_e
    return-void

    .line 294
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method private hideSoftwareKeyboard()V
    .registers 4

    .prologue
    .line 504
    const-string v1, "InputMethodView"

    const-string v2, "hideSoftInputFromWindow"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 507
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 508
    return-void
.end method

.method private initializeCameraInputView(Landroid/view/LayoutInflater;)V
    .registers 9
    .parameter "inflater"

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 331
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 332
    .local v1, currentOrientation:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_66

    const/4 v2, 0x1

    .line 333
    .local v2, index:I
    :goto_19
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    aget-object v3, v3, v2

    if-nez v3, :cond_2c

    .line 334
    iget-object v5, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    sget v3, Lcom/google/android/apps/translate/R$layout;->camera_text_input_view:I

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    aput-object v3, v5, v2

    .line 337
    :cond_2c
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    if-eq v3, v5, :cond_50

    .line 338
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    if-eqz v3, :cond_45

    .line 339
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 341
    :cond_45
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputViews:[Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    .line 342
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 345
    :cond_50
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setListener(Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;)V

    .line 346
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    sget-object v4, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->TRANSLATE:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setClientType(Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;)V

    .line 347
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCameraInputUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setUserAgent(Ljava/lang/String;)V

    .line 348
    return-void

    .end local v2           #index:I
    :cond_66
    move v2, v4

    .line 332
    goto :goto_19
.end method

.method private initializeHandwritingInputView(Landroid/view/LayoutInflater;)V
    .registers 5
    .parameter "inflater"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    if-nez v1, :cond_23

    .line 300
    new-instance v0, Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-direct {v0, p1}, Lcom/google/research/handwriting/gui/CandidateViewHandler;-><init>(Landroid/view/LayoutInflater;)V

    .line 301
    .local v0, candidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;
    sget v1, Lcom/google/android/apps/translate/R$layout;->handwriting_input_view:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iput-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1, v0, v2, p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->initialize(Lcom/google/research/handwriting/gui/CandidateViewHandler;Landroid/widget/EditText;Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 304
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCallback(Lcom/google/android/apps/translate/handwriting/HandwritingInputView$HandwritingInputViewCallback;)V

    .line 309
    .end local v0           #candidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;
    :goto_22
    return-void

    .line 306
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->initializeEditText(Landroid/widget/EditText;)V

    .line 307
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setVisibility(I)V

    goto :goto_22
.end method

.method private initializeVoiceInputView(Landroid/view/LayoutInflater;)V
    .registers 3
    .parameter "inflater"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 326
    return-void
.end method

.method static logInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 603
    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 617
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 620
    .local v0, im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    :goto_d
    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    if-eq v0, v1, :cond_18

    .line 621
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 623
    :cond_18
    return-void

    .line 605
    .end local v0           #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    :pswitch_19
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->SPEECH:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 606
    .restart local v0       #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    goto :goto_d

    .line 608
    .end local v0           #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    :pswitch_1c
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->HANDWRITING:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 609
    .restart local v0       #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    goto :goto_d

    .line 611
    .end local v0           #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    :pswitch_1f
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->VIRTUAL_KEYBOARD:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 612
    .restart local v0       #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    goto :goto_d

    .line 614
    .end local v0           #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    :pswitch_22
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->CAMERA:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 615
    .restart local v0       #im:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    goto :goto_d

    .line 603
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method private render()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 368
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    .line 421
    :cond_14
    :goto_14
    :pswitch_14
    return-void

    .line 371
    :pswitch_15
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 372
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 374
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_14

    .line 390
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_2b
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Profile;->isHandwritingSupported(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 391
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 393
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 396
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->invalidate()V

    .line 398
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->slideUpInputMethodView()V

    goto :goto_14

    .line 402
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_66
    iget-boolean v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraStarted:Z

    if-eqz v2, :cond_6e

    .line 403
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->restartCameraView()V

    goto :goto_14

    .line 405
    :cond_6e
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 407
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->initializeCameraInputView(Landroid/view/LayoutInflater;)V

    .line 408
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->setCameraViewHeight()V

    .line 409
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/apps/translate/Profile;->getCameraLogging(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setImageLogging(Z)V

    .line 410
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 411
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v2, v4, v4}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->startInput(Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;)Z

    .line 415
    :goto_96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraStarted:Z

    goto/16 :goto_14

    .line 413
    :cond_9b
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->startInput(Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;)Z

    goto :goto_96

    .line 369
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_2b
        :pswitch_66
    .end packed-switch
.end method

.method private restartCameraView()V
    .registers 4

    .prologue
    .line 427
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 428
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$6;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    return-void
.end method

.method private setCameraViewHeight()V
    .registers 6

    .prologue
    .line 484
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I

    .line 486
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 487
    .local v1, translateViewHeight:I
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translateViewHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 489
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I

    sub-int v2, v1, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAMERA mCameraHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAMERA params.height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 494
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    iget v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setImeControlsHeight(I)V

    .line 495
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setVisibility(I)V

    .line 496
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->invalidate()V

    .line 497
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params.height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params.width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCameraInputView.getHeight()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "InputMethodView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCameraInputView.getWidth()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public static setSoftwareKeyboardAvailable(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "available"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 585
    .local v0, m:Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_d

    .line 599
    :goto_c
    return-void

    .line 588
    :cond_d
    if-eqz p1, :cond_13

    .line 589
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_c

    .line 597
    :cond_13
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_c
.end method

.method private declared-synchronized showCameraLoggingDialog(Landroid/app/Activity;Z)V
    .registers 12
    .parameter "activity"
    .parameter "forceShow"

    .prologue
    .line 964
    monitor-enter p0

    if-eqz p2, :cond_6e

    .line 965
    const/4 v7, 0x1

    :try_start_4
    invoke-static {p1, v7}, Lcom/google/android/apps/translate/Profile;->setShowCameraLoggingDialog(Landroid/content/Context;Z)V

    .line 971
    :cond_7
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraLoggingConfirmed:Z

    .line 972
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 974
    .local v4, inflater:Landroid/view/LayoutInflater;
    sget v7, Lcom/google/android/apps/translate/R$layout;->camera_logging_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 976
    .local v3, dialogContentView:Landroid/view/View;
    sget v7, Lcom/google/android/apps/translate/R$id;->camera_logging_checkbox:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 979
    .local v2, cb:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/google/android/apps/translate/Profile;->getCameraLogging(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 980
    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$14;

    invoke-direct {v7, p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView$14;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/app/Activity;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 987
    sget v7, Lcom/google/android/apps/translate/R$string;->label_ok:I

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 988
    .local v6, okBtnLabel:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget v7, Lcom/google/android/apps/translate/R$string;->label_camera_input:I

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .local v5, msg:Ljava/lang/StringBuilder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 991
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 995
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1000
    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$15;

    invoke-direct {v7, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$15;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1008
    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$16;

    invoke-direct {v7, p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView$16;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/app/Activity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1018
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6c
    .catchall {:try_start_4 .. :try_end_6c} :catchall_75

    .line 1019
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #cb:Landroid/widget/CheckBox;
    .end local v3           #dialogContentView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #msg:Ljava/lang/StringBuilder;
    .end local v6           #okBtnLabel:Ljava/lang/String;
    :goto_6c
    monitor-exit p0

    return-void

    .line 967
    :cond_6e
    :try_start_6e
    invoke-static {p1}, Lcom/google/android/apps/translate/Profile;->getShowCameraLoggingDialog(Landroid/content/Context;)Z
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_75

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6c

    .line 964
    :catchall_75
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private showInputSelector(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 272
    const-string v0, "InputMethodView"

    const-string v1, "showInputSelector"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    if-nez v0, :cond_1b

    .line 275
    if-eqz p1, :cond_13

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->slideDown(Landroid/view/View;)V

    .line 287
    :goto_12
    return-void

    .line 278
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 281
    :cond_1b
    if-eqz p1, :cond_23

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->slideUp(Landroid/view/View;)V

    goto :goto_12

    .line 284
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method private slideDown(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 821
    const-string v2, "InputMethodView"

    const-string v3, "slideDown"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    .line 846
    :goto_10
    return-void

    .line 826
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getHeight()I

    move-result v0

    .line 827
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 828
    .local v1, slideDown:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 829
    new-instance v2, Lcom/google/android/apps/translate/editor/InputMethodView$13;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView$13;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 845
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10
.end method

.method private slideDownInputMethodView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 761
    const-string v2, "InputMethodView"

    const-string v3, "slideDownInputMethodView"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getHeight()I

    move-result v0

    .line 763
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 764
    .local v1, slideDown:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 765
    new-instance v2, Lcom/google/android/apps/translate/editor/InputMethodView$11;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$11;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 788
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 789
    return-void
.end method

.method private slideUp(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 793
    const-string v2, "InputMethodView"

    const-string v3, "slideUp"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    .line 818
    :goto_e
    return-void

    .line 798
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 800
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 801
    .local v1, slideUp:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 802
    new-instance v2, Lcom/google/android/apps/translate/editor/InputMethodView$12;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$12;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 817
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_e
.end method

.method private slideUpInputMethodView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 729
    const-string v2, "InputMethodView"

    const-string v3, "slideUpInputMethodView"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getHeight()I

    move-result v0

    .line 731
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 732
    .local v1, slideUp:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 733
    new-instance v2, Lcom/google/android/apps/translate/editor/InputMethodView$10;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$10;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 758
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->clearSelection()V

    .line 871
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 889
    :goto_11
    :pswitch_11
    return-void

    .line 873
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->clearLimboState()V

    .line 874
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->resetStrokes(Z)V

    goto :goto_11

    .line 877
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceInput:Lcom/google/android/apps/translate/VoiceInput;

    if-eqz v0, :cond_26

    .line 878
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceInput:Lcom/google/android/apps/translate/VoiceInput;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/VoiceInput;->cancel()V

    .line 880
    :cond_26
    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    goto :goto_11

    .line 871
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    return-object v0
.end method

.method public getEditingAreaViewHeight()I
    .registers 5

    .prologue
    .line 437
    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    .line 455
    :pswitch_d
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1d
    :goto_1d
    return v0

    .line 439
    :pswitch_1e
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v2, 0x2

    .line 441
    .local v0, maxHeight:I
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 446
    .local v1, translateViewHeight:I
    if-lt v0, v1, :cond_1d

    move v0, v1

    goto :goto_1d

    .line 449
    .end local v0           #maxHeight:I
    .end local v1           #translateViewHeight:I
    :pswitch_3a
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v2, 0x2

    goto :goto_1d

    .line 437
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_d
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public hasInputMethodShown()Z
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 522
    const-string v3, "InputMethodView"

    const-string v4, "hideCurrentInputMethod"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    if-nez v3, :cond_e

    .line 579
    :goto_d
    return v2

    .line 526
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->cancel()V

    .line 528
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    if-eqz v3, :cond_1f

    .line 529
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->commitSourceText()V

    .line 531
    :cond_1f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 532
    .local v0, hidden:Ljava/lang/Boolean;
    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_80

    .line 573
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    .line 575
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 578
    :goto_37
    :pswitch_37
    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    iput-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 579
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_d

    .line 539
    :pswitch_40
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->onEditCompleted(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 540
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->slideDownInputMethodView()V

    goto :goto_37

    .line 543
    :pswitch_49
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->finishInput()V

    .line 544
    iput-boolean v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraStarted:Z

    .line 545
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->setVisibility(I)V

    .line 546
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 547
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 548
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 551
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    goto :goto_37

    .line 555
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_6e
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->setSoftwareKeyboardAvailable(Landroid/app/Activity;Z)V

    .line 556
    new-instance v2, Lcom/google/android/apps/translate/editor/InputMethodView$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$8;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->post(Ljava/lang/Runnable;)Z

    .line 568
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    goto :goto_37

    .line 532
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_37
        :pswitch_40
        :pswitch_49
    .end packed-switch
.end method

.method public init(Landroid/app/Activity;Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/editor/TextSlot;Lcom/google/android/apps/translate/asreditor/AsrResultEditor;Ljava/lang/String;Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 18
    .parameter "activity"
    .parameter "instantTranslateHandler"
    .parameter "sourceLanguage"
    .parameter "targetLanguage"
    .parameter "editorField"
    .parameter "asrResultEditor"
    .parameter "locale"
    .parameter "editPanel"

    .prologue
    .line 143
    const-string v6, "InputMethodView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init from="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    .line 146
    iput-object p2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    .line 147
    iput-object p3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 148
    iput-object p4, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 149
    iput-object p5, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 150
    iput-object p6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 151
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceLocale:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 153
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_selector:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputSelector:Landroid/view/View;

    .line 154
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_placeholder:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mInputMethodPlaceholder:Landroid/widget/LinearLayout;

    .line 155
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 158
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_keyboard_button:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mKeyboardBtn:Landroid/widget/ImageButton;

    .line 159
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    .line 171
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mKeyboardBtn:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 174
    iget-boolean v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraStarted:Z

    if-eqz v6, :cond_16e

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->restartCameraView()V

    .line 179
    :goto_75
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_mic_button:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mMicBtn:Landroid/widget/ImageButton;

    .line 180
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v7, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/VoiceInputHelper;->isVoiceInputAvailable(Lcom/google/android/apps/translate/Language;)Z

    move-result v6

    if-eqz v6, :cond_173

    .line 181
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mMicBtn:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mMicBtn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$2;

    invoke-direct {v7, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$2;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    .line 195
    :goto_9f
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_handwriting_button:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingBtn:Landroid/widget/ImageButton;

    .line 196
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/Profile;->isHandwritingSupported(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Z

    move-result v6

    if-eqz v6, :cond_17c

    .line 197
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingBtn:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingBtn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$3;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    .line 211
    :goto_c9
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_camera_button:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraBtn:Landroid/widget/ImageButton;

    .line 212
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraSupported:Z

    .line 213
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/google/android/apps/translate/Profile;->isCameraSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 214
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->initializeCameraInputView(Landroid/view/LayoutInflater;)V

    .line 215
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    if-eqz v6, :cond_104

    .line 219
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_ed
    if-ge v2, v5, :cond_104

    aget-object v4, v1, v2

    .line 220
    .local v4, lang:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_185

    .line 221
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraSupported:Z

    .line 228
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #lang:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_104
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getRootView()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/google/android/apps/translate/R$id;->translate_app_container:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    .line 229
    iget-boolean v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraSupported:Z

    if-eqz v6, :cond_189

    .line 230
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraBtn:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraBtn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$4;

    invoke-direct {v7, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$4;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mIconCount:I

    .line 244
    :goto_12a
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_191

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eq v6, v7, :cond_191

    .line 247
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideInputSelector(Z)V

    .line 251
    :goto_13e
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_divider_1:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_divider_2:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 253
    sget v6, Lcom/google/android/apps/translate/R$id;->input_method_divider_3:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    if-eqz v6, :cond_16d

    .line 258
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;

    new-instance v7, Lcom/google/android/apps/translate/editor/InputMethodView$5;

    invoke-direct {v7, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$5;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    :cond_16d
    return-void

    .line 177
    :cond_16e
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->initializeVoiceInputView(Landroid/view/LayoutInflater;)V

    goto/16 :goto_75

    .line 192
    :cond_173
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mMicBtn:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_9f

    .line 208
    :cond_17c
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingBtn:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_c9

    .line 219
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #lang:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_185
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ed

    .line 241
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #lang:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_189
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraBtn:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_12a

    .line 249
    :cond_191
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    goto :goto_13e
.end method

.method public onCameraError()V
    .registers 4

    .prologue
    .line 954
    const-string v0, "InputMethodView"

    const-string v1, "Failed to open camera!"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->text_input_cannot_open_camera:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 957
    return-void
.end method

.method public onCancelVoice()V
    .registers 1

    .prologue
    .line 863
    return-void
.end method

.method public onClearText()V
    .registers 3

    .prologue
    .line 911
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 921
    :goto_d
    return-void

    .line 913
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->onClearText()V

    goto :goto_d

    .line 911
    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_e
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 903
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    .line 904
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 907
    :cond_b
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    .line 908
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 897
    const-string v0, "InputMethodView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 899
    return-void
.end method

.method public onEditPanelHeightChanged(I)V
    .registers 5
    .parameter "actionBarHeight"

    .prologue
    .line 460
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView$7;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    return-void
.end method

.method public onError()V
    .registers 1

    .prologue
    .line 867
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1023
    if-nez p2, :cond_5

    .line 1045
    :cond_4
    :goto_4
    return v0

    .line 1026
    :cond_5
    sparse-switch p1, :sswitch_data_46

    goto :goto_4

    .line 1028
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->CAMERA:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v2, v3, :cond_4

    .line 1029
    const-string v0, "InputMethodView"

    const-string v2, "onKeyPreIme CAMERA!"

    invoke-static {v0, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 1031
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    .line 1032
    :cond_25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_32

    .line 1033
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraInputView:Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    :cond_32
    move v0, v1

    .line 1035
    goto :goto_4

    .line 1039
    :sswitch_34
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->getCurrentInputMethod()Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->CAMERA:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v2, v3, :cond_4

    .line 1040
    const-string v0, "InputMethodView"

    const-string v2, "onKeyPreIme FOCUS!"

    invoke-static {v0, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1042
    goto :goto_4

    .line 1026
    nop

    :sswitch_data_46
    .sparse-switch
        0x1b -> :sswitch_9
        0x50 -> :sswitch_34
    .end sparse-switch
.end method

.method public onKeyboardButton()V
    .registers 2

    .prologue
    .line 939
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->KEYBOARD:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 940
    return-void
.end method

.method public onNetworkError(I)V
    .registers 5
    .parameter "statusCode"

    .prologue
    .line 947
    const-string v0, "InputMethodView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera input failed due to network error. status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 950
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 892
    const-string v0, "InputMethodView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public onTextSelected(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "text"
    .parameter "alternatives"

    .prologue
    .line 928
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 932
    :goto_6
    return-void

    .line 931
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->replaceSelectedText(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_6
.end method

.method public onVoiceResults(Ljava/util/List;ZZ)V
    .registers 4
    .parameter
    .parameter "canceled"
    .parameter "finished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, recognitionResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public restartInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 626
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 637
    :goto_d
    return-void

    .line 630
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_d

    .line 626
    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 8
    .parameter "inputMethod"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 640
    const-string v1, "InputMethodView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startInputMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodStart(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 726
    :goto_26
    return-void

    .line 647
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/translate/editor/TextSlot;->setIsTextEditor(Z)V

    .line 648
    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 649
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    .line 650
    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_102

    .line 721
    invoke-direct {p0, v5}, Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V

    .line 722
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 725
    :goto_4a
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->beginEditing()V

    goto :goto_26

    .line 653
    :pswitch_50
    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideInputSelector(Z)V

    .line 657
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Profile;->isHandwritingSupported(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 658
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 660
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->initializeHandwritingInputView(Landroid/view/LayoutInflater;)V

    .line 661
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setSourceAndTargetLanguages(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 663
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    goto :goto_4a

    .line 665
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_77
    const-string v1, "InputMethodView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handwriting not supported for language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 680
    :pswitch_96
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 681
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/VoiceInputHelper;->startVoiceInput(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;)V

    .line 683
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    goto :goto_4a

    .line 686
    :pswitch_aa
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/translate/editor/InputMethodView;->showCameraLoggingDialog(Landroid/app/Activity;Z)V

    .line 688
    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideInputSelector(Z)V

    .line 692
    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraSupported:Z

    if-eqz v1, :cond_c1

    .line 693
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    .line 694
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_4a

    .line 696
    :cond_c1
    const-string v1, "InputMethodView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera not supported for language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 704
    :pswitch_e1
    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideInputSelector(Z)V

    .line 706
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mKeyboardBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/google/android/apps/translate/R$drawable;->input_keyboard_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->render()V

    .line 708
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v5}, Lcom/google/android/apps/translate/editor/InputMethodView;->setSoftwareKeyboardAvailable(Landroid/app/Activity;Z)V

    .line 710
    new-instance v1, Lcom/google/android/apps/translate/editor/InputMethodView$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/editor/InputMethodView$9;-><init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InputMethodView;->invalidate()V

    goto/16 :goto_4a

    .line 650
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_96
        :pswitch_50
        :pswitch_aa
    .end packed-switch
.end method
