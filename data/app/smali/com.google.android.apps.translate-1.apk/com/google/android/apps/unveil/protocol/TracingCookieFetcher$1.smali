.class Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$1;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "TracingCookieFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->makeHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$1;->this$0:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "TracingCookieRequest network error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<",
            "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getProtocolBuffer()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 104
    .local v0, tracingCookieResponse:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$1;->this$0:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getTracingCookiesList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->addAll(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "TracingCookieRequest server error: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method
