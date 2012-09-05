.class Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "LocalSearchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoActivityHTTPHandler"
.end annotation


# instance fields
.field m_actionType:Ljava/lang/String;

.field m_bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

.field m_retryNum:I

.field final synthetic this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "bi"
    .parameter "actionType"
    .parameter "retryNum"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 162
    iput-object p3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_actionType:Ljava/lang/String;

    .line 163
    iput p4, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_retryNum:I

    .line 164
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 169
    .local v1, success:Z
    iget v2, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_15

    .line 170
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, res:Ljava/lang/String;
    const-string v2, "<InfoActivityResponse Status=\"OK\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 174
    const/4 v1, 0x1

    .line 177
    .end local v0           #res:Ljava/lang/String;
    :cond_15
    if-nez v1, :cond_2c

    .line 180
    iget v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_retryNum:I

    if-lez v2, :cond_2c

    .line 183
    iget v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_retryNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_retryNum:I

    .line 184
    iget-object v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    iget-object v4, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_actionType:Ljava/lang/String;

    iget v5, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;->m_retryNum:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;I)V

    .line 191
    :cond_2c
    return-void
.end method
