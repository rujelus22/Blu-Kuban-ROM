.class public Landroid/support/place/connector/EventListener$Listener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 31
    return-void
.end method

.method public onDisconnected()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 35
    return-void
.end method
