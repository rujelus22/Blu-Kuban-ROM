.class Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;
.super Landroid/os/AsyncTask;
.source "DataConnectionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/DataConnectionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataTestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field responseCode:I

.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V
    .registers 3
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    .line 507
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 505
    const/16 v0, 0x194

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->responseCode:I

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .parameter "params"

    .prologue
    .line 515
    const-string v3, "http://sprint.com"

    .line 516
    .local v3, url:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 517
    .local v1, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_c
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 523
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->responseCode:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1c

    .line 530
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_1a
    const/4 v4, 0x0

    return-object v4

    .line 526
    :catch_1c
    move-exception v4

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 535
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    iget v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->responseCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_d

    const/4 v0, 0x2

    :goto_9
    #calls: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V
    invoke-static {v1, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$6(Lcom/sprint/dsa/diagnostics/DataConnectionTest;I)V

    .line 536
    return-void

    .line 535
    :cond_d
    const/4 v0, 0x3

    goto :goto_9
.end method
