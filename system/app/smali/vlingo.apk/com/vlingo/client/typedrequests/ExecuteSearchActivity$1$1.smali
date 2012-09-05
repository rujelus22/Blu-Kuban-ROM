.class Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;
.super Ljava/lang/Object;
.source "ExecuteSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

.field final synthetic val$suggestions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iput-object p2, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->val$suggestions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 75
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-virtual {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_99

    .line 76
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->val$suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9d

    .line 80
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->val$suggestions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    invoke-virtual {v3}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getActionString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$302(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 82
    .local v2, isURI:Z
    if-eqz v2, :cond_9a

    const-string v1, "action-uri"

    .line 83
    .local v1, actionTypeName:Ljava/lang/String;
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, actionBlob:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->userQuery:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$400(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->Search:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    invoke-static {v3, v4, v7, v5, v0}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->logSuggestionPicked(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vlingo/client/typedrequests/TypedRequestExecutor;->executeActions(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .end local v0           #actionBlob:Ljava/lang/String;
    .end local v1           #actionTypeName:Ljava/lang/String;
    .end local v2           #isURI:Z
    :goto_92
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-virtual {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->finish()V

    .line 101
    :cond_99
    return-void

    .line 82
    .restart local v2       #isURI:Z
    :cond_9a
    const-string v1, "action"

    goto :goto_39

    .line 91
    .end local v2           #isURI:Z
    :cond_9d
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->userQuery:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$400(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->Search:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    iget-object v6, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v6, v6, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v6}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v7, v5, v6}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->logSuggestionPicked(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v3, v3, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vlingo/client/typedrequests/TypedRequestExecutor;->executeSearch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_92
.end method
