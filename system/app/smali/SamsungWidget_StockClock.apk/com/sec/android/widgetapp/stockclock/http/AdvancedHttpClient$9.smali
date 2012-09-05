.class Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;
.super Ljava/lang/Thread;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

.field final synthetic val$headers:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iput-object p5, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$handler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$url:Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$headers:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpClientThread;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 203
    .local v0, response:Lorg/apache/http/HttpResponse;
    const-wide/16 v1, 0x1

    :try_start_d
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_27

    .line 208
    :goto_10
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$handler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->setResponse(Lorg/apache/http/HttpResponse;)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->val$handler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    invoke-static {v2, v4, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->processResult(Landroid/os/Message;)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;->this$0:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    invoke-virtual {v1, p0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->removeThread(Ljava/lang/Thread;)V

    .line 213
    return-void

    .line 204
    :catch_27
    move-exception v1

    goto :goto_10
.end method
