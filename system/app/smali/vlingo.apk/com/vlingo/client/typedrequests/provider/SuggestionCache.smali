.class public Lcom/vlingo/client/typedrequests/provider/SuggestionCache;
.super Ljava/lang/Object;
.source "SuggestionCache.java"


# instance fields
.field private final CACHE_MAX_SIZE:I

.field private final PRUNE_SIZE:I

.field private hotlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private isDirty:Z

.field private queryCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private queryInsertOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x6

    iput v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->CACHE_MAX_SIZE:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->PRUNE_SIZE:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z

    .line 30
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->load()V

    .line 31
    return-void
.end method

.method private addSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "s"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->addSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;ZLjava/util/ArrayList;)V

    .line 98
    return-void
.end method

.method private addSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;ZLjava/util/ArrayList;)V
    .registers 7
    .parameter "s"
    .parameter "makeCopy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    const/4 v2, 0x1

    .line 101
    invoke-virtual {p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isCachable()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 102
    invoke-static {p3, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->hasSuggestion(Ljava/util/ArrayList;Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 105
    if-eqz p2, :cond_18

    .line 106
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    invoke-direct {v0, p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Lcom/vlingo/client/typedrequests/provider/Suggestion;)V

    .line 107
    .end local p1
    .local v0, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v0, v2}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->setFromCache(Z)V

    move-object p1, v0

    .line 109
    .end local v0           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .restart local p1
    :cond_18
    iput-boolean v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z

    .line 110
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1d
    return-void
.end method

.method private declared-synchronized load()V
    .registers 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->hotlist:Ljava/util/ArrayList;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 38
    monitor-exit p0

    return-void

    .line 34
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pruneList()V
    .registers 7

    .prologue
    .line 81
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 82
    .local v2, size:I
    const/4 v4, 0x6

    if-lt v2, v4, :cond_2d

    .line 85
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 89
    .end local v1           #s:Ljava/lang/String;
    :cond_27
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 92
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    return-void
.end method

.method private declared-synchronized save()V
    .registers 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z

    if-eqz v0, :cond_8

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 45
    :cond_8
    monitor-exit p0

    return-void

    .line 41
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, newSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->hotlist:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 55
    .local v2, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v2}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isCachable()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 56
    new-instance v3, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    invoke-direct {v3, v2}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Lcom/vlingo/client/typedrequests/provider/Suggestion;)V

    .line 57
    .end local v2           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .local v3, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->setFromCache(Z)V

    .line 58
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->hotlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .end local v3           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .restart local v2       #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    goto :goto_12

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    if-nez v1, :cond_47

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    :cond_47
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 66
    .restart local v2       #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-direct {p0, v2, v1}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->addSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;Ljava/util/ArrayList;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5b

    goto :goto_4b

    .line 50
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    .end local v2           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :catchall_5b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 68
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    :cond_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->isDirty:Z

    if-eqz v4, :cond_80

    .line 69
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 71
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_74
    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryInsertOrder:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->pruneList()V

    .line 75
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->save()V
    :try_end_80
    .catchall {:try_start_5e .. :try_end_80} :catchall_5b

    .line 78
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    :cond_80
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getSuggestions(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->hotlist:Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    .line 135
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 128
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->queryCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    check-cast v0, Ljava/util/ArrayList;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    .restart local v0       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    goto :goto_9

    .line 122
    .end local v0           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
