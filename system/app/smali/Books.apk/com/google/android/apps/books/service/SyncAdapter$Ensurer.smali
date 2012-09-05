.class abstract Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Ensurer"
.end annotation

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
.field private final mSyncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

.field private final mSyncResult:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 4
    .parameter
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->mSyncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    .line 1464
    iput-object p3, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->mSyncResult:Landroid/content/SyncResult;

    .line 1465
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
    .line 1457
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->ensure()V

    .line 1528
    const/4 v0, 0x0

    return-object v0
.end method

.method public ensure()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    invoke-static {v3}, Lcom/google/android/apps/books/service/SyncAdapter;->access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1485
    .local v1, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1487
    :try_start_d
    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->mSyncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    invoke-virtual {v3}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->check()V

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->ensureLocked()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2d
    .catch Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException; {:try_start_d .. :try_end_15} :catch_19
    .catch Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException; {:try_start_d .. :try_end_15} :catch_32
    .catch Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException; {:try_start_d .. :try_end_15} :catch_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_7f

    .line 1519
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1521
    :goto_18
    return-void

    .line 1489
    :catch_19
    move-exception v0

    .line 1492
    .local v0, e:Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
    :try_start_1a
    const-string v3, "BooksSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1493
    const-string v3, "BooksSync"

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2d

    .line 1519
    .end local v0           #e:Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
    :catchall_2d
    move-exception v3

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 1496
    :catch_32
    move-exception v0

    .line 1497
    .local v0, e:Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
    :try_start_33
    const-string v3, "BooksSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1498
    const-string v3, "BooksSync"

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_45
    throw v0

    .line 1501
    .end local v0           #e:Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
    :catch_46
    move-exception v0

    .line 1502
    .local v0, e:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    const-string v3, "BooksSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1503
    const-string v3, "BooksSync"

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_59
    throw v0

    .line 1506
    .end local v0           #e:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    :catch_5a
    move-exception v0

    .line 1507
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BooksSync"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1508
    const-string v3, "BooksSync"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    :cond_6b
    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1511
    .local v2, stats:Landroid/content/SyncStats;
    monitor-enter v2
    :try_end_70
    .catchall {:try_start_33 .. :try_end_70} :catchall_2d

    .line 1512
    :try_start_70
    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1513
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_7c

    .line 1519
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    .line 1513
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v3

    .line 1514
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stats:Landroid/content/SyncStats;
    :catch_7f
    move-exception v0

    .line 1515
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BooksSync"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1516
    const-string v3, "BooksSync"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_7e .. :try_end_90} :catchall_2d

    .line 1519
    :cond_90
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18
.end method

.method protected abstract ensureLocked()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
