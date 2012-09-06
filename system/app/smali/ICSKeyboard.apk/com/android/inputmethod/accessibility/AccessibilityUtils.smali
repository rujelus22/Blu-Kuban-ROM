.class public Lcom/android/inputmethod/accessibility/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final CLASS:Ljava/lang/String; = null

.field private static final ENABLE_ACCESSIBILITY:Z = true

.field private static final PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

.field private mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 61
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 62
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 63
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 64
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 65
    return-void
.end method

.method private initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    .line 78
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 77
    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 79
    new-instance v1, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v1, v2}, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    .line 82
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Landroid/media/AudioManager;

    .line 83
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-direct {v1, v0}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    .line 84
    return-void
.end method


# virtual methods
.method public isTouchExplorationEnabled()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    .line 94
    goto :goto_11
.end method

.method public isTouchExplorationEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 110
    .local v0, action:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_11

    .line 111
    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    .line 112
    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/4 v1, 0x0

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    .line 110
    goto :goto_10
.end method

.method public onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 167
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->speak(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_12
    return-void
.end method

.method public shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 4
    .parameter "attribute"

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_4

    .line 128
    :cond_3
    :goto_3
    return v0

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v0

    goto :goto_3
.end method

.method public speak(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 139
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to speak when accessibility was disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_f
    return-void

    .line 147
    :cond_10
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 149
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 150
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 153
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_f
.end method
