.class public final Lcom/google/android/apps/plus/iu/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final sGetLongMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, m:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1d

    move-result-object v1

    .line 29
    :cond_1a
    :goto_1a
    sput-object v1, Lcom/google/android/apps/plus/iu/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

    .line 30
    return-void

    .line 24
    :catch_1d
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SystemProperties"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 26
    const-string v2, "SystemProperties"

    const-string v3, "initialize error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 9
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 37
    :try_start_0
    sget-object v1, Lcom/google/android/apps/plus/iu/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    .line 38
    sget-object v1, Lcom/google/android/apps/plus/iu/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-wide p1

    .line 45
    .end local p1
    :cond_1e
    :goto_1e
    return-wide p1

    .line 40
    .restart local p1
    :catch_1f
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SystemProperties"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 42
    const-string v1, "SystemProperties"

    const-string v2, "get error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method
