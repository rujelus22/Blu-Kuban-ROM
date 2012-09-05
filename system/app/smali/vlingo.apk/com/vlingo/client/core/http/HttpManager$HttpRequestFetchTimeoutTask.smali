.class Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;
.super Ljava/util/TimerTask;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/http/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRequestFetchTimeoutTask"
.end annotation


# instance fields
.field private final request:Lcom/vlingo/client/core/http/HttpRequest;

.field final synthetic this$0:Lcom/vlingo/client/core/http/HttpManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter
    .parameter "request"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->request:Lcom/vlingo/client/core/http/HttpRequest;

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->request:Lcom/vlingo/client/core/http/HttpRequest;

    #calls: Lcom/vlingo/client/core/http/HttpManager;->requestHasTimedOut(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)V
    invoke-static {v0, v1, p0}, Lcom/vlingo/client/core/http/HttpManager;->access$1100(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)V

    .line 392
    return-void
.end method
