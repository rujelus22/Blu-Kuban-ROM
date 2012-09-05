.class public Lcom/swype/android/compat/SetComposingRegionHandler;
.super Ljava/lang/Object;
.source "SetComposingRegionHandler.java"


# static fields
.field protected static final InputConnection_setComposingRegion:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 23
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14} :catch_18

    move-result-object v0

    .line 29
    :goto_15
    sput-object v0, Lcom/swype/android/compat/SetComposingRegionHandler;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    .line 30
    return-void

    .line 27
    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static invokeSetComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 38
    :try_start_1
    sget-object v0, Lcom/swype/android/compat/SetComposingRegionHandler;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_38

    move-result v0

    .line 52
    :goto_1e
    return v0

    .line 39
    :catch_1f
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 42
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2b

    .line 43
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 44
    :cond_2b
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_32

    .line 45
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 48
    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_38
    move-exception v0

    .line 51
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v4

    .line 52
    goto :goto_1e
.end method

.method public static setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .registers 4
    .parameter "ic"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 68
    sget-object v0, Lcom/swype/android/compat/SetComposingRegionHandler;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 70
    invoke-static {p0, p1, p2}, Lcom/swype/android/compat/SetComposingRegionHandler;->invokeSetComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v0

    .line 73
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
