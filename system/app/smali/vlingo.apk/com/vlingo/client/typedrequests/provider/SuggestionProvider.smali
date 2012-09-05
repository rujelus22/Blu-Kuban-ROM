.class abstract Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"


# instance fields
.field private final maxResults:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "maxResults"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->maxResults:I

    .line 25
    return-void
.end method

.method private processResults(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 42
    .local v2, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    iget-object v3, v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 43
    iput-object v1, v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    goto :goto_8

    .line 46
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    goto :goto_8

    .line 58
    .end local v2           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_31
    return-void
.end method


# virtual methods
.method public executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .parameter "context"
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->maxResults:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->query(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-direct {p0, v0}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->processResults(Ljava/util/ArrayList;)V

    .line 36
    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract query(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
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
.end method
