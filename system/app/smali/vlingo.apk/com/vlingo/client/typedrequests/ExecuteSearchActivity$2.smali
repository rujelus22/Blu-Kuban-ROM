.class Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;
.super Ljava/util/TimerTask;
.source "ExecuteSearchActivity.java"


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
    .line 113
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    monitor-enter v1

    .line 119
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    #getter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z
    invoke-static {v0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$200(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;->this$0:Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z
    invoke-static {v0, v2}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->access$202(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;Z)Z

    .line 122
    new-instance v0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2$1;-><init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 136
    :cond_19
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method
