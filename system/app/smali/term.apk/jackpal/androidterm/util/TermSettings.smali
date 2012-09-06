.class public Ljackpal/androidterm/util/TermSettings;
.super Ljava/lang/Object;
.source "TermSettings.java"


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"

.field public static final ACTION_BAR_MODE_ALWAYS_VISIBLE:I = 0x1

.field public static final ACTION_BAR_MODE_HIDES:I = 0x2

.field private static final ACTION_BAR_MODE_MAX:I = 0x2

.field public static final ACTION_BAR_MODE_NONE:I = 0x0

.field public static final AMBER:I = -0x49af

.field private static final BACKACTION_KEY:Ljava/lang/String; = "backaction"

.field public static final BACK_KEY_CLOSES_ACTIVITY:I = 0x2

.field public static final BACK_KEY_CLOSES_WINDOW:I = 0x1

.field private static final BACK_KEY_MAX:I = 0x4

.field public static final BACK_KEY_SENDS_ESC:I = 0x3

.field public static final BACK_KEY_SENDS_TAB:I = 0x4

.field public static final BACK_KEY_STOPS_SERVICE:I = 0x0

.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xcbb143

.field private static final CLOSEONEXIT_KEY:Ljava/lang/String; = "close_window_on_process_exit"

.field private static final COLOR_KEY:Ljava/lang/String; = "color"

