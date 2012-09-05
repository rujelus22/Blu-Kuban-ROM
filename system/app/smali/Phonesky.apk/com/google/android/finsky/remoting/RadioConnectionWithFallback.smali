.class public Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;
.super Ljava/lang/Object;
.source "RadioConnectionWithFallback.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnection;


# instance fields
.field private final mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

.field private final mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

.field private mUseFallback:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/RadioConnection;Lcom/google/android/finsky/remoting/RadioConnection;)V
    .registers 4
    .parameter "primary"
    .parameter "fallback"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    .line 16
    iput-object p2, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    .line 18
    return-void
.end method


# virtual methods
.method public ensureRouteToHost(Ljava/lang/String;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    if-eqz v0, :cond_a

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V

    .line 47
    :goto_9
    return-void

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V
    :try_end_5
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 29
    :goto_5
    return-void

    .line 24
    :catch_6
    move-exception v0

    .line 26
    .local v0, e:Lcom/google/android/finsky/remoting/RadioConnectionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    .line 27
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V

    goto :goto_5
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    if-eqz v0, :cond_a

    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V

    .line 38
    :goto_9
    return-void

    .line 36
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V

    goto :goto_9
.end method
