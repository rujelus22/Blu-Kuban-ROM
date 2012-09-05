.class Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;
.super Ljava/lang/Object;
.source "SuggestionProviderExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProviderBackgroundTask"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile isCancelled:Z

.field private final listener:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;

.field private final provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

.field private final query:Ljava/lang/String;

.field public final requestId:I

.field private final tag1:Ljava/lang/Object;

.field private final tag2:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;


# direct methods
.method constructor <init>(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Ljava/lang/String;ILcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "query"
    .parameter "requestId"
    .parameter "provider"
    .parameter "listener"
    .parameter "tag1"
    .parameter "tag2"
    .parameter "context"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->this$0:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->isCancelled:Z

    .line 95
    iput-object p2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->query:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    .line 97
    iput-object p5, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->listener:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;

    .line 98
    iput-object p6, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->tag1:Ljava/lang/Object;

    .line 99
    iput-object p7, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->tag2:Ljava/lang/Object;

    .line 100
    iput-object p8, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->context:Landroid/content/Context;

    .line 101
    iput p3, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->requestId:I

    .line 102
    #calls: Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->onTaskCreated(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    invoke-static {p1, p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->access$000(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V

    .line 103
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->query:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    iget-boolean v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->isCancelled:Z

    if-nez v1, :cond_19

    .line 112
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->listener:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;

    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->requestId:I

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->tag1:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->tag2:Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;->onSuggestionsAvailable(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_19
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->this$0:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    #calls: Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->onTaskComplete(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    invoke-static {v1, p0}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->access$100(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderBackgroundTask[query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    invoke-virtual {v1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
