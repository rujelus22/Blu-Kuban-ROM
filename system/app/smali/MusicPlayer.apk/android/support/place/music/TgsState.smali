.class public Landroid/support/place/music/TgsState;
.super Ljava/lang/Object;
.source "TgsState.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/music/TgsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableRxs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/music/TgsService;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableTxs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/music/TgsTxService;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/music/TgsService;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/music/TgsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Landroid/support/place/music/TgsState$1;

    invoke-direct {v0}, Landroid/support/place/music/TgsState$1;-><init>()V

    sput-object v0, Landroid/support/place/music/TgsState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/place/music/TgsState;-><init>()V

    .line 33
    const-string v2, "availableTxs"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 34
    .local v0, d:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsTxService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsTxService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 37
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    :cond_24
    const-string v2, "availableRxs"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 38
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 41
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    :cond_45
    const-string v2, "failed"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 42
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 45
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    :cond_66
    const-string v2, "groups"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 46
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsGroup;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsGroup;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 48
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    :cond_87
    return-void
.end method


# virtual methods
.method public getAvailableRxs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 88
    .local v0, dest:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsState;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TgsState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 13
    .parameter "dest"

    .prologue
    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v9, txs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/rpc/RpcData;>;"
    iget-object v10, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/place/music/TgsTxService;

    .line 54
    .local v8, tx:Landroid/support/place/music/TgsTxService;
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 55
    .local v0, d:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v8, v0}, Landroid/support/place/music/TgsTxService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 56
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 58
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    .end local v8           #tx:Landroid/support/place/music/TgsTxService;
    :cond_23
    const-string v10, "availableTxs"

    invoke-virtual {p1, v10, v9}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, rxs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/rpc/RpcData;>;"
    iget-object v10, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/place/music/TgsService;

    .line 62
    .local v5, rx:Landroid/support/place/music/TgsService;
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 63
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v5, v0}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 64
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 66
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    .end local v5           #rx:Landroid/support/place/music/TgsService;
    :cond_4b
    const-string v10, "availableRxs"

    invoke-virtual {p1, v10, v6}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, failed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/rpc/RpcData;>;"
    iget-object v10, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/place/music/TgsService;

    .line 70
    .local v7, svc:Landroid/support/place/music/TgsService;
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 71
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v7, v0}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 74
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    .end local v7           #svc:Landroid/support/place/music/TgsService;
    :cond_73
    const-string v10, "failed"

    invoke-virtual {p1, v10, v1}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/rpc/RpcData;>;"
    iget-object v10, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/music/TgsGroup;

    .line 78
    .local v2, group:Landroid/support/place/music/TgsGroup;
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 79
    .restart local v0       #d:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v2, v0}, Landroid/support/place/music/TgsGroup;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 80
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 82
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    .end local v2           #group:Landroid/support/place/music/TgsGroup;
    :cond_9b
    const-string v10, "groups"

    invoke-virtual {p1, v10, v3}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    return-void
.end method
