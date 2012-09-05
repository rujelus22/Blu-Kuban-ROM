.class public Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;
.super Landroid/app/Activity;
.source "ExecuteSearchActivity.java"


# static fields
.field private static final MAX_DELAY:I = 0x1388


# instance fields
.field private data:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private networkProvider:Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

.field private query:Ljava/lang/String;

.field private volatile run:Z

.field private suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

.field private userQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->networkProvider:Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->run:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->userQuery:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->query:Ljava/lang/String;

    .line 55
    const-string v1, "user_query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->userQuery:Ljava/lang/String;

    .line 56
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->data:Ljava/lang/String;

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->handler:Landroid/os/Handler;

    .line 59
    new-instance v1, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-direct {v1}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    .line 60
    new-instance v1, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;-><init>(Lcom/vlingo/client/typedrequests/provider/SuggestionManager;I)V

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;->networkProvider:Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

    .line 63
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$1;-><init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 113
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity$2;-><init>(Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 140
    return-void
.end method
