.class Lcom/google/android/apps/googlevoice/SetForegroundHelper;
.super Ljava/lang/Object;
.source "SetForegroundHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static invokeSetForeground(Landroid/app/Service;Z)V
    .registers 11
    .parameter "service"
    .parameter "isForeground"

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setForeground"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 26
    .local v2, setForegroundMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 27
    .local v1, setForegroundArgs:[Ljava/lang/Object;
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_27

    .line 33
    .end local v1           #setForegroundArgs:[Ljava/lang/Object;
    .end local v2           #setForegroundMethod:Ljava/lang/reflect/Method;
    :goto_1f
    return-void

    .line 28
    :catch_20
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "No setForeground method"

    invoke-static {v4, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 30
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_27
    move-exception v3

    .line 31
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Failed to invoke setForeground"

    invoke-static {v4, v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
