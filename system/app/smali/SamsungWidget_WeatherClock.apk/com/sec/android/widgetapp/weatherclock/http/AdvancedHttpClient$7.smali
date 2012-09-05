.class Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;
.super Ljava/lang/Thread;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;

.field final synthetic val$headers:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$position:I

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iput-object p5, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$handler:Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;

    iput p6, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 285
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$headers:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpClientThread;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 288
    .local v1, response:Lorg/apache/http/HttpResponse;
    const-wide/16 v2, 0x1

    :try_start_d
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_24

    .line 294
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$handler:Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->setResponse(Lorg/apache/http/HttpResponse;)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$position:I

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;->val$handler:Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;

    invoke-static {v3, v6, v4, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->processResult(Landroid/os/Message;)V

    .line 297
    :goto_23
    return-void

    .line 290
    :catch_24
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_23
.end method
