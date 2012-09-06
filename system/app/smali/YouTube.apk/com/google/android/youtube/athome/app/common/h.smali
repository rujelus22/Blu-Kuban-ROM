.class public final Lcom/google/android/youtube/athome/app/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/place/connector/Broker;

.field private b:Landroid/support/place/rpc/EndpointInfo;

.field private c:Lcom/google/android/youtube/athome/app/common/m;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    .line 22
    iput-object p2, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->c:Lcom/google/android/youtube/athome/app/common/m;

    if-eqz v0, :cond_c

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->c:Lcom/google/android/youtube/athome/app/common/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/m;->stopListening()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->c:Lcom/google/android/youtube/athome/app/common/m;

    .line 471
    :cond_c
    return-void
.end method

.method public final a(ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 228
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 229
    const-string v0, "time"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "seekTo"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 231
    return-void
.end method

.method public final a(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 204
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "play"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 206
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 308
    const-string v0, "subtitleTrack"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setSubtitleTrack"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 310
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/PlayRequest;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 331
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 332
    const-string v0, "playRequest"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "requestPlay"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 334
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/i;)V
    .registers 4
    .parameter

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/android/youtube/athome/app/common/h;->a()V

    .line 462
    new-instance v0, Lcom/google/android/youtube/athome/app/common/m;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/youtube/athome/app/common/m;-><init>(Lcom/google/android/youtube/athome/app/common/h;Landroid/support/place/connector/Broker;Lcom/google/android/youtube/athome/app/common/i;)V

    iput-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->c:Lcom/google/android/youtube/athome/app/common/m;

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->c:Lcom/google/android/youtube/athome/app/common/m;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/m;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 464
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/j;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 260
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getPlayerState"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/athome/app/common/n;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5, p1}, Lcom/google/android/youtube/athome/app/common/n;-><init>(Lcom/google/android/youtube/athome/app/common/h;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 262
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/k;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getScreenName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/athome/app/common/n;

    const/16 v5, 0xd

    invoke-direct {v4, p0, v5, p1}, Lcom/google/android/youtube/athome/app/common/n;-><init>(Lcom/google/android/youtube/athome/app/common/h;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 301
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/l;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 275
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getVolume"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/athome/app/common/n;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5, p1}, Lcom/google/android/youtube/athome/app/common/n;-><init>(Lcom/google/android/youtube/athome/app/common/h;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 277
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 196
    const-string v0, "videoId"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "playYouTubeVideo"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 198
    return-void
.end method

.method public final b(ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 284
    const-string v0, "volume"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setVolume"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 286
    return-void
.end method

.method public final b(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 212
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "pause"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 214
    return-void
.end method

.method public final c(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 220
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "stop"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 222
    return-void
.end method

.method public final d(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 237
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/h;->a:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/h;->b:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "reportAdClickthrough"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 239
    return-void
.end method
