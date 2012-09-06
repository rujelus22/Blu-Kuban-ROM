.class Landroid/support/place/connector/EventListener$Registration;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Registration"
.end annotation


# instance fields
.field private final DISCONNECT_NOTIFICATION_DELAY_MS:I

.field private final MAX_REGISTER_ERRORS:I

.field private final mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private final mEventSource:Landroid/support/place/rpc/EndpointInfo;

.field private final mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mResultHandler:Landroid/support/place/rpc/RpcResultHandler;

.field private mRunning:Z

.field private mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/place/connector/EventListener;


# direct methods
.method constructor <init>(Landroid/support/place/connector/EventListener;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 5
    .parameter
    .parameter "eventSource"

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-object p1, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/place/connector/EventListener$Registration;->MAX_REGISTER_ERRORS:I

    .line 104
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/support/place/connector/EventListener$Registration;->DISCONNECT_NOTIFICATION_DELAY_MS:I

    .line 139
    new-instance v0, Landroid/support/place/connector/EventListener$Registration$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/EventListener$Registration$1;-><init>(Landroid/support/place/connector/EventListener$Registration;)V

    iput-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Landroid/support/place/connector/EventListener$Registration$2;

    invoke-direct {v0, p0}, Landroid/support/place/connector/EventListener$Registration$2;-><init>(Landroid/support/place/connector/EventListener$Registration;)V

    iput-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mResultHandler:Landroid/support/place/rpc/RpcResultHandler;

    .line 166
    new-instance v0, Landroid/support/place/connector/EventListener$Registration$3;

    invoke-direct {v0, p0}, Landroid/support/place/connector/EventListener$Registration$3;-><init>(Landroid/support/place/connector/EventListener$Registration;)V

    iput-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 110
    iput-object p2, p0, Landroid/support/place/connector/EventListener$Registration;->mEventSource:Landroid/support/place/rpc/EndpointInfo;

    .line 111
    iput-boolean v1, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    return-void
.end method

.method static synthetic access$200(Landroid/support/place/connector/EventListener$Registration;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/EndpointInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mEventSource:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/RpcResultHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mResultHandler:Landroid/support/place/rpc/RpcResultHandler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/place/connector/EventListener$Registration;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/place/connector/EventListener$Registration;->handleError()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/place/connector/EventListener$Registration;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private handleError()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$1200(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Registration;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 203
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener;->stopListening()V

    .line 204
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$1100(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Listener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener$Listener;->onDisconnected()V

    .line 208
    :goto_16
    return-void

    .line 206
    :cond_17
    invoke-virtual {p0}, Landroid/support/place/connector/EventListener$Registration;->stopLocked()V

    goto :goto_16
.end method


# virtual methods
.method public startLocked()V
    .registers 3

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    if-eqz v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 121
    :cond_5
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    goto :goto_4
.end method

.method public stopLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-boolean v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    if-nez v0, :cond_6

    .line 137
    :goto_5
    return-void

    .line 130
    :cond_6
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 133
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration;->mEventSource:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "unregisterListener"

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mUnregisterPayload:[B
    invoke-static {v3}, Landroid/support/place/connector/EventListener;->access$100(Landroid/support/place/connector/EventListener;)[B

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 136
    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/place/connector/EventListener$Registration;->mRunning:Z

    goto :goto_5
.end method
