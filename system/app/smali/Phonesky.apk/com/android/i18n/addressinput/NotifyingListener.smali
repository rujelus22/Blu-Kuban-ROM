.class public Lcom/android/i18n/addressinput/NotifyingListener;
.super Ljava/lang/Object;
.source "NotifyingListener.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# instance fields
.field private mDone:Z

.field private mSleeper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "sleeper"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    .line 29
    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public dataLoadingEnd()V
    .registers 3

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    .line 39
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_f

    .line 40
    iget-object v1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_8
    iget-object v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 42
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 43
    return-void

    .line 39
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0

    .line 42
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method waitLoadingEnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 52
    :goto_6
    return-void

    .line 48
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_15

    .line 49
    iget-object v1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_b
    iget-object v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 51
    monitor-exit v1

    goto :goto_6

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0

    .line 48
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
