.class public Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;
.super Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
.source "NetworkSuggestionProvider.java"


# static fields
.field public static final EXPANSION_NAME:Ljava/lang/String; = "NetworkSuggestionProvider-Expansion"

.field public static final NAME:Ljava/lang/String; = "NetworkSuggestionProvider"


# instance fields
.field private final suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/typedrequests/provider/SuggestionManager;I)V
    .registers 3
    .parameter "suggestionManager"
    .parameter "maxExpansions"

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;-><init>(I)V

    .line 20
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    .line 21
    return-void
.end method

.method private getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_c

    .line 48
    const/4 v1, 0x0

    .line 50
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_b
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public bridge synthetic executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "NetworkSuggestionProvider"

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
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 34
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-virtual {v1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->fetchSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-virtual {v1, v0, p1, p3}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->expandSuggestions(Ljava/util/ArrayList;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    :cond_17
    return-object v0
.end method
