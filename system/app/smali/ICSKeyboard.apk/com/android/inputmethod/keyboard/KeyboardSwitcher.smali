.class public Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_CACHE:Z = false

.field public static final DEBUG_STATE:Z = false

.field public static final INTL_LAYOUT_AZERTY:I = 0x1

.field public static final INTL_LAYOUT_COLEMAK:I = 0x5

.field public static final INTL_LAYOUT_DVORAK:I = 0x3

.field public static final INTL_LAYOUT_QWERTY:I = 0x0

.field public static final INTL_LAYOUT_QWERTZ:I = 0x2

.field private static final KEYBOARD_THEMES:[I = null

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout_20110916"

.field private static final SWITCH_STATE_ALPHA:I = 0x0

.field private static final SWITCH_STATE_CHORDING_ALPHA:I = 0x5

.field private static final SWITCH_STATE_CHORDING_SYMBOL:I = 0x6

.field private static final SWITCH_STATE_MOMENTARY_ALPHA_AND_SYMBOL:I = 0x3

.field private static final SWITCH_STATE_MOMENTARY_SYMBOL_AND_MORE:I = 0x4

.field private static final SWITCH_STATE_SYMBOL:I = 0x2

.field private static final SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static mInternationalLayout:I

.field private static mLayoutSwitchBackSymbols:Ljava/lang/String;

.field public static mUseExternalSkin:Z

.field private static final sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field public static skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;


# instance fields
.field private mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

.field private mExternalSkin:Ljava/lang/String;

.field private mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

.field private mIsAutoCorrectionActive:Z

.field private final mKeyboardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/keyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

.field private mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mPackageName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

.field private mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSwitchState:I

.field private mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

.field private mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mThemeContext:Landroid/content/Context;

.field private mThemeIndex:I

.field private mUriImage:Ljava/lang/String;

.field private mUseCustomeImage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    .line 59
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    .line 77
    sput v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    .line 80
    sput-boolean v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    .line 125
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 57
    return-void

    .line 63
    nop

    :array_22
    .array-data 0x4
        0x29t 0x0t 0xft 0x7ft
        0x28t 0x0t 0xft 0x7ft
        0x2et 0x0t 0xft 0x7ft
        0x2dt 0x0t 0xft 0x7ft
        0x2bt 0x0t 0xft 0x7ft
        0x2ct 0x0t 0xft 0x7ft
        0x2at 0x0t 0xft 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 92
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    .line 102
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private createInputView(IZ)Landroid/view/View;
    .registers 10
    .parameter "newThemeIndex"
    .parameter "forceRecreate"

    .prologue
    .line 788
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-ne v4, p1, :cond_d

    if-nez p2, :cond_d

    .line 789
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    .line 827
    :goto_c
    return-object v4

    .line 791
    :cond_d
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_16

    .line 792
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 795
    :cond_16
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 796
    .local v2, oldThemeIndex:I
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 797
    const/4 v3, 0x1

    .line 798
    .local v3, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    const/4 v4, 0x5

    if-ge v1, v4, :cond_26

    if-nez v3, :cond_4c

    .line 817
    :cond_26
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 818
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 820
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setExternalSkin(Landroid/view/View;)V

    .line 821
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setCustomBackdroundImage(Landroid/view/View;)V

    .line 825
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v4}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 827
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    goto :goto_c

    .line 800
    :cond_4c
    :try_start_4c
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0, v4, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 801
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 802
    const v5, 0x7f030002

    const/4 v6, 0x0

    .line 801
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/InputView;

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;
    :try_end_63
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4c .. :try_end_63} :catch_67
    .catch Landroid/view/InflateException; {:try_start_4c .. :try_end_63} :catch_9c

    .line 803
    const/4 v3, 0x0

    .line 798
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 804
    :catch_67
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "load keyboard failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 806
    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_64

    .line 808
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_9c
    move-exception v0

    .line 809
    .local v0, e:Landroid/view/InflateException;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "load keyboard failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 810
    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_64
.end method

