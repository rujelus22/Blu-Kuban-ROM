.class Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;
.super Ljava/lang/Object;
.source "ExecuteSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 65
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->networkProvider:Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;
    invoke-static {v1}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$100(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    monitor-enter v2

    .line 70
    :try_start_15
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z
    invoke-static {v1}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$200(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    const/4 v3, 0x0

    #setter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z
    invoke-static {v1, v3}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$202(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;Z)Z

    .line 73
    new-instance v1, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1$1;-><init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_2b
    monitor-exit v2

    .line 109
    return-void

    .line 108
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw v1
.end method
