.class public final Lcom/google/android/youtube/app/remote/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ap;


# instance fields
.field private final a:Landroid/support/place/connector/ConnectorInfo;

.field private final b:Landroid/support/place/picker/VideoReceiver;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/ConnectorInfo;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "connector cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    .line 26
    const-string v0, "name cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/m;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/m;->b:Landroid/support/place/picker/VideoReceiver;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/place/connector/Broker;)Lcom/google/android/youtube/athome/app/common/h;
    .registers 4
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/athome/app/common/h;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/m;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final b()Landroid/support/place/connector/ConnectorInfo;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 63
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/google/android/youtube/app/remote/m;

    if-nez v0, :cond_8

    .line 64
    :cond_6
    const/4 v0, 0x0

    .line 66
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    check-cast p1, Lcom/google/android/youtube/app/remote/m;

    iget-object v1, p1, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{connector: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/m;->a:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
