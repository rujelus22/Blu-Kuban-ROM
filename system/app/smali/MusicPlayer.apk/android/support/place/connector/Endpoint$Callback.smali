.class final Landroid/support/place/connector/Endpoint$Callback;
.super Landroid/support/place/rpc/IEndpointStub$Stub;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/Endpoint;


# direct methods
.method private constructor <init>(Landroid/support/place/connector/Endpoint;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    invoke-direct {p0}, Landroid/support/place/rpc/IEndpointStub$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/place/connector/Endpoint;Landroid/support/place/connector/Endpoint$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/place/connector/Endpoint$Callback;-><init>(Landroid/support/place/connector/Endpoint;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 19
    .parameter "action"
    .parameter "payload"
    .parameter "context"
    .parameter "status"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    #getter for: Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Endpoint;->access$100(Landroid/support/place/connector/Endpoint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 55
    new-instance v7, Landroid/os/ConditionVariable;

    invoke-direct {v7}, Landroid/os/ConditionVariable;-><init>()V

    .line 56
    .local v7, barrier:Landroid/os/ConditionVariable;
    const/4 v0, 0x1

    new-array v2, v0, [[B

    .line 57
    .local v2, result:[[B
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    #getter for: Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Endpoint;->access$100(Landroid/support/place/connector/Endpoint;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/support/place/connector/Endpoint$Callback$1;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/place/connector/Endpoint$Callback$1;-><init>(Landroid/support/place/connector/Endpoint$Callback;[[BLjava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Landroid/os/ConditionVariable;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V

    .line 65
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 67
    .end local v2           #result:[[B
    .end local v7           #barrier:Landroid/os/ConditionVariable;
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v8, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    const/4 v13, 0x0

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    #calls: Landroid/support/place/connector/Endpoint;->dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    invoke-static/range {v8 .. v13}, Landroid/support/place/connector/Endpoint;->access$200(Landroid/support/place/connector/Endpoint;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B

    move-result-object v0

    goto :goto_2c
.end method

.method public processOneway(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V
    .registers 12
    .parameter "action"
    .parameter "payload"
    .parameter "context"
    .parameter "status"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    #getter for: Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Endpoint;->access$100(Landroid/support/place/connector/Endpoint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    #getter for: Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Endpoint;->access$100(Landroid/support/place/connector/Endpoint;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/support/place/connector/Endpoint$Callback$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/place/connector/Endpoint$Callback$2;-><init>(Landroid/support/place/connector/Endpoint$Callback;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :goto_1b
    return-void

    .line 82
    :cond_1c
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    #calls: Landroid/support/place/connector/Endpoint;->dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    invoke-static/range {v0 .. v5}, Landroid/support/place/connector/Endpoint;->access$200(Landroid/support/place/connector/Endpoint;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B

    goto :goto_1b
.end method
