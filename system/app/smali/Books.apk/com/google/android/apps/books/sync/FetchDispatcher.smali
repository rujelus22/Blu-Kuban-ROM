.class public Lcom/google/android/apps/books/sync/FetchDispatcher;
.super Ljava/lang/Object;
.source "FetchDispatcher.java"


# instance fields
.field private final mFetcher:Lcom/google/android/apps/books/sync/Fetcher;

.field private final mUriToLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/Fetcher;)V
    .registers 3
    .parameter "fetcher"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    .line 44
    const-string v0, "missing fetcher"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/Fetcher;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/Fetcher;

    .line 45
    return-void
.end method


# virtual methods
.method public ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z
    .registers 11
    .parameter "uri"
    .parameter "account"
    .parameter "expectedMatch"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 63
    .local v0, match:I
    if-ne v0, p3, :cond_7f

    const/4 v3, 0x1

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " matches to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iget-object v4, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    monitor-enter v4

    .line 69
    :try_start_34
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, uriLock:Ljava/lang/Object;
    if-nez v2, :cond_46

    .line 71
    new-instance v2, Ljava/lang/Object;

    .end local v2           #uriLock:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 72
    .restart local v2       #uriLock:Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_81

    .line 78
    monitor-enter v2

    .line 81
    if-nez p4, :cond_84

    :try_start_4a
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/Fetcher;

    invoke-interface {v3, p2, p1}, Lcom/google/android/apps/books/sync/Fetcher;->isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 82
    const-string v3, "FetchDispatcher"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 83
    const-string v3, "FetchDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local hit for Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_73
    const/4 v1, 0x0

    .line 91
    .local v1, returnValue:Z
    :goto_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_8b

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    monitor-enter v4

    .line 97
    :try_start_78
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriToLock:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_8e

    .line 100
    return v1

    .line 63
    .end local v1           #returnValue:Z
    .end local v2           #uriLock:Ljava/lang/Object;
    :cond_7f
    const/4 v3, 0x0

    goto :goto_7

    .line 74
    :catchall_81
    move-exception v3

    :try_start_82
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v3

    .line 88
    .restart local v2       #uriLock:Ljava/lang/Object;
    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/Fetcher;

    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/books/sync/Fetcher;->fetch(Landroid/net/Uri;Landroid/accounts/Account;)V

    .line 89
    const/4 v1, 0x1

    .restart local v1       #returnValue:Z
    goto :goto_74

    .line 91
    .end local v1           #returnValue:Z
    :catchall_8b
    move-exception v3

    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_8b

    throw v3

    .line 98
    .restart local v1       #returnValue:Z
    :catchall_8e
    move-exception v3

    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v3
.end method
