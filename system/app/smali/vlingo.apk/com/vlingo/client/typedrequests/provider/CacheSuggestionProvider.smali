.class public Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;
.super Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
.source "CacheSuggestionProvider.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "CacheSuggestionProvider"


# instance fields
.field private final suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/typedrequests/provider/SuggestionManager;I)V
    .registers 3
    .parameter "suggestionManager"
    .parameter "maxResults"

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    const-string v0, "CacheSuggestionProvider"

    return-object v0
.end method

.method protected query(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 6
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-virtual {v1, p2, p3}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->getSuggestionsFromCache(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 30
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-virtual {v1, v0, p1, p3}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->expandSuggestions(Ljava/util/ArrayList;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
