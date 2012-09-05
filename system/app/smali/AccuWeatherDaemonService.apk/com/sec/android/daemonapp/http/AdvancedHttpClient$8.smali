.class Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;
.super Ljava/lang/Thread;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->post(ILandroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

.field final synthetic val$headers:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$position:I

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$body:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iput-object p6, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$handler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iput p7, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 289
    iget-object v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$body:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$headers:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/daemonapp/http/HttpClientThread;->post(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 292
    .local v1, response:Lorg/apache/http/HttpResponse;
    const-wide/16 v2, 0x1

    :try_start_f
    invoke-static {v2, v3}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_26

    .line 298
    iget-object v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$handler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->setResponse(Lorg/apache/http/HttpResponse;)V

    .line 300
    iget-object v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$position:I

    iget-object v5, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;->val$handler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->processResult(Landroid/os/Message;)V

    .line 301
    :goto_25
    return-void

    .line 294
    :catch_26
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_25
.end method