.method private decodeUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "selectedImageString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8c

    .line 941
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 942
    .local v6, selectedImage:Landroid/net/Uri;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 943
    .local v3, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 944
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 945
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v10, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 948
    const/16 v0, 0x8c

    .line 951
    .local v0, REQUIRED_SIZE:I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v7, width_tmp:I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 952
    .local v2, height_tmp:I
    const/4 v5, 0x1

    .line 954
    .local v5, scale:I
    :goto_27
    div-int/lit8 v8, v7, 0x2

    if-lt v8, v9, :cond_2f

    .line 955
    div-int/lit8 v8, v2, 0x2

    if-ge v8, v9, :cond_43

    .line 963
    :cond_2f
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 964
    .local v4, o2:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 965
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 957
    .end local v4           #o2:Landroid/graphics/BitmapFactory$Options;
    :cond_43
    div-int/lit8 v7, v7, 0x2

    .line 958
    div-int/lit8 v2, v2, 0x2

    .line 959
    mul-int/lit8 v5, v5, 0x2

    .line 953
    goto :goto_27
.end method

.method private static getF2KeyMode(ZZ)I
    .registers 3
    .parameter "settingsKeyEnabled"
    .parameter "noSettingsKey"

    .prologue
    .line 897
    if-eqz p1, :cond_4

    .line 899
    const/4 v0, 0x2

    .line 907
    :goto_3
    return v0

    .line 902
    :cond_4
    if-eqz p0, :cond_8

    .line 903
    const/4 v0, 0x1

    goto :goto_3

    .line 907
    :cond_8
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public static getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .registers 12
    .parameter "id"
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 280
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 281
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/keyboard/LatinKeyboard;>;"
    if-nez v2, :cond_a0

    move-object v1, v5

    .line 282
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_d
    if-eqz v1, :cond_11

    if-eqz p2, :cond_b3

    .line 283
    :cond_11
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    iget-object v6, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 285
    .local v3, savedLocale:Ljava/util/Locale;
    :try_start_19
    new-instance v0, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;

    .line 288
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 289
    const-string v6, "SupportTouchPositionCorrection"

    .line 288
    invoke-virtual {v4, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v4

    .line 287
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->setTouchPositionCorrectionEnabled(Z)V

    .line 290
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_a9

    move-result-object v1

    .line 292
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 294
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v4, :cond_87

    .line 297
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "keyboard cache size="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 298
    if-nez v2, :cond_b0

    const-string v4, "LOAD"

    :goto_62
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 299
    const-string v7, " theme="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v7}, Lcom/android/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v3           #savedLocale:Ljava/util/Locale;
    :cond_87
    :goto_87
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    .line 307
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 308
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 312
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 313
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 314
    return-object v1

    .line 281
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_a0
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-object v1, v4

    goto/16 :goto_d

    .line 291
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .restart local v3       #savedLocale:Ljava/util/Locale;
    :catchall_a9
    move-exception v4

    .line 292
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 293
    throw v4

    .line 298
    .restart local v0       #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    :cond_b0
    const-string v4, "GCed"

    goto :goto_62

    .line 301
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v3           #savedLocale:Ljava/util/Locale;
    :cond_b3
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v4, :cond_87

    .line 302
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "keyboard cache size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": HIT  id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 303
    const-string v7, " theme="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v7}, Lcom/android/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method private getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 27
    .parameter "editorInfo"
    .parameter "isSymbols"
    .parameter "isShift"
    .parameter "settingsValues"

    .prologue
    .line 319
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/Utils;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v8

    .line 321
    .local v8, mode:I
    packed-switch v8, :pswitch_data_104

    .line 329
    if-eqz p2, :cond_b9

    .line 330
    if-eqz p3, :cond_b4

    const v4, 0x7f05002b

    .line 348
    .local v4, xmlId:I
    :cond_e
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/android/inputmethod/latin/Settings$Values;->isSettingsKeyEnabled()Z

    move-result v20

    .line 351
    .local v20, settingsKeyEnabled:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "noMicrophoneKey"

    .line 350
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_ec

    .line 353
    const/4 v2, 0x0

    const-string v3, "nm"

    .line 352
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_ec

    const/16 v19, 0x0

    .line 354
    .local v19, noMicrophone:Z
    :goto_2d
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings$Values;->isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 355
    if-nez v19, :cond_f0

    const/4 v13, 0x1

    .line 356
    .local v13, voiceKeyEnabled:Z
    :goto_3a
    invoke-virtual/range {p4 .. p4}, Lcom/android/inputmethod/latin/Settings$Values;->isVoiceKeyOnMain()Z

    move-result v21

    .line 358
    .local v21, voiceKeyOnMain:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "noSettingsKey"

    .line 357
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v12

    .line 359
    .local v12, noSettingsKey:Z
    if-eqz v20, :cond_f3

    if-nez v12, :cond_f3

    const/4 v10, 0x1

    .line 360
    .local v10, hasSettingsKey:Z
    :goto_4f
    move/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(ZZ)I

    move-result v11

    .line 361
    .local v11, f2KeyMode:I
    if-eqz v13, :cond_f6

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_f6

    const/4 v14, 0x1

    .line 363
    .local v14, hasShortcutKey:Z
    :goto_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "forceAscii"

    .line 362
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v18

    .line 364
    .local v18, forceAscii:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 365
    const-string v3, "AsciiCapable"

    .line 364
    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v15

    .line 366
    .local v15, asciiCapable:Z
    if-eqz v18, :cond_f9

    if-nez v15, :cond_f9

    .line 367
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 368
    .local v5, locale:Ljava/util/Locale;
    :goto_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 369
    .local v16, conf:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 371
    .local v17, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 373
    move-object/from16 v0, v17

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v9, p1

    .line 371
    invoke-direct/range {v2 .. v14}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V

    return-object v2

    .line 323
    .end local v4           #xmlId:I
    .end local v5           #locale:Ljava/util/Locale;
    .end local v10           #hasSettingsKey:Z
    .end local v11           #f2KeyMode:I
    .end local v12           #noSettingsKey:Z
    .end local v13           #voiceKeyEnabled:Z
    .end local v14           #hasShortcutKey:Z
    .end local v15           #asciiCapable:Z
    .end local v16           #conf:Landroid/content/res/Configuration;
    .end local v17           #dm:Landroid/util/DisplayMetrics;
    .end local v18           #forceAscii:Z
    .end local v19           #noMicrophone:Z
    .end local v20           #settingsKeyEnabled:Z
    .end local v21           #voiceKeyOnMain:Z
    :pswitch_a2
    if-eqz p2, :cond_ab

    if-eqz p3, :cond_ab

    const v4, 0x7f05000b

    .line 324
    .restart local v4       #xmlId:I
    :goto_a9
    goto/16 :goto_e

    .line 323
    .end local v4           #xmlId:I
    :cond_ab
    const v4, 0x7f05000a

    goto :goto_a9

    .line 326
    :pswitch_af
    const v4, 0x7f050008

    .line 327
    .restart local v4       #xmlId:I
    goto/16 :goto_e

    .line 330
    .end local v4           #xmlId:I
    :cond_b4
    const v4, 0x7f050028

    goto/16 :goto_e

    .line 332
    :cond_b9
    const v4, 0x7f05000c

    .line 333
    .restart local v4       #xmlId:I
    sget v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    if-nez v2, :cond_c5

    .line 334
    const v4, 0x7f05000c

    goto/16 :goto_e

    .line 335
    :cond_c5
    sget v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ce

    .line 336
    const/high16 v4, 0x7f05

    goto/16 :goto_e

    .line 337
    :cond_ce
    sget v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d8

    .line 338
    const v4, 0x7f050012

    goto/16 :goto_e

    .line 339
    :cond_d8
    sget v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e2

    .line 340
    const v4, 0x7f050005

    goto/16 :goto_e

    .line 341
    :cond_e2
    sget v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 342
    const v4, 0x7f050001

    goto/16 :goto_e

    .line 352
    .restart local v20       #settingsKeyEnabled:Z
    :cond_ec
    const/16 v19, 0x1

    goto/16 :goto_2d

    .line 355
    .restart local v19       #noMicrophone:Z
    :cond_f0
    const/4 v13, 0x0

    goto/16 :goto_3a

    .line 359
    .restart local v12       #noSettingsKey:Z
    .restart local v13       #voiceKeyEnabled:Z
    .restart local v21       #voiceKeyOnMain:Z
    :cond_f3
    const/4 v10, 0x0

    goto/16 :goto_4f

    .line 361
    .restart local v10       #hasSettingsKey:Z
    .restart local v11       #f2KeyMode:I
    :cond_f6
    const/4 v14, 0x0

    goto/16 :goto_5e

    .line 367
    .restart local v14       #hasShortcutKey:Z
    .restart local v15       #asciiCapable:Z
    .restart local v18       #forceAscii:Z
    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v5

    goto/16 :goto_7a

    .line 321
    nop

    :pswitch_data_104
    .packed-switch 0x4
        :pswitch_a2
        :pswitch_af
    .end packed-switch
