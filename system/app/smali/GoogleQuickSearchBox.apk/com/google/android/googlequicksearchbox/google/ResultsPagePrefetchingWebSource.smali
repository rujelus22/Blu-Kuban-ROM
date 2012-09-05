.class public Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;
.super Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;
.source "ResultsPagePrefetchingWebSource.java"


# instance fields
.field private final mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V
    .registers 3
    .parameter "app"
    .parameter "wrapped"

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 32
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;->considerPrefetch(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method private declared-synchronized considerPrefetch(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .registers 5
    .parameter "suggestions"

    .prologue
    .line 54
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29

    move-result v2

    if-nez v2, :cond_b

    .line 63
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 57
    :cond_b
    :try_start_b
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 58
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->shouldPrefetch()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 59
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;->doPrefetch(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_29

    goto :goto_9

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private doPrefetch(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .registers 5
    .parameter "userQuery"
    .parameter "s"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->prefetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .registers 3
    .parameter "query"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 38
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;->considerPrefetch(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 39
    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .registers 4
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource$1;-><init>(Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 50
    .local v0, fetchingConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-super {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 51
    return-void
.end method
