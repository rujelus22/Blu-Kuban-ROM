.class public Lcom/vlingo/client/android/core/http/AndroidHttpManager;
.super Lcom/vlingo/client/core/http/HttpManager;
.source "AndroidHttpManager.java"


# static fields
.field private static s_HttpManager:Lcom/vlingo/client/android/core/http/AndroidHttpManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/http/AndroidHttpManager;->s_HttpManager:Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/android/core/http/AndroidHttpManager;
    .registers 2

    .prologue
    .line 16
    const-class v1, Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/http/AndroidHttpManager;->s_HttpManager:Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    if-nez v0, :cond_e

    .line 17
    new-instance v0, Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/http/AndroidHttpManager;-><init>()V

    sput-object v0, Lcom/vlingo/client/android/core/http/AndroidHttpManager;->s_HttpManager:Lcom/vlingo/client/android/core/http/AndroidHttpManager;

    .line 18
    :cond_e
    sget-object v0, Lcom/vlingo/client/android/core/http/AndroidHttpManager;->s_HttpManager:Lcom/vlingo/client/android/core/http/AndroidHttpManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
