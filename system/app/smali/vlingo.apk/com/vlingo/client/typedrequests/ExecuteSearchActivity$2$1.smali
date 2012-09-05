.class Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;
.super Ljava/lang/Object;
.source "ExecuteSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;


# direct methods
.method constructor <init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v0, v0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v1, v1, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/typedrequests/TypedRequestExecutor;->executeSearch(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v0, v0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->userQuery:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$400(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v1, v1, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    sget-object v3, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->Search:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v4, v4, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->logSuggestionPicked(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;->this$1:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    iget-object v0, v0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->finish()V

    .line 129
    return-void
.end method
