.class public Lcom/google/android/apps/unveil/hardware/VibratorProxy;
.super Ljava/lang/Object;
.source "VibratorProxy.java"


# static fields
.field public static final SHORT_VIBRATE_MS:I = 0x64

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_7

    .line 56
    :cond_6
    return-void

    .line 37
    :cond_7
    const-string v6, "vibrator"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrator:Landroid/os/Vibrator;

    .line 40
    const-class v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1a
    if-ge v3, v4, :cond_6

    aget-object v5, v1, v3

    .line 42
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hasVibrator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 44
    :try_start_2a
    iget-object v6, p0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrator:Landroid/os/Vibrator;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 45
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrator:Landroid/os/Vibrator;
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_3e} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_3e} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_3e} :catch_57

    .line 41
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 47
    :catch_41
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Error creating vibrator proxy!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    .line 49
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4c
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Error creating vibrator proxy!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    .line 51
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_57
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Error creating vibrator proxy!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e
.end method


# virtual methods
.method public hasVibrator()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public vibrate(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 69
    :cond_b
    return-void
.end method
