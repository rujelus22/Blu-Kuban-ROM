.class Lcom/sprint/dsa/http/MyHttpClient$1;
.super Ljava/lang/Thread;
.source "MyHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/http/MyHttpClient;->get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/http/MyHttpClient;

.field private final synthetic val$additionalHeaders:Ljava/util/Map;

.field private final synthetic val$pass:Ljava/lang/String;

.field private final synthetic val$responseHandler:Lorg/apache/http/client/ResponseHandler;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/http/MyHttpClient;Lorg/apache/http/client/ResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->this$0:Lcom/sprint/dsa/http/MyHttpClient;

    iput-object p2, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    iput-object p3, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$user:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$pass:Ljava/lang/String;

    iput-object p6, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$additionalHeaders:Ljava/util/Map;

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 50
    new-instance v0, Lcom/sprint/dsa/http/HTTPRequestHelper;

    iget-object v1, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v1}, Lcom/sprint/dsa/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 51
    .local v0, helper:Lcom/sprint/dsa/http/HTTPRequestHelper;
    iget-object v1, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$pass:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/dsa/http/MyHttpClient$1;->val$additionalHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 52
    return-void
.end method
