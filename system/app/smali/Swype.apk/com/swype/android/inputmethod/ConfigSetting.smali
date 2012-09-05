.class public Lcom/swype/android/inputmethod/ConfigSetting;
.super Ljava/lang/Object;
.source "ConfigSetting.java"


# static fields
.field public static final ADD_PHONEBOOK_TO_USER_DB:Z = true

.field public static DEBUG_DRAW_BOUNDING_RECT:Z = false

.field public static final DEBUG_MOUSE_DATA_STAT:Z = false

.field public static final HAS_NAVIGATION_BAR_DEFAULT:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "Swype"

.field public static MULTI_TOUCH_SUPPORT:Z = false

.field public static final PLAY_KEYTAP_SOUND:Z = true

.field public static final USE_BITMAP_FOR_CHOICE_WINDOW:Z = true

.field public static VOICE_DICTATION_PROVIDER:I

.field private static g_android_version:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-boolean v1, Lcom/swype/android/inputmethod/ConfigSetting;->DEBUG_DRAW_BOUNDING_RECT:Z

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/swype/android/inputmethod/ConfigSetting;->MULTI_TOUCH_SUPPORT:Z

    .line 62
    sput v1, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/swype/android/inputmethod/ConfigSetting;->g_android_version:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAndroidVersion()I
    .registers 2

    .prologue
    .line 79
    sget v0, Lcom/swype/android/inputmethod/ConfigSetting;->g_android_version:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 80
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/swype/android/inputmethod/ConfigSetting;->g_android_version:I

    .line 82
    :cond_d
    sget v0, Lcom/swype/android/inputmethod/ConfigSetting;->g_android_version:I

    return v0
.end method
