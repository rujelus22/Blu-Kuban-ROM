.class Lcom/google/android/apps/unveil/textinput/TextInput$11;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->maybeSendTraces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V
    .registers 2
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$11;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 4

    .prologue
    .line 861
    invoke-static {}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Failed to send traces."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
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
    .line 856
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/TracingProtos$TraceResponse;>;"
    invoke-static {}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Successfully sent traces."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 866
    invoke-static {}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "failed to send traces with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    return-void
.end method
