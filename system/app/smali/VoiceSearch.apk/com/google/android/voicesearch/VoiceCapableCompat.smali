.class public Lcom/google/android/voicesearch/VoiceCapableCompat;
.super Ljava/lang/Object;
.source "VoiceCapableCompat.java"


# static fields
.field private static final sIsVoiceCapableMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/android/voicesearch/VoiceCapableCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/VoiceCapableCompat;->sIsVoiceCapableMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 34
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 35
    const-string v1, "isVoiceCapable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 39
    :goto_b
    return-object v0

    .line 36
    :catch_c
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isVoiceCapable(Landroid/telephony/TelephonyManager;)Z
    .registers 3
    .parameter "manager"

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/voicesearch/VoiceCapableCompat;->sIsVoiceCapableMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 45
    :try_start_4
    sget-object v1, Lcom/google/android/voicesearch/VoiceCapableCompat;->sIsVoiceCapableMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_12} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_12} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_12} :catch_14

    move-result v0

    .line 54
    :goto_13
    return v0

    .line 50
    :catch_14
    move-exception v0

    .line 54
    :cond_15
    :goto_15
    const/4 v0, 0x1

    goto :goto_13

    .line 48
    :catch_17
    move-exception v0

    goto :goto_15

    .line 46
    :catch_19
    move-exception v0

    goto :goto_15
.end method