.field public static final COLOR_SCHEMES:[[I = null

.field private static final CONTROLKEY_KEY:Ljava/lang/String; = "controlkey"

.field public static final CONTROL_KEY_ID_NONE:I = 0x7

.field public static final CONTROL_KEY_SCHEMES:[I = null

.field private static final CURSORBLINK_KEY:Ljava/lang/String; = "cursorblink"

.field private static final CURSORSTYLE_KEY:Ljava/lang/String; = "cursorstyle"

.field private static final FNKEY_KEY:Ljava/lang/String; = "fnkey"

.field public static final FN_KEY_ID_NONE:I = 0x7

.field public static final FN_KEY_SCHEMES:[I = null

.field private static final FONTSIZE_KEY:Ljava/lang/String; = "fontsize"

.field public static final GREEN:I = -0xff0100

.field public static final HOLO_BLUE:I = -0xcc4a1b

.field private static final IME_KEY:Ljava/lang/String; = "ime"

.field private static final INITIALCOMMAND_KEY:Ljava/lang/String; = "initialcommand"

.field public static final KEYCODE_NONE:I = -0x1

.field private static final PATHEXTENSIONS_KEY:Ljava/lang/String; = "do_path_extensions"

.field private static final PATHPREPEND_KEY:Ljava/lang/String; = "allow_prepend_path"

.field public static final RED:I = -0xfeed

.field private static final SHELL_KEY:Ljava/lang/String; = "shell"

.field private static final STATUSBAR_KEY:Ljava/lang/String; = "statusbar"

.field private static final TERMTYPE_KEY:Ljava/lang/String; = "termtype"

.field private static final UTF8_KEY:Ljava/lang/String; = "utf8_by_default"

.field private static final VERIFYPATH_KEY:Ljava/lang/String; = "verify_path"

.field public static final WHITE:I = -0x1


# instance fields
.field private mActionBarMode:I

.field private mAllowPathPrepend:Z

.field private mAppendPath:Ljava/lang/String;

.field private mBackKeyAction:I

.field private mCloseOnExit:Z

.field private mColorId:I

.field private mControlKeyId:I

.field private mCursorBlink:I

.field private mCursorStyle:I

.field private mDoPathExtensions:Z

.field private mFailsafeShell:Ljava/lang/String;

.field private mFnKeyId:I

.field private mFontSize:I

.field private mInitialCommand:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrependPath:Ljava/lang/String;

.field private mShell:Ljava/lang/String;

.field private mStatusBar:I

.field private mTermType:Ljava/lang/String;

.field private mUTF8ByDefault:Z

.field private mUseCookedIME:I

.field private mVerifyPath:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_7e

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_a2

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    .line 113
    new-array v0, v4, [I

    fill-array-data v0, :array_b6

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    return-void

    .line 82
    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    :array_66
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xbdt 0x4et 0x34t 0xfft
    .end array-data

    :array_72
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0xfft 0x0t 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    :array_7e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x51t 0xb6t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    :array_8a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x13t 0x1t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    :array_96
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xe5t 0xb5t 0x33t 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
    .end array-data

    .line 101
    :array_a2
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 113
    :array_b6
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter "res"
    .parameter "prefs"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Ljackpal/androidterm/util/TermSettings;->readDefaultPrefs(Landroid/content/res/Resources;)V

    .line 133
    invoke-virtual {p0, p2}, Ljackpal/androidterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 134
    return-void
.end method

.method private readBooleanPref(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 200
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readDefaultPrefs(Landroid/content/res/Resources;)V
    .registers 3
    .parameter "res"

    .prologue
    .line 137
    const/high16 v0, 0x7f06

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    .line 138
    const/high16 v0, 0x7f07

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    .line 139
    const v0, 0x7f060001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorStyle:I

    .line 140
    const v0, 0x7f060002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorBlink:I

    .line 141
    const v0, 0x7f060003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    .line 142
    const v0, 0x7f060004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    .line 143
    const/high16 v0, 0x7f08

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 144
    const v0, 0x7f060005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    .line 145
    const v0, 0x7f060006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    .line 146
    const v0, 0x7f060007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    .line 147
    const v0, 0x7f060008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    .line 148
    const v0, 0x7f060009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 150
    const v0, 0x7f06000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 151
    const v0, 0x7f06000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 152
    const v0, 0x7f080001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    .line 153
    const v0, 0x7f080002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    .line 154
    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    .line 155
    const v0, 0x7f080004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 156
    return-void
.end method

.method private readIntPref(Ljava/lang/String;II)I
    .registers 8
    .parameter "key"
    .parameter "defaultValue"
    .parameter "maxValue"

    .prologue
    .line 186
    :try_start_0
    iget-object v2, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_18

    move-result v1

    .line 191
    .local v1, val:I
    :goto_e
    const/4 v2, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 192
    return v1

    .line 188
    .end local v1           #val:I
    :catch_18
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .restart local v1       #val:I
    goto :goto_e
.end method

.method private readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 196
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionBarMode()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    return v0
.end method

.method public allowPathPrepend()Z
    .registers 2

    .prologue
    .line 296
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    return v0
.end method

.method public backKeySendsCharacter()Z
    .registers 3

    .prologue
    .line 236
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public closeWindowOnProcessExit()Z
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    return v0
.end method

.method public defaultToUTF8Mode()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    return v0
.end method

.method public doPathExtensions()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    return v0
.end method

.method public getAppendPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackKeyAction()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    return v0
.end method

.method public getBackKeyCharacter()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    packed-switch v0, :pswitch_data_e

    .line 243
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 241
    :pswitch_7
    const/16 v0, 0x1b

    goto :goto_6

    .line 242
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_6

    .line 240
    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public getColorScheme()[I
    .registers 3

    .prologue
    .line 224
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getControlKeyCode()I
    .registers 3

    .prologue
    .line 256
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getControlKeyId()I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    return v0
.end method

.method public getCursorBlink()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorBlink:I

    return v0
.end method

.method public getCursorStyle()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorStyle:I

    return v0
.end method

.method public getFailsafeShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    return-object v0
.end method

.method public getFnKeyCode()I
    .registers 3

    .prologue
    .line 260
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getFnKeyId()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    return v0
.end method

.method public getFontSize()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    return v0
.end method

.method public getInitialCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getPrependPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    return-object v0
.end method

.method public getTermType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    return-object v0
.end method

.method public readPrefs(Landroid/content/SharedPreferences;)V
    .registers 6
    .parameter "prefs"

    .prologue
    const/4 v3, 0x1

    .line 159
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 160
    const-string v0, "statusbar"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    invoke-direct {p0, v0, v1, v3}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    .line 161
    const-string v0, "actionbar"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    .line 164
    const-string v0, "fontsize"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    .line 165
    const-string v0, "color"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    .line 166
    const-string v0, "utf8_by_default"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 167
    const-string v0, "backaction"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    .line 168
    const-string v0, "controlkey"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    .line 170
    const-string v0, "fnkey"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    .line 172
    const-string v0, "ime"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    invoke-direct {p0, v0, v1, v3}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    .line 173
    const-string v0, "shell"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 174
    const-string v0, "initialcommand"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 175
    const-string v0, "termtype"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 176
    const-string v0, "close_window_on_process_exit"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    .line 177
    const-string v0, "verify_path"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    .line 178
    const-string v0, "do_path_extensions"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    .line 179
    const-string v0, "allow_prepend_path"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 181
    return-void
.end method

.method public setAppendPath(Ljava/lang/String;)V
    .registers 2
    .parameter "appendPath"

    .prologue
    .line 308
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setPrependPath(Ljava/lang/String;)V
    .registers 2
    .parameter "prependPath"

    .prologue
    .line 300
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public showStatusBar()Z
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public useCookedIME()Z
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public verifyPath()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    return v0
.end method
