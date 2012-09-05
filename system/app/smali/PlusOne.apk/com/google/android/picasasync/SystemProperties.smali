.class public final Lcom/google/android/picasasync/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final sGetLongMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLong"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1d

    move-result-object v0

    .line 26
    :goto_1a
    sput-object v0, Lcom/google/android/picasasync/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

    .line 27
    return-void

    .line 23
    :catch_1d
    move-exception v1

    .line 24
    const-string v2, "SystemProperties"

    const-string v3, "initialize error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 9
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/google/android/picasasync/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    .line 35
    sget-object v1, Lcom/google/android/picasasync/SystemProperties;->sGetLongMethod:Ljava/lang/reflect/Method;

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

    .line 40
    .end local p1
    :cond_1e
    :goto_1e
    return-wide p1

    .line 37
    .restart local p1
    :catch_1f
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SystemProperties"

    const-string v2, "get error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method
