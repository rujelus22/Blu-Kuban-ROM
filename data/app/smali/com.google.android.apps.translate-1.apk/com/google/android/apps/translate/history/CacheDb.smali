.class public Lcom/google/android/apps/translate/history/CacheDb;
.super Ljava/lang/Object;
.source "CacheDb.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "cachedb"

.field private static final MAX_CACHE_LIFE_MILLIS:J = 0x927c0L

.field private static final MAX_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "CacheDb"

.field private static sInstance:Lcom/google/android/apps/translate/history/BaseDb;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 39
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->add(Lcom/google/android/apps/translate/history/Entry;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 41
    return-void
.end method

.method public static contains(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)Z
    .registers 5
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 45
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->exists(Lcom/google/android/apps/translate/history/Entry;)Z

    move-result v1

    .line 46
    .local v1, exists:Z
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 47
    return v1
.end method

.method public static flush(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "sync"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 104
    return-void
.end method

.method public static getAll(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .parameter "context"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 79
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(I)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 81
    return-object v0
.end method

.method public static getAll(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 86
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 88
    return-object v0
.end method

.method public static getAllByATime(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 65
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 67
    return-object v0
.end method

.method public static getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 72
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 74
    return-object v0
.end method

.method public static declared-synchronized getCachedEntry(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;
    .registers 14
    .parameter "cacheDb"
    .parameter "from"
    .parameter "to"
    .parameter "inputText"

    .prologue
    .line 118
    const-class v5, Lcom/google/android/apps/translate/history/CacheDb;

    monitor-enter v5

    :try_start_3
    new-instance v2, Lcom/google/android/apps/translate/history/Entry;

    const-string v4, ""

    invoke-direct {v2, p1, p2, p3, v4}, Lcom/google/android/apps/translate/history/Entry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v2, cacheLookupEntry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/history/BaseDb;->get(Lcom/google/android/apps/translate/history/Entry;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v3

    .line 120
    .local v3, cacheResult:Lcom/google/android/apps/translate/history/Entry;
    if-eqz v3, :cond_58

    .line 121
    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/Entry;->getAccessedTime()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/apps/translate/history/Entry;->getAccessedTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 122
    .local v0, ageMillis:J
    const-wide/32 v6, 0x927c0

    cmp-long v4, v0, v6

    if-gez v4, :cond_3e

    .line 123
    const-string v4, "CacheDb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache hit. ageMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/history/BaseDb;->updateLastAccessed(Lcom/google/android/apps/translate/history/Entry;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_60

    .line 132
    .end local v0           #ageMillis:J
    .end local v3           #cacheResult:Lcom/google/android/apps/translate/history/Entry;
    :goto_3c
    monitor-exit v5

    return-object v3

    .line 127
    .restart local v0       #ageMillis:J
    .restart local v3       #cacheResult:Lcom/google/android/apps/translate/history/Entry;
    :cond_3e
    :try_start_3e
    const-string v4, "CacheDb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache too old. ageMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0           #ageMillis:J
    :goto_56
    const/4 v3, 0x0

    goto :goto_3c

    .line 130
    :cond_58
    const-string v4, "CacheDb"

    const-string v6, "cache NOT hit."

    invoke-static {v4, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_60

    goto :goto_56

    .line 118
    .end local v2           #cacheLookupEntry:Lcom/google/android/apps/translate/history/Entry;
    .end local v3           #cacheResult:Lcom/google/android/apps/translate/history/Entry;
    :catchall_60
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 6
    .parameter "context"

    .prologue
    .line 107
    const-class v1, Lcom/google/android/apps/translate/history/CacheDb;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/translate/history/CacheDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;

    if-nez v0, :cond_13

    .line 108
    new-instance v0, Lcom/google/android/apps/translate/history/BaseDb;

    const-string v2, "cachedb"

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/google/android/apps/translate/history/BaseDb;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/apps/translate/history/CacheDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;

    .line 110
    :cond_13
    sget-object v0, Lcom/google/android/apps/translate/history/CacheDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLastModifiedTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 93
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->getLastModifiedTime()J

    move-result-wide v1

    .line 94
    .local v1, time:J
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 95
    return-wide v1
.end method

.method public static getRawCount(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 58
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseDb;->getRawCount()I

    move-result v0

    .line 59
    .local v0, count:I
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 60
    return v0
.end method

.method public static open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "context"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->open()Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 52
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->remove(Lcom/google/android/apps/translate/history/Entry;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 54
    return-void
.end method
