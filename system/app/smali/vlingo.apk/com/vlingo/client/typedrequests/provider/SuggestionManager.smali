.class public Lcom/vlingo/client/typedrequests/provider/SuggestionManager;
.super Ljava/lang/Object;
.source "SuggestionManager.java"


# static fields
.field public static final EXPANSION_POSTFIX:Ljava/lang/String; = "-Expansion"


# instance fields
.field private final httpClient:Lcom/vlingo/client/util/SimpleHttpClient;

.field private final recentContactsCache:Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

.field private final suggestionCache:Lcom/vlingo/client/typedrequests/provider/SuggestionCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

    invoke-direct {v0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->recentContactsCache:Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

    .line 35
    new-instance v0, Lcom/vlingo/client/util/SimpleHttpClient;

    invoke-direct {v0}, Lcom/vlingo/client/util/SimpleHttpClient;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->httpClient:Lcom/vlingo/client/util/SimpleHttpClient;

    .line 36
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;

    invoke-direct {v0}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->suggestionCache:Lcom/vlingo/client/typedrequests/provider/SuggestionCache;

    .line 37
    return-void
.end method

.method public static hasSuggestion(Ljava/util/ArrayList;Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z
    .registers 5
    .parameter
    .parameter "sugg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 45
    .local v1, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v1, p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isSame(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    const/4 v2, 0x1

    .line 49
    .end local v1           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method


# virtual methods
.method public expandSuggestions(Ljava/util/ArrayList;Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 5
    .parameter
    .parameter "context"
    .parameter "maxExpansions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->expandSuggestions(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public expandSuggestions(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 21
    .parameter
    .parameter "cachedQuery"
    .parameter "context"
    .parameter "maxExpansions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 84
    .local v11, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->hasContactVariable()Z

    move-result v14

    if-eqz v14, :cond_be

    .line 86
    const-string v14, "contact"

    invoke-virtual {v11, v14}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, query:Ljava/lang/String;
    if-nez v9, :cond_28

    .line 88
    const-string v9, ""

    .line 89
    :cond_28
    invoke-static/range {p2 .. p2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_30

    .line 90
    move-object/from16 v9, p2

    .line 92
    :cond_30
    const/4 v3, 0x0

    .line 94
    .local v3, contacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    invoke-virtual {v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getParseType()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, parseType:Ljava/lang/String;
    if-nez v8, :cond_39

    const-string v8, ""

    .line 97
    :cond_39
    const-string v14, "sms:"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a9

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->recentContactsCache:Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v9, v1}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getRecentlyTextedContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v3

    .line 104
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v14

    if-nez v14, :cond_61

    .line 105
    :cond_55
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->recentContactsCache:Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v9, v1}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getRecentlyContactedContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v3

    .line 108
    :cond_61
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 109
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_72

    .line 110
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_72
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/util/ContactUtil$Contact;

    .line 113
    .local v2, c:Lcom/vlingo/client/util/ContactUtil$Contact;
    new-instance v7, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    invoke-direct {v7, v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Lcom/vlingo/client/typedrequests/provider/Suggestion;)V

    .line 114
    .local v7, n:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    const-string v14, "-Expansion"

    iput-object v14, v7, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    .line 115
    iget-wide v14, v2, Lcom/vlingo/client/util/ContactUtil$Contact;->id:J

    move-object/from16 v0, p3

    invoke-static {v0, v14, v15}, Lcom/vlingo/client/util/ContactUtil;->getPhoto(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, icon:Ljava/lang/String;
    const-string v14, "contact"

    iget-object v15, v2, Lcom/vlingo/client/util/ContactUtil$Contact;->name:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {v6}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a2

    .line 118
    const-string v6, "android.resource://com.vlingo.client.samsung/2130837664"

    .line 120
    :cond_a2
    invoke-virtual {v7, v6}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->setSecondaryIcon(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 100
    .end local v2           #c:Lcom/vlingo/client/util/ContactUtil$Contact;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #icon:Ljava/lang/String;
    .end local v7           #n:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_a9
    const-string v14, "dial:"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->recentContactsCache:Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v9, v1}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getRecentlyCalledContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v3

    goto :goto_4d

    .line 125
    .end local v3           #contacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    .end local v8           #parseType:Ljava/lang/String;
    .end local v9           #query:Ljava/lang/String;
    :cond_be
    if-eqz p2, :cond_9

    .line 126
    invoke-virtual {v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->hasVariable()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 127
    invoke-virtual {v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getAllVariables()Ljava/util/Set;

    move-result-object v13

    .line 128
    .local v13, variables:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_ce
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 129
    .local v12, var:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_ce

    .line 135
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v11           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v12           #var:Ljava/lang/String;
    .end local v13           #variables:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e0
    return-object v10
.end method

.method public fetchSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_4

    .line 54
    const-string p1, ""

    .line 58
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 59
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v3, "<SuggestionRequest Query=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v3, "\"/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->httpClient:Lcom/vlingo/client/util/SimpleHttpClient;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getSuggestURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v4

    iget-object v4, v4, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/util/SimpleHttpClient;->postVLJSONRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseJSON(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->suggestionCache:Lcom/vlingo/client/typedrequests/provider/SuggestionCache;

    invoke-virtual {v3, p1, v2}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->addSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    return-object v2
.end method

.method public declared-synchronized getSuggestionsFromCache(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 4
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
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->suggestionCache:Lcom/vlingo/client/typedrequests/provider/SuggestionCache;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionCache;->getSuggestions(Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
