.class Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "LocalSearchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalSearchHTTPHandler"
.end annotation


# instance fields
.field m_currentBusinessItem:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

.field m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

.field final synthetic this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;


# direct methods
.method constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V
    .registers 5
    .parameter
    .parameter "currentBusinessItem"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

    .line 82
    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_currentBusinessItem:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 89
    iput-object p3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

    .line 90
    iput-object p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_currentBusinessItem:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 91
    return-void
.end method

.method constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V
    .registers 4
    .parameter
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

    .line 82
    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_currentBusinessItem:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 85
    iput-object p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

    .line 86
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    iget v2, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d

    .line 98
    iget-object v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_currentBusinessItem:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-static {p2, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->parseLocalSearchResponse(Lcom/vlingo/client/core/http/HttpResponse;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)Ljava/util/Vector;

    move-result-object v0

    .line 100
    :cond_d
    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 103
    .local v1, success:Z
    :goto_10
    iget-object v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;->m_listener:Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;

    invoke-interface {v2, v1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;->onRequestComplete(ZLjava/util/Vector;)V

    .line 104
    return-void

    .line 100
    .end local v1           #success:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_10
.end method
