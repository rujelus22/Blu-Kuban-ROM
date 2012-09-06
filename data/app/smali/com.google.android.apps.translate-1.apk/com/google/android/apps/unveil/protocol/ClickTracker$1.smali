.class Lcom/google/android/apps/unveil/protocol/ClickTracker$1;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "ClickTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ClickTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/ClickTracker;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/ClickTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker$1;->this$0:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 4

    .prologue
    .line 110
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Failed to send logs."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
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
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;>;"
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Succesffully sent click log."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Server responded %d to log request."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method
