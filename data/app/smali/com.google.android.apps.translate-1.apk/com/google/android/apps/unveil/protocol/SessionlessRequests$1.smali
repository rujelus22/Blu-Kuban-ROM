.class final Lcom/google/android/apps/unveil/protocol/SessionlessRequests$1;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "SessionlessRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->maybeSendTraces(Lcom/google/android/apps/unveil/UnveilContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<",
        "Lcom/google/goggles/TracingProtos$TraceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 4

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Failed to send logs."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
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
            "Lcom/google/goggles/TracingProtos$TraceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/TracingProtos$TraceResponse;>;"
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Successfully sent logs."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "failed to send logs with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method
