.class Lcom/google/android/voiceime/ImeTrigger;
.super Ljava/lang/Object;
.source "ImeTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# instance fields
.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter "inputMethodService"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 42
    return-void
.end method

.method private static getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "inputMethodService"

    .prologue
    .line 64
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private static getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .parameter "inputMethodManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 85
    .local v2, inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 86
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 87
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const-string v4, "voice"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 88
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 95
    .end local v0           #i:I
    .end local v2           #inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3b
    return-object v2

    .line 85
    .restart local v0       #i:I
    .restart local v2       #inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 95
    .end local v0           #i:I
    .end local v2           #inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3f
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method private getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6
    .parameter "inputMethodManager"
    .parameter "inputMethodInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v1

    .line 74
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 76
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 78
    :goto_19
    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public static isInstalled(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 5
    .parameter "inputMethodService"

    .prologue
    const/4 v1, 0x0

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_8

    .line 113
    :cond_7
    :goto_7
    return v1

    .line 106
    :cond_8
    invoke-static {p0}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 109
    .local v0, inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method


# virtual methods
.method public onStartInputView()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .registers 7
    .parameter "language"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 51
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 53
    .local v0, inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_d

    .line 61
    :goto_c
    return-void

    .line 57
    :cond_d
    iget-object v2, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_c
.end method