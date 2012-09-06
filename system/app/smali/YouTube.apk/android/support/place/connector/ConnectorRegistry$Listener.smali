.class public Landroid/support/place/connector/ConnectorRegistry$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedToRegistry(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public onDisconnected()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method
