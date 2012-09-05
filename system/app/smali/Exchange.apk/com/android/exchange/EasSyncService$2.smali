.class Lcom/android/exchange/EasSyncService$2;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;IZ)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/EasSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/EasSyncService;IZ)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5704
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$2;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 6
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    .line 5706
    iget-object v0, p0, Lcom/android/exchange/EasSyncService$2;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "retryRequest(): callced"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    const/4 v0, 0x0

    return v0
.end method
