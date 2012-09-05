.class public Lcom/google/android/apps/books/net/TrafficStatsUtils;
.super Ljava/lang/Object;
.source "TrafficStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    }
.end annotation


# static fields
.field private static sApiAvailable:Z

.field private static sClearThreadStatsTagMethod:Ljava/lang/reflect/Method;

.field private static sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

.field private static sIncrementOpCountMethod:Ljava/lang/reflect/Method;

.field private static sInitialized:Z

.field private static sSetThreadStatsTagMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static clearThreadFlags()V
    .registers 5

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->isApiAvailable()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 109
    :try_start_6
    const-string v2, "TrafficStatsUtils"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 110
    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    .local v0, currentTag:Ljava/lang/Integer;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_45

    .line 112
    :cond_23
    const-string v2, "TrafficStatsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearThreadFlags expected non zero tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3b
    :goto_3b
    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sClearThreadStatsTagMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_44
    :goto_44
    return-void

    .line 114
    :cond_45
    const-string v2, "TrafficStatsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearThreadFlags called with current tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_5d} :catch_5e

    goto :goto_3b

    .line 118
    :catch_5e
    move-exception v1

    .line 120
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "TrafficStatsUtils"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 121
    const-string v2, "TrafficStatsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearThreadFlags exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private static getTag(Ljava/util/Set;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    const/4 v2, 0x0

    .line 169
    .local v2, value:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 170
    .local v0, flag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->getFlagValue()I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_5

    .line 173
    .end local v0           #flag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    :cond_17
    return v2
.end method

.method public static incrementOperationCount()V
    .registers 9

    .prologue
    const/4 v8, 0x6

    .line 78
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->isApiAvailable()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 80
    :try_start_7
    sget-object v3, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 81
    .local v0, currentTag:Ljava/lang/Integer;
    if-eqz v0, :cond_53

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, intCurrentTag:I
    const-string v3, "TrafficStatsUtils"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 85
    const-string v3, "TrafficStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incrementOperationCount called with current int tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3a
    sget-object v3, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sIncrementOpCountMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v1           #intCurrentTag:I
    :cond_52
    :goto_52
    return-void

    .line 90
    :cond_53
    const-string v3, "TrafficStatsUtils"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 91
    const-string v3, "TrafficStatsUtils"

    const-string v4, " incrementOperationCount: null currentTag"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_63} :catch_64

    goto :goto_52

    .line 94
    :catch_64
    move-exception v2

    .line 96
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "TrafficStatsUtils"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 97
    const-string v3, "TrafficStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private static declared-synchronized isApiAvailable()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    const-class v4, Lcom/google/android/apps/books/net/TrafficStatsUtils;

    monitor-enter v4

    :try_start_5
    sget-boolean v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sInitialized:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_8f

    if-nez v5, :cond_84

    .line 138
    :try_start_9
    const-string v5, "android.net.TrafficStats"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, statsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_5e

    .line 140
    const-string v5, "getThreadStatsTag"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    .line 141
    const-string v5, "clearThreadStatsTag"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sClearThreadStatsTagMethod:Ljava/lang/reflect/Method;

    .line 142
    const-string v5, "setThreadStatsTag"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sSetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    .line 143
    const-string v5, "incrementOperationCount"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sIncrementOpCountMethod:Ljava/lang/reflect/Method;

    .line 147
    sget-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_88

    sget-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sClearThreadStatsTagMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_88

    sget-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sSetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_88

    sget-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sIncrementOpCountMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_88

    :goto_5c
    sput-boolean v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sApiAvailable:Z
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_8f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5e} :catch_8a

    .line 157
    :cond_5e
    :goto_5e
    :try_start_5e
    const-string v2, "TrafficStatsUtils"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 158
    const-string v2, "TrafficStatsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats available: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sApiAvailable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_81
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sInitialized:Z

    .line 163
    :cond_84
    sget-boolean v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sApiAvailable:Z
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_8f

    monitor-exit v4

    return v2

    :cond_88
    move v2, v3

    .line 147
    goto :goto_5c

    .line 152
    :catch_8a
    move-exception v1

    .line 154
    .local v1, t:Ljava/lang/Throwable;
    const/4 v2, 0x0

    :try_start_8c
    sput-boolean v2, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sApiAvailable:Z
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_8f

    goto :goto_5e

    .line 136
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_8f
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static setThreadFlag(Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 44
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlags(Ljava/util/EnumSet;)V

    .line 45
    return-void
.end method

.method public static setThreadFlags(Ljava/util/EnumSet;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, flags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->isApiAvailable()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 52
    invoke-static {p0}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->getTag(Ljava/util/Set;)I

    move-result v2

    .line 54
    .local v2, tag:I
    :try_start_a
    const-string v3, "TrafficStatsUtils"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 55
    sget-object v3, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sGetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 56
    .local v0, currentTag:Ljava/lang/Integer;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5a

    .line 58
    :cond_27
    const-string v3, "TrafficStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setThreadFlags called with int tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Current tag is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0           #currentTag:Ljava/lang/Integer;
    :cond_49
    :goto_49
    sget-object v3, Lcom/google/android/apps/books/net/TrafficStatsUtils;->sSetThreadStatsTagMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v2           #tag:I
    :cond_59
    :goto_59
    return-void

    .line 61
    .restart local v0       #currentTag:Ljava/lang/Integer;
    .restart local v2       #tag:I
    :cond_5a
    const-string v3, "TrafficStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setThreadFlags called with int tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_72} :catch_73

    goto :goto_49

    .line 65
    .end local v0           #currentTag:Ljava/lang/Integer;
    :catch_73
    move-exception v1

    .line 67
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "TrafficStatsUtils"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 68
    const-string v3, "TrafficStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setThreadFlags exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method
