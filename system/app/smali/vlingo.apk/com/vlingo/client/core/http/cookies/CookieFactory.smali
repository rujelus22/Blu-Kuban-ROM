.class public Lcom/vlingo/client/core/http/cookies/CookieFactory;
.super Ljava/lang/Object;
.source "CookieFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 34
    const-class v1, Lcom/vlingo/client/core/http/cookies/CookieFactory;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/core/http/cookies/CookieJarManagerSingleton;->getInstance()Lcom/vlingo/client/core/http/cookies/CookieJarManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/vlingo/client/core/http/cookies/CookieJarManager;->createCookie(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
