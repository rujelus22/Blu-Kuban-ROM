.class Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/android/volley/Request;

.field private final mResponse:Lcom/android/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter "request"
    .parameter "response"
    .parameter "runnable"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    .line 92
    iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    .line 93
    iput-object p4, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->isDrainable()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getSequence()I

    move-result v1

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;

    #getter for: Lcom/android/volley/ExecutorDelivery;->mDiscardBefore:I
    invoke-static {v2}, Lcom/android/volley/ExecutorDelivery;->access$000(Lcom/android/volley/ExecutorDelivery;)I

    move-result v2

    if-ge v1, v2, :cond_29

    const/4 v0, 0x1

    .line 106
    .local v0, drained:Z
    :goto_17
    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 107
    :cond_21
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "canceled-at-delivery"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 130
    :cond_28
    :goto_28
    return-void

    .line 102
    .end local v0           #drained:Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_17

    .line 112
    .restart local v0       #drained:Z
    :cond_2b
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    invoke-virtual {v1}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 113
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    .line 120
    :goto_3c
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-boolean v1, v1, Lcom/android/volley/Response;->intermediate:Z

    if-eqz v1, :cond_5d

    .line 121
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "intermediate-response"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 127
    :goto_49
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_28

    .line 128
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    .line 115
    :cond_53
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_3c

    .line 123
    :cond_5d
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_49
.end method
