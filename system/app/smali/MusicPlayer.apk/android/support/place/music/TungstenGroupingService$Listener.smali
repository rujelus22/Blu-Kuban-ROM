.class public Landroid/support/place/music/TungstenGroupingService$Listener;
.super Landroid/support/place/connector/EventListener$Listener;
.source "TungstenGroupingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/TungstenGroupingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/support/place/connector/EventListener$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V
    .registers 3
    .parameter "state"
    .parameter "context"

    .prologue
    .line 411
    return-void
.end method

.method public onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsRxVolume;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, volumes:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    return-void
.end method
