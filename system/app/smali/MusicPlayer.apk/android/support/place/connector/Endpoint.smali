.class public Landroid/support/place/connector/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/Endpoint$1;,
        Landroid/support/place/connector/Endpoint$PushEventErrorHandler;,
        Landroid/support/place/connector/Endpoint$Callback;
    }
.end annotation


# static fields
.field private static final sEmptyState:Landroid/support/place/rpc/RpcData;


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroker:Landroid/support/place/connector/Broker;

.field mCallback:Landroid/support/place/connector/Endpoint$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/rpc/EndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    sput-object v0, Landroid/support/place/connector/Endpoint;->sEmptyState:Landroid/support/place/rpc/RpcData;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/connector/Broker;)V
    .registers 4
    .parameter "broker"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/Endpoint;->mActions:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/support/place/connector/Endpoint$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/place/connector/Endpoint$Callback;-><init>(Landroid/support/place/connector/Endpoint;Landroid/support/place/connector/Endpoint$1;)V

    iput-object v0, p0, Landroid/support/place/connector/Endpoint;->mCallback:Landroid/support/place/connector/Endpoint$Callback;

    .line 88
    iput-object p1, p0, Landroid/support/place/connector/Endpoint;->mBroker:Landroid/support/place/connector/Broker;

    .line 89
    return-void
.end method

