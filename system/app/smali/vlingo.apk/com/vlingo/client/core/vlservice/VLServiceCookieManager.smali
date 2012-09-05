.class public abstract Lcom/vlingo/client/core/vlservice/VLServiceCookieManager;
.super Ljava/lang/Object;
.source "VLServiceCookieManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/http/cookies/CookieJarManager;
    .registers 2

    .prologue
    .line 18
    const-class v0, Lcom/vlingo/client/core/vlservice/VLServiceCookieManager;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/core/http/cookies/CookieJarManagerSingleton;->getInstance()Lcom/vlingo/client/core/http/cookies/CookieJarManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method
