.class public Lcom/android/inputmethod/compat/VibratorCompatWrapper;
.super Ljava/lang/Object;
.source "VibratorCompatWrapper.java"


# static fields
.field private static final METHOD_hasVibrator:Ljava/lang/reflect/Method;

.field private static final sInstance:Lcom/android/inputmethod/compat/VibratorCompatWrapper;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const-class v0, Landroid/os/Vibrator;

    .line 26
    const-string v1, "hasVibrator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 25
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    .line 28
    new-instance v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    invoke-direct {v0}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    iget-object v0, v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_12

    .line 36
    sget-object v1, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    .line 37
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 36
    iput-object v0, v1, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/Vibrator;

    .line 39
    :cond_12
    sget-object v0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    return-object v0
.end method


# virtual methods
.method public hasVibrator()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_6

    .line 45
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public vibrate(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 50
    return-void
.end method
