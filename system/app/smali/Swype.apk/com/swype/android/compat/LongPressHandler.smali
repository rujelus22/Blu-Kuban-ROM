.class public Lcom/swype/android/compat/LongPressHandler;
.super Ljava/lang/Object;
.source "LongPressHandler.java"


# static fields
.field protected static final KeyEvent_isLongPress:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    :try_start_0
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "isLongPress"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_e

    move-result-object v0

    .line 29
    :goto_b
    sput-object v0, Lcom/swype/android/compat/LongPressHandler;->KeyEvent_isLongPress:Ljava/lang/reflect/Method;

    .line 30
    return-void

    .line 27
    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static invokeIsLongPress(Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 38
    :try_start_1
    sget-object v3, Lcom/swype/android/compat/LongPressHandler;->KeyEvent_isLongPress:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_2b

    move-result v3

    .line 52
    :goto_10
    return v3

    .line 39
    :catch_11
    move-exception v3

    move-object v2, v3

    .line 41
    .local v2, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 42
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1e

    .line 43
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 44
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1e
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_25

    .line 45
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 48
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_25
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 50
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_2b
    move-exception v3

    move-object v1, v3

    .line 51
    .local v1, ie:Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v6

    .line 52
    goto :goto_10
.end method

.method public static isLongPress(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter "event"

    .prologue
    .line 65
    sget-object v0, Lcom/swype/android/compat/LongPressHandler;->KeyEvent_isLongPress:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 67
    invoke-static {p0}, Lcom/swype/android/compat/LongPressHandler;->invokeIsLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 70
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
