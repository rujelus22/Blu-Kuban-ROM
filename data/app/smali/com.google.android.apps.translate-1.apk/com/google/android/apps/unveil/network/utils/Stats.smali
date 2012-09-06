.class public Lcom/google/android/apps/unveil/network/utils/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private static setThreadTag:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static getSetThreadTagMethod()Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16

    .line 72
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag:Ljava/lang/reflect/Method;

    .line 74
    :cond_16
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static isTaggingSupported()Z
    .registers 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static declared-synchronized setThreadTag(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)V
    .registers 8
    .parameter "tag"

    .prologue
    .line 57
    const-class v2, Lcom/google/android/apps/unveil/network/utils/Stats;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/google/android/apps/unveil/network/utils/Stats;->isTaggingSupported()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result v1

    if-nez v1, :cond_b

    .line 66
    :goto_9
    monitor-exit v2

    return-void

    .line 62
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/apps/unveil/network/utils/Stats;->getSetThreadTagMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    #getter for: Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->id:I
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->access$000(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_9

    .line 63
    :catch_22
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Unexpected reflection failure"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    goto :goto_9

    .line 57
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
