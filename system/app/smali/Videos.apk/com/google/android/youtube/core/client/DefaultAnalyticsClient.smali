.class public Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;
.super Ljava/lang/Object;
.source "DefaultAnalyticsClient.java"

# interfaces
.implements Lcom/google/android/youtube/core/client/AnalyticsClient;


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final mainThread:Ljava/lang/Thread;

.field private final tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .parameter "context"
    .parameter "executor"
    .parameter "deviceType"
    .parameter "appVersion"
    .parameter "propertyId"
    .parameter "updateSeconds"

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .registers 15
    .parameter "context"
    .parameter "executor"
    .parameter "deviceType"
    .parameter "appVersion"
    .parameter "propertyId"
    .parameter "updateSeconds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p7, customVars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v2, "executor can\'t be null"

    invoke-static {p2, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->executor:Ljava/util/concurrent/Executor;

    .line 48
    const-string v2, "appVersion can\'t be null"

    invoke-static {p4, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;

    .line 50
    const-string v2, "deviceType can\'t be null"

    invoke-static {p3, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    const-string v2, "propertyId can\'t be null"

    invoke-static {p5, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    if-lez p6, :cond_86

    move v2, v3

    :goto_25
    const-string v5, "updateSeconds must be > 0"

    invoke-static {v2, v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v5, 0x4

    if-gt v2, v5, :cond_32

    move v4, v3

    :cond_32
    const-string v2, "up to 4 custom vars are allowed"

    invoke-static {v4, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 56
    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2, p3, p4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setProductVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2, p5, p6, p1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v4, "Device"

    invoke-virtual {v2, v3, v4, p3, v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 59
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_56

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_86
    move v2, v4

    .line 52
    goto :goto_25

    .line 66
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_88
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->mainThread:Ljava/lang/Thread;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 87
    const-string v0, "event [version=%s, action=%s, label=%s, value=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 101
    :goto_24
    return-void

    .line 92
    :cond_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->mainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_38

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$1;-><init>(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 99
    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24
.end method

.method public trackPage(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 104
    const-string v1, "page [version=%s, name=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->appVersion:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 118
    :goto_1a
    return-void

    .line 108
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, slashName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->mainThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_41

    .line 110
    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient$2;-><init>(Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 116
    :cond_41
    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto :goto_1a
.end method
