.class Lcom/sprint/dsa/http/MyHttpClient$2;
.super Ljava/lang/Thread;
.source "MyHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/http/MyHttpClient;->post(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/http/MyHttpClient;

.field private final synthetic val$additionalHeaders:Ljava/util/Map;

.field private final synthetic val$body:Ljava/lang/String;

.field private final synthetic val$contentType:Ljava/lang/String;

.field private final synthetic val$params:Ljava/util/Map;

.field private final synthetic val$pass:Ljava/lang/String;

.field private final synthetic val$responseHandler:Lorg/apache/http/client/ResponseHandler;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/http/MyHttpClient;Lorg/apache/http/client/ResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->this$0:Lcom/sprint/dsa/http/MyHttpClient;

    iput-object p2, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    iput-object p3, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$contentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$user:Ljava/lang/String;

    iput-object p6, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$pass:Ljava/lang/String;

    iput-object p7, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$additionalHeaders:Ljava/util/Map;

    iput-object p8, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$params:Ljava/util/Map;

    iput-object p9, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$body:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 70
    new-instance v0, Lcom/sprint/dsa/http/HTTPRequestHelper;

    iget-object v1, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v1}, Lcom/sprint/dsa/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 71
    .local v0, helper:Lcom/sprint/dsa/http/HTTPRequestHelper;
    iget-object v1, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$contentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$user:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$pass:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$additionalHeaders:Ljava/util/Map;

    iget-object v6, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$params:Ljava/util/Map;

    .line 72
    iget-object v7, p0, Lcom/sprint/dsa/http/MyHttpClient$2;->val$body:Ljava/lang/String;

    .line 71
    invoke-virtual/range {v0 .. v7}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    return-void
.end method
