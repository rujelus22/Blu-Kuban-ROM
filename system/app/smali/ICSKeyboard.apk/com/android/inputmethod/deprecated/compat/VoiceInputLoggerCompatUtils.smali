.class public Lcom/android/inputmethod/deprecated/compat/VoiceInputLoggerCompatUtils;
.super Ljava/lang/Object;
.source "VoiceInputLoggerCompatUtils.java"


# static fields
.field public static final EXTRA_AFTER_N_BEST_CHOOSE:Ljava/lang/String; = "after"

.field public static final EXTRA_BEFORE_N_BEST_CHOOSE:Ljava/lang/String; = "before"

.field public static final EXTRA_TEXT_REPLACED_LENGTH:Ljava/lang/String; = "length"

.field private static final METHOD_UserHappinessSignals_setHasVoiceLoggingInfo:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 29
    const-class v0, Lcom/android/com/android/common/userhappiness/UserHappinessSignals;

    const-string v1, "setHasVoiceLoggingInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 30
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 29
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/inputmethod/deprecated/compat/VoiceInputLoggerCompatUtils;->METHOD_UserHappinessSignals_setHasVoiceLoggingInfo:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHasVoiceLoggingInfoCompat(Z)V
    .registers 6
    .parameter "hasLoggingInfo"

    .prologue
    const/4 v4, 0x0

    .line 33
    sget-object v0, Lcom/android/inputmethod/deprecated/compat/VoiceInputLoggerCompatUtils;->METHOD_UserHappinessSignals_setHasVoiceLoggingInfo:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 33
    invoke-static {v4, v4, v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
