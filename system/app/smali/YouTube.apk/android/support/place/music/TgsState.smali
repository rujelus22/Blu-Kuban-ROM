.class public Landroid/support/place/music/TgsState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final FIELD_AVAILABLE_RXS:Ljava/lang/String; = "availableRxs"

.field private static final FIELD_AVAILABLE_TXS:Ljava/lang/String; = "availableTxs"

.field private static final FIELD_FAILED:Ljava/lang/String; = "failed"

.field private static final FIELD_GROUPS:Ljava/lang/String; = "groups"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mAvailableRxs:Ljava/util/ArrayList;

.field private mAvailableTxs:Ljava/util/ArrayList;

.field private mFailed:Ljava/util/ArrayList;

.field private mGroups:Ljava/util/ArrayList;


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
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/place/music/TgsState;-><init>()V

    .line 33
    const-string v0, "availableTxs"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 34
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsTxService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsTxService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 37
    :cond_24
    const-string v0, "availableRxs"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 38
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 41
    :cond_45
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 42
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 45
    :cond_66
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 46
    iget-object v2, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsGroup;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsGroup;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 48
    :cond_87
    return-void
.end method


# virtual methods
.method public getAvailableRxs()Ljava/util/List;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvailableTxs()Ljava/util/List;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFailed()Ljava/util/List;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .registers 2

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
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsState;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TgsState("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 6
    .parameter

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableTxs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsTxService;

    .line 54
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 55
    invoke-virtual {v0, v3}, Landroid/support/place/music/TgsTxService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 58
    :cond_23
    const-string v0, "availableTxs"

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mAvailableRxs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    .line 62
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 63
    invoke-virtual {v0, v3}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 66
    :cond_4b
    const-string v0, "availableRxs"

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mFailed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    .line 70
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 71
    invoke-virtual {v0, v3}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 74
    :cond_73
    const-string v0, "failed"

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v0, p0, Landroid/support/place/music/TgsState;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsGroup;

    .line 78
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 79
    invoke-virtual {v0, v3}, Landroid/support/place/music/TgsGroup;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 82
    :cond_9b
    const-string v0, "groups"

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    return-void
.end method
