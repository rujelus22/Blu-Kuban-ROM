.class public final Lcom/dropbox/android/provider/p;
.super Lcom/dropbox/android/util/aL;
.source "panda.py"


# instance fields
.field private final a:Landroid/database/ContentObservable;

.field private b:Landroid/database/ContentObservable;

.field private c:Landroid/database/ContentObserver;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/aL;-><init>(Landroid/database/Cursor;)V

    .line 13
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/provider/p;->a:Landroid/database/ContentObservable;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/provider/p;->d:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/ContentObservable;)V
    .registers 5
    .parameter

    .prologue
    .line 53
    iget-object v1, p0, Lcom/dropbox/android/provider/p;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    if-eqz v0, :cond_12

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "We don\'t support resetting notifcation sourcees yet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 57
    :cond_12
    :try_start_12
    new-instance v0, Lcom/dropbox/android/provider/q;

    invoke-direct {v0, p0}, Lcom/dropbox/android/provider/q;-><init>(Lcom/dropbox/android/provider/p;)V

    iput-object v0, p0, Lcom/dropbox/android/provider/p;->c:Landroid/database/ContentObserver;

    .line 58
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 59
    iput-object p1, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    .line 60
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_f

    .line 61
    return-void
.end method

.method protected final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 47
    iget-object v1, p0, Lcom/dropbox/android/provider/p;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->a:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final close()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    if-eqz v0, :cond_e

    .line 35
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    iget-object v1, p0, Lcom/dropbox/android/provider/p;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/provider/p;->b:Landroid/database/ContentObservable;

    .line 39
    :cond_e
    invoke-super {p0}, Lcom/dropbox/android/util/aL;->close()V

    .line 40
    return-void
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->a:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 22
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    return-void
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 28
    iget-object v0, p0, Lcom/dropbox/android/provider/p;->a:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
