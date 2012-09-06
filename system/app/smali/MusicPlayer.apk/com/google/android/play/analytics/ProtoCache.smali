.class Lcom/google/android/play/analytics/ProtoCache;
.super Ljava/lang/Object;
.source "ProtoCache.java"


# static fields
.field private static mEventCache:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeyValueCache:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProtoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/play/analytics/ProtoCache$1;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ProtoCache$1;-><init>()V

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    .line 38
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    .line 39
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->sProtoComparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainEvent()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .registers 3

    .prologue
    .line 42
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    monitor-enter v2

    .line 43
    :try_start_3
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 44
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 45
    .local v0, event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v2

    .line 52
    :goto_19
    return-object v0

    .line 48
    .end local v0           #event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 51
    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;-><init>()V

    .line 52
    .restart local v0       #event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    goto :goto_19

    .line 48
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static obtainKeyValue()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    .registers 3

    .prologue
    .line 76
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    monitor-enter v2

    .line 77
    :try_start_3
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 78
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    .line 79
    .local v0, keyValue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v2

    .line 84
    .end local v0           #keyValue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    :goto_19
    return-object v0

    .line 82
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 84
    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;-><init>()V

    goto :goto_19

    .line 82
    .restart local v0       #keyValue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    .line 64
    .local v1, keyvalue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;)V

    goto :goto_8

    .line 66
    .end local v1           #keyvalue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->clear()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 68
    sget-object v3, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    monitor-enter v3

    .line 69
    :try_start_1e
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_2d

    .line 70
    sget-object v2, Lcom/google/android/play/analytics/ProtoCache;->mEventCache:Ljava/util/TreeSet;

    invoke-virtual {v2, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2d
    monitor-exit v3

    .line 73
    return-void

    .line 72
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public static recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->clear()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    .line 90
    sget-object v1, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    monitor-enter v1

    .line 91
    :try_start_6
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_15

    .line 92
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->mKeyValueCache:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_15
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getLogEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 99
    .local v0, event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    invoke-static {v0}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    goto :goto_8

    .line 101
    .end local v0           #event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    :cond_18
    return-void
.end method
