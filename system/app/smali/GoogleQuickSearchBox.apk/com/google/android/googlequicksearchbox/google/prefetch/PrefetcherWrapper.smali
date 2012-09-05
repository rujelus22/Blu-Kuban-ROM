.class public Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;
.super Ljava/lang/Object;
.source "PrefetcherWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "newQuery"

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onQueryChanged(Ljava/lang/String;)V

    .line 72
    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStart()V

    .line 55
    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_f

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStop()V

    .line 64
    :cond_f
    return-void
.end method

.method public onSuggestionsDone()V
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onSuggestionsDone()V

    .line 89
    :cond_c
    return-void
.end method

.method public declared-synchronized performSearch(Ljava/lang/String;)Z
    .registers 3
    .parameter "query"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->performSearch(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 96
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 93
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prefetch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->prefetch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 105
    :cond_a
    monitor-exit p0

    return-void

    .line 102
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 3
    .parameter "appSearchData"

    .prologue
    .line 76
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 77
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mAppSearchData:Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 81
    :cond_e
    return-void
.end method

.method public declared-synchronized setWrappedPrefetcher(Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;)V
    .registers 4
    .parameter "prefetcher"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 39
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_1a

    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mAppSearchData:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 42
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    if-eqz v0, :cond_1a

    .line 43
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStart()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 46
    :cond_1a
    monitor-exit p0

    return-void

    .line 38
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