.method static synthetic access$100(Landroid/support/place/connector/Endpoint;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/place/connector/Endpoint;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Landroid/support/place/connector/Endpoint;->dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/connector/Endpoint;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/place/connector/Endpoint;->unregisterListener(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    .registers 10
    .parameter "action"
    .parameter "params"
    .parameter "context"
    .parameter "status"
    .parameter "oneway"

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Endpoint;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 137
    :goto_4
    return-object v1

    .line 128
    :catch_5
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "Endpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke failed method=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    if-nez p5, :cond_30

    .line 133
    const/4 v1, 0x3

    iput v1, p4, Landroid/support/place/rpc/RpcError;->status:I

    .line 134
    const-string v1, ""

    iput-object v1, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    .line 135
    invoke-virtual {p4, v0}, Landroid/support/place/rpc/RpcError;->appendStackTrace(Ljava/lang/Throwable;)V

    .line 137
    :cond_30
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private registerListener(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 9
    .parameter "listener"

    .prologue
    .line 239
    iget-object v1, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 244
    :try_start_3
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    monitor-exit v1

    .line 257
    :goto_c
    return-void

    .line 248
    :cond_d
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2d

    .line 253
    invoke-virtual {p0}, Landroid/support/place/connector/Endpoint;->getState()Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->ser()[B

    move-result-object v3

    .line 254
    .local v3, payload:[B
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mBroker:Landroid/support/place/connector/Broker;

    const-string v2, "onConnected"

    const/4 v4, 0x0

    new-instance v5, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;

    const-string v1, "onConnected"

    invoke-direct {v5, p0, v1, p1}, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;-><init>(Landroid/support/place/connector/Endpoint;Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;)V

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V

    goto :goto_c

    .line 249
    .end local v3           #payload:[B
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private registerListener([B)[B
    .registers 5
    .parameter "buf"

    .prologue
    .line 286
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 287
    .local v1, request:Landroid/support/place/rpc/RpcData;
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listener"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/place/rpc/EndpointInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    .line 288
    .local v0, arg0:Landroid/support/place/rpc/EndpointInfo;
    invoke-direct {p0, v0}, Landroid/support/place/connector/Endpoint;->registerListener(Landroid/support/place/rpc/EndpointInfo;)V

    .line 289
    const/4 v2, 0x0

    return-object v2
.end method

.method private setupMethodCacheLocked()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/Endpoint;->mMethods:Ljava/util/HashMap;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 206
    const/4 v0, 0x0

    .line 208
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_42

    move-result-object v0

    move-object v1, v0

    .line 214
    :goto_12
    array-length v5, v1

    move v4, v2

    move v3, v2

    :goto_15
    if-ge v4, v5, :cond_51

    aget-object v6, v1, v4

    .line 215
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-class v0, Landroid/support/place/rpc/Rpc;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/Rpc;

    .line 217
    if-eqz v0, :cond_3c

    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    invoke-interface {v0}, Landroid/support/place/rpc/Rpc;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4c

    move-object v0, v2

    .line 220
    :goto_34
    iget-object v7, p0, Landroid/support/place/connector/Endpoint;->mMethods:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, v2}, Landroid/support/place/connector/Endpoint;->addAction(Ljava/lang/String;)V

    :cond_3c
    move v0, v3

    .line 214
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_15

    .line 209
    :catch_42
    move-exception v1

    .line 210
    const-string v3, "Endpoint"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_12

    .line 219
    :cond_4c
    invoke-interface {v0}, Landroid/support/place/rpc/Rpc;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 224
    :cond_51
    if-nez v3, :cond_5a

    .line 225
    const-string v0, "Endpoint"

    const-string v1, "No @Rpc methods found: check the proguard configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5a
    return-void
.end method

.method private unregisterListener(Ljava/lang/String;)V
    .registers 6
    .parameter "id"

    .prologue
    .line 296
    iget-object v3, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 297
    :try_start_3
    iget-object v2, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 298
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_28

    .line 299
    iget-object v2, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 300
    iget-object v2, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    monitor-exit v3

    .line 305
    :goto_24
    return-void

    .line 298
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 304
    :cond_28
    monitor-exit v3

    goto :goto_24

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method private unregisterListener([B)[B
    .registers 5
    .parameter "buf"

    .prologue
    .line 308
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 309
    .local v1, request:Landroid/support/place/rpc/RpcData;
    const-string v2, "listener"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, arg0:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/support/place/connector/Endpoint;->unregisterListener(Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 105
    iget-object v1, p0, Landroid/support/place/connector/Endpoint;->mActions:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_3
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getBroker()Landroid/support/place/connector/Broker;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method public getCustomHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIEndpoint()Landroid/support/place/rpc/IEndpointStub;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mCallback:Landroid/support/place/connector/Endpoint$Callback;

    return-object v0
.end method

.method public getInternalState([BLandroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
    .registers 4
    .parameter "payload"
    .parameter "context"
    .annotation runtime Landroid/support/place/rpc/Rpc;
    .end annotation

    .prologue
    .line 357
    sget-object v0, Landroid/support/place/connector/Endpoint;->sEmptyState:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public getState()Landroid/support/place/rpc/RpcData;
    .registers 2

    .prologue
    .line 348
    sget-object v0, Landroid/support/place/connector/Endpoint;->sEmptyState:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 14
    .parameter "action"
    .parameter "params"
    .parameter "context"
    .parameter "status"

    .prologue
    const/4 v6, 0x0

    .line 143
    const-string v5, "registerListener"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 144
    invoke-direct {p0, p2}, Landroid/support/place/connector/Endpoint;->registerListener([B)[B

    move-result-object v1

    .line 198
    :goto_d
    return-object v1

    .line 146
    :cond_e
    const-string v5, "unregisterListener"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 147
    invoke-direct {p0, p2}, Landroid/support/place/connector/Endpoint;->unregisterListener([B)[B

    move-result-object v1

    goto :goto_d

    .line 149
    :cond_1b
    const-string v5, "getInternalState"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 151
    invoke-virtual {p0, p2, p3}, Landroid/support/place/connector/Endpoint;->getInternalState([BLandroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v1

    goto :goto_d

    .line 156
    :cond_2c
    const/4 v5, 0x3

    :try_start_2d
    iput v5, p4, Landroid/support/place/rpc/RpcError;->status:I

    .line 158
    iget-object v7, p0, Landroid/support/place/connector/Endpoint;->mActions:Ljava/util/List;

    monitor-enter v7
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_32} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_32} :catch_c5
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_32} :catch_11a

    .line 159
    :try_start_32
    iget-object v5, p0, Landroid/support/place/connector/Endpoint;->mMethods:Ljava/util/HashMap;

    if-nez v5, :cond_39

    .line 160
    invoke-direct {p0}, Landroid/support/place/connector/Endpoint;->setupMethodCacheLocked()V

    .line 162
    :cond_39
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_73

    .line 164
    :try_start_3a
    iget-object v5, p0, Landroid/support/place/connector/Endpoint;->mMethods:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 165
    .local v4, m:Ljava/lang/reflect/Method;
    if-nez v4, :cond_ad

    .line 166
    const-string v5, "Endpoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_71} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_71} :catch_c5
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_71} :catch_11a

    move-object v1, v6

    .line 168
    goto :goto_d

    .line 162
    .end local v4           #m:Ljava/lang/reflect/Method;
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw v5
    :try_end_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_76} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_75 .. :try_end_76} :catch_c5
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_76} :catch_11a

    .line 176
    :catch_76
    move-exception v2

    .line 177
    .local v2, ex:Ljava/lang/IllegalAccessException;
    const-string v5, "Endpoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke failed method=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action (IllegalAccessException): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :goto_aa
    move-object v1, v6

    .line 198
    goto/16 :goto_d

    .line 171
    .restart local v4       #m:Ljava/lang/reflect/Method;
    :cond_ad
    const/4 v5, 0x2

    :try_start_ae
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v5, v7

    const/4 v7, 0x1

    aput-object p3, v5, v7

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .line 174
    .local v1, buf:[B
    const/4 v5, 0x0

    iput v5, p4, Landroid/support/place/rpc/RpcError;->status:I
    :try_end_c3
    .catch Ljava/lang/IllegalAccessException; {:try_start_ae .. :try_end_c3} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ae .. :try_end_c3} :catch_c5
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_c3} :catch_11a

    goto/16 :goto_d

    .line 179
    .end local v1           #buf:[B
    .end local v4           #m:Ljava/lang/reflect/Method;
    :catch_c5
    move-exception v2

    .line 181
    .local v2, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 183
    .local v3, inner:Ljava/lang/Throwable;
    instance-of v5, v3, Ljava/lang/SecurityException;

    if-eqz v5, :cond_f4

    .line 184
    const-string v5, "Endpoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Security exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v5, 0x4

    iput v5, p4, Landroid/support/place/rpc/RpcError;->status:I

    .line 186
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    goto :goto_aa

    .line 188
    :cond_f4
    const-string v5, "Endpoint"

    const-string v7, "invoke failed"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invocation failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    .line 190
    invoke-virtual {p4, v3}, Landroid/support/place/rpc/RpcError;->appendStackTrace(Ljava/lang/Throwable;)V

    goto :goto_aa

    .line 192
    .end local v2           #ex:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #inner:Ljava/lang/Throwable;
    :catch_11a
    move-exception v2

    .line 193
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v5, "Endpoint"

    const-string v7, "invoke failed "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    const-string v5, ""

    iput-object v5, p4, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    .line 195
    invoke-virtual {p4, v2}, Landroid/support/place/rpc/RpcError;->appendStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v6

    .line 196
    goto/16 :goto_d
.end method

.method public pushEvent(Ljava/lang/String;[B)V
    .registers 13
    .parameter "event"
    .parameter "payload"

    .prologue
    .line 328
    iget-object v2, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 329
    :try_start_3
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/support/place/rpc/EndpointInfo;

    .line 330
    .local v9, listeners:[Landroid/support/place/rpc/EndpointInfo;
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    .line 332
    array-length v7, v9

    .line 336
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_11
    if-ge v8, v7, :cond_29

    .line 337
    aget-object v1, v9, v8

    .line 338
    .local v1, listener:Landroid/support/place/rpc/EndpointInfo;
    iget-object v0, p0, Landroid/support/place/connector/Endpoint;->mBroker:Landroid/support/place/connector/Broker;

    const/4 v4, 0x0

    new-instance v5, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;

    invoke-direct {v5, p0, p1, v1}, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;-><init>(Landroid/support/place/connector/Endpoint;Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;)V

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V

    .line 336
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 330
    .end local v1           #listener:Landroid/support/place/rpc/EndpointInfo;
    .end local v7           #N:I
    .end local v8           #i:I
    .end local v9           #listeners:[Landroid/support/place/rpc/EndpointInfo;
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 342
    .restart local v7       #N:I
    .restart local v8       #i:I
    .restart local v9       #listeners:[Landroid/support/place/rpc/EndpointInfo;
    :cond_29
    return-void
.end method

.method public setCustomHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 97
    iput-object p1, p0, Landroid/support/place/connector/Endpoint;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method
