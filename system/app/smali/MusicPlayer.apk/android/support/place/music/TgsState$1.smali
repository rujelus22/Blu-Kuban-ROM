.class final Landroid/support/place/music/TgsState$1;
.super Ljava/lang/Object;
.source "TgsState.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/TgsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/place/rpc/Flattenable$Creator",
        "<",
        "Landroid/support/place/music/TgsState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/music/TgsState;
    .registers 3
    .parameter "in"

    .prologue
    .line 96
    new-instance v0, Landroid/support/place/music/TgsState;

    invoke-direct {v0, p1}, Landroid/support/place/music/TgsState;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v0
.end method

.method public bridge synthetic createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsState$1;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/music/TgsState;

    move-result-object v0

    return-object v0
.end method
