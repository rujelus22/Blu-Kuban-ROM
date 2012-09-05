.class public abstract Lcom/google/android/music/sync/common/UpstreamReader;
.super Ljava/lang/Object;
.source "UpstreamReader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Ljava/lang/String;)V
    .registers 3
    .parameter "queue"
    .parameter "logTag"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mTag:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/UpstreamReader;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, shouldBail:Z
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/UpstreamReader;->fillQueue()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_36
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_12

    .line 47
    if-eqz v2, :cond_b

    .line 48
    iget-object v3, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 51
    :cond_b
    iget-object v3, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->close()V

    .line 53
    const/4 v3, 0x0

    return-object v3

    .line 40
    :catch_12
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    .line 42
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream reader thread threw an unknown error.  Bailing. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, exitMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v3, v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_36

    .line 47
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #exitMsg:Ljava/lang/String;
    :catchall_36
    move-exception v3

    if-eqz v2, :cond_3e

    .line 48
    iget-object v4, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 51
    :cond_3e
    iget-object v4, p0, Lcom/google/android/music/sync/common/UpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->close()V

    throw v3
.end method

.method public abstract fillQueue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method
