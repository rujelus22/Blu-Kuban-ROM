.class final Landroid/support/place/music/TgsGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/music/TgsGroup;
    .registers 3
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/support/place/music/TgsGroup;

    invoke-direct {v0, p1}, Landroid/support/place/music/TgsGroup;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v0
.end method

.method public final bridge synthetic createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsGroup$1;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/music/TgsGroup;

    move-result-object v0

    return-object v0
.end method