.end method

.method private static getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .registers 8
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 199
    const/high16 v3, 0x7f0c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, defaultThemeId:Ljava/lang/String;
    const-string v3, "pref_keyboard_layout_20110916"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, themeId:Ljava/lang/String;
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    .local v2, themeIndex:I
    if-ltz v2, :cond_1d

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    array-length v3, v3
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_19} :catch_1c

    if-ge v2, v3, :cond_1d

    .line 209
    .end local v2           #themeIndex:I
    :goto_1b
    return v2

    .line 205
    :catch_1c
    move-exception v3

    .line 208
    :cond_1d
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal keyboard theme in preference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default to 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x5

    goto :goto_1b
.end method

.method private getPointerCount()I
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_5
.end method

.method private getSwitchState(Lcom/android/inputmethod/keyboard/KeyboardId;)I
    .registers 3
    .parameter "id"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "ims"
    .parameter "prefs"

    .prologue
    .line 185
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 186
    return-void
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter "ims"
    .parameter "prefs"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    .line 190
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    .line 192
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 193
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 194
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 195
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 196
    return-void
.end method

.method private static isLayoutSwitchBackCharacter(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 705
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 707
    :cond_9
    :goto_9
    return v0

    .line 706
    :cond_a
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isManualTemporaryUpperCaseFromAuto()Z
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 434
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 435
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    .line 436
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static isSpaceCharacter(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 701
    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    const/16 v0, 0xa

    if-eq p0, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private postSetInputView(Landroid/view/View;)V
    .registers 4
    .parameter "newInputView"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method

.method private setAutomaticTemporaryUpperCase()V
    .registers 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v1, :cond_5

    .line 502
    :cond_4
    :goto_4
    return-void

    .line 498
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 499
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v0, :cond_4

    .line 500
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 501
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_4
.end method

.method private setContextThemeWrapper(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "themeIndex"

    .prologue
    .line 213
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-eq v0, p2, :cond_16

    .line 214
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 215
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    aget v1, v1, p2

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    .line 216
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    :cond_16
    return-void
.end method

.method private setCustomBackdroundImage(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 918
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "background_image_uri"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUriImage:Ljava/lang/String;

    .line 919
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "use_custom_image"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseCustomeImage:Z

    .line 920
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUriImage:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_2e

    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseCustomeImage:Z

    if-eqz v4, :cond_2e

    .line 924
    :try_start_22
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUriImage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->decodeUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 925
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_2d} :catch_34

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v2, d:Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 931
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 933
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    :cond_33
    return-void

    .line 926
    :catch_34
    move-exception v3

    .line 928
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2e
.end method

.method private setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 8
    .parameter "keyboard"

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 248
    .local v1, oldKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 249
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    iget v3, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/InputView;->setKeyboardGeometry(I)V

    .line 250
    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 251
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getSwitchState(Lcom/android/inputmethod/keyboard/KeyboardId;)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 252
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftLockState(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 253
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 254
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v3

    .line 255
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/Settings$Values;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v4

    .line 253
    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 256
    if-eqz v1, :cond_52

    .line 257
    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v0, 0x0

    .line 258
    .local v0, localeChanged:Z
    :goto_47
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDisplayLanguageOnSpacebar(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 260
    return-void

    .line 257
    .end local v0           #localeChanged:Z
    :cond_52
    const/4 v0, 0x1

    goto :goto_47
.end method

.method private setManualTemporaryUpperCase(Z)V
    .registers 4
    .parameter "shifted"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 441
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_23

    .line 446
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 449
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 450
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 453
    :cond_23
    return-void
.end method

.method private setShiftLocked(Z)V
    .registers 4
    .parameter "shiftLocked"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 457
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 458
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 460
    :cond_11
    return-void
.end method

.method private toggleKeyboardMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 690
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 694
    :goto_14
    return-void

    .line 692
    :cond_15
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_14
.end method

.method private toggleShiftInSymbol()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 673
    :goto_7
    return-void

    .line 666
    :cond_8
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 667
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 668
    :cond_1c
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 672
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_22
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_7

    .line 670
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_26
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    goto :goto_22
.end method

.method private updateShiftLockState(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 4
    .parameter "keyboard"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 271
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->hasShiftLockKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 277
    :cond_11
    :goto_11
    return-void

    .line 272
    :cond_12
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    goto :goto_11
.end method


# virtual methods
.method public changeKeyboardMode()V
    .registers 2

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleKeyboardMode()V

    .line 538
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 540
    :cond_13
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 541
    return-void
.end method

.method public getInputView()Lcom/android/inputmethod/latin/InputView;
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    return-object v0
.end method

.method public getKeyboardMode()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_11

    .line 397
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 398
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_11

    .line 399
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 401
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hasDistinctMultitouch()Z
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAlphabetMode()Z
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 420
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 421
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    .line 422
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isInMomentarySwitchState()Z
    .registers 3

    .prologue
    .line 676
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 677
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    .line 676
    goto :goto_b
.end method

.method public isInputViewShown()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/InputView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isKeyboardAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_e

    .line 391
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 392
    :cond_e
    return v0
.end method

.method public isManualTemporaryUpperCase()Z
    .registers 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 427
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 428
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    .line 429
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isShiftLocked()Z
    .registers 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 413
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 414
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    .line 415
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 406
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 407
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    .line 408
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;Z)V
    .registers 8
    .parameter "editorInfo"
    .parameter "settingsValues"
    .parameter "force"

    .prologue
    .line 222
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 223
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 224
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 225
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->getKeyboardId()Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;Z)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 227
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->restore()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_35} :catch_36

    .line 232
    :goto_35
    return-void

    .line 228
    :catch_36
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loading keyboard failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public loadSkinData()V
    .registers 8

    .prologue
    const v6, 0x7f0c0070

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 971
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "international_layouts"

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, InternationalLayout:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    sput v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    .line 978
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "external_skin"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mExternalSkin:Ljava/lang/String;

    .line 979
    const/4 v1, 0x0

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    .line 980
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mExternalSkin:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 981
    invoke-static {}, Lcom/android/inputmethod/latin/LoadSkins;->resetBuildersCache()V

    .line 982
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/LoadSkins;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 983
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mExternalSkin:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/latin/LoadSkins;->getSkinDataByName(Ljava/lang/String;)Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    .line 985
    :cond_4e
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    if-eqz v1, :cond_a0

    .line 986
    sput-boolean v5, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    .line 990
    :goto_54
    return-void

    .line 973
    :cond_55
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    sput v5, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto :goto_21

    .line 974
    :cond_67
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v1, 0x2

    sput v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto :goto_21

    .line 975
    :cond_7a
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x3

    sput v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto :goto_21

    .line 976
    :cond_8d
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x5

    sput v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto :goto_21

    .line 988
    :cond_a0
    sput-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    goto :goto_54
.end method

.method public onAutoCorrectionStateChanged(Z)V
    .registers 6
    .parameter "isAutoCorrection"

    .prologue
    .line 884
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    if-eq v3, p1, :cond_1f

    .line 885
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 887
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->needsAutoCorrectionSpacebarLed()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 888
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 889
    .local v0, invalidatedKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 890
    .local v2, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v2, :cond_1f

    .line 891
    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 894
    .end local v0           #invalidatedKey:Lcom/android/inputmethod/keyboard/Key;
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v2           #keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :cond_1f
    return-void
.end method

.method public onCancelInput()V
    .registers 3

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 654
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 655
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 660
    :cond_f
    :goto_f
    return-void

    .line 656
    :cond_10
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 657
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_f
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 3

    .prologue
    .line 784
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInputView()V
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 240
    return-void
.end method

.method public onHideWindow()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 244
    return-void
.end method

.method public onKey(I)V
    .registers 5
    .parameter "code"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 717
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    packed-switch v0, :pswitch_data_64

    .line 777
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 725
    :pswitch_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1c

    .line 727
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 730
    :cond_19
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 732
    :cond_1c
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_26

    .line 737
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 741
    :cond_26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 745
    :pswitch_2a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_30

    .line 747
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 748
    :cond_30
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 751
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 752
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 756
    :cond_3c
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 760
    :pswitch_40
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_4a

    if-ltz p1, :cond_4a

    .line 761
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 764
    :cond_4a
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 765
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 772
    :pswitch_54
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    :cond_60
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 717
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_40
        :pswitch_54
        :pswitch_8
        :pswitch_2a
        :pswitch_7
        :pswitch_54
    .end packed-switch
.end method

.method public onOtherKeyPressed()V
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onOtherKeyPressed()V

    .line 648
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onOtherKeyPressed()V

    .line 649
    return-void
.end method

.method public onPressShift(Z)V
    .registers 5
    .parameter "withSliding"

    .prologue
    const/4 v2, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 577
    :goto_7
    return-void

    .line 546
    :cond_8
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 551
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 552
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 555
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 556
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_7

    .line 557
    :cond_1d
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 560
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 561
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_7

    .line 562
    :cond_2a
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 565
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPressOnShifted()V

    goto :goto_7

    .line 568
    :cond_34
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 569
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_7

    .line 573
    :cond_3b
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 574
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 575
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7
.end method

.method public onPressSymbol()V
    .registers 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 624
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    .line 625
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 626
    return-void
.end method

.method public onReleaseShift(Z)V
    .registers 5
    .parameter "withSliding"

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 616
    :goto_6
    return-void

    .line 582
    :cond_7
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 587
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 588
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 590
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 615
    :cond_18
    :goto_18
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_6

    .line 591
    :cond_1c
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_33

    if-nez p1, :cond_33

    .line 593
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 597
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->startIgnoringDoubleTap()V

    goto :goto_18

    .line 598
    :cond_33
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 599
    if-nez p1, :cond_45

    .line 601
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18

    .line 602
    :cond_45
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 603
    if-nez p1, :cond_18

    .line 606
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18

    .line 611
    :cond_57
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_18

    .line 612
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18
.end method

.method public onReleaseSymbol()V
    .registers 3

    .prologue
    .line 635
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 636
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 638
    :cond_8
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 639
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const v6, 0x7f0c0070

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 849
    const-string v2, "pref_keyboard_layout_20110916"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 850
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v1

    .line 851
    .local v1, themeIndex:I
    invoke-direct {p0, v1, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    .line 880
    .end local v1           #themeIndex:I
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->updateSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 881
    return-void

    .line 852
    :cond_20
    const-string v2, "show_settings_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 853
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    invoke-direct {p0, v2, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    goto :goto_1a

    .line 854
    :cond_32
    const-string v2, "pref_keyboard_height_settings_portrait"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 855
    const-string v2, "pref_keyboard_height_settings_landscape"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 857
    :cond_42
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v5}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    goto :goto_1a

    .line 858
    :cond_48
    const-string v2, "background_image_uri"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 859
    const-string v2, "use_custom_image"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 861
    :cond_58
    const-string v2, "background_image_uri"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUriImage:Ljava/lang/String;

    .line 862
    const-string v2, "use_custom_image"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseCustomeImage:Z

    .line 863
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    goto :goto_1a

    .line 865
    :cond_70
    const-string v2, "external_skin"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 866
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadSkinData()V

    .line 867
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    goto :goto_1a

    .line 869
    :cond_81
    const-string v2, "international_layouts"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 872
    const-string v2, "international_layouts"

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, InternationalLayout:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    sput v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto/16 :goto_1a

    .line 874
    :cond_a5
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    sput v5, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto/16 :goto_1a

    .line 875
    :cond_b8
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const/4 v2, 0x2

    sput v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto/16 :goto_1a

    .line 876
    :cond_cc
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const/4 v2, 0x3

    sput v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto/16 :goto_1a

    .line 877
    :cond_e0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    sput v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInternationalLayout:I

    goto/16 :goto_1a
.end method

.method public saveKeyboardState()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->save()V

    .line 236
    return-void
.end method

.method public setExternalSkin(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 994
    move-object v0, p1

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 995
    .local v0, kv:Lcom/android/inputmethod/keyboard/KeyboardView;
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundFunctional:Landroid/graphics/drawable/Drawable;

    .line 998
    sget-boolean v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v1, :cond_60

    .line 1000
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 1002
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    :cond_1a
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_28

    .line 1006
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundExternal:Landroid/graphics/drawable/Drawable;

    .line 1009
    :cond_28
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_36

    .line 1011
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundFunctional:Landroid/graphics/drawable/Drawable;

    .line 1014
    :cond_36
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color:I

    if-eq v1, v3, :cond_44

    .line 1016
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v2, v2, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color:I

    iput v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    .line 1018
    :cond_44
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color2:I

    if-eq v1, v3, :cond_52

    .line 1020
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v2, v2, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color2:I

    iput v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    .line 1022
    :cond_52
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v1, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color:I

    if-eq v1, v3, :cond_60

    .line 1024
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    iget v2, v2, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color:I

    iput v2, v1, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    .line 1030
    :cond_60
    return-void
.end method

.method public toggleCapsLock()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 484
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 485
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 494
    :cond_1c
    :goto_1c
    return-void

    .line 491
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_1c
.end method

.method public toggleShift()V
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 471
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 472
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    .line 476
    :goto_17
    return-void

    .line 472
    :cond_18
    const/4 v0, 0x1

    goto :goto_14

    .line 474
    :cond_1a
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShiftInSymbol()V

    goto :goto_17
.end method

.method public updateShiftState()V
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 516
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 517
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_25

    .line 518
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 520
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setAutomaticTemporaryUpperCase()V

    .line 530
    :cond_25
    :goto_25
    return-void

    .line 522
    :cond_26
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_25

    .line 528
    :cond_2e
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_25
.end method
