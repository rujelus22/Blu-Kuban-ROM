.class public Landroid/support/place/music/TgsGroup;
.super Ljava/lang/Object;
.source "TgsGroup.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/music/TgsGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCncAddr:Ljava/lang/String;

.field private mCncPort:I

.field private mGroupId:Ljava/lang/String;

.field private mIsPlaying:Z

.field private mRxs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/music/TgsService;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:Ljava/lang/String;

.field private mTx:Landroid/support/place/music/TgsTxService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/support/place/music/TgsGroup$1;

    invoke-direct {v0}, Landroid/support/place/music/TgsGroup$1;-><init>()V

    sput-object v0, Landroid/support/place/music/TgsGroup;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, "groupId"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    .line 41
    const-string v2, "sessionId"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

    .line 42
    new-instance v2, Landroid/support/place/music/TgsTxService;

    const-string v3, "groupTx"

    invoke-virtual {p1, v3}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/place/music/TgsTxService;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    .line 44
    const-string v2, "cncAddr"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 45
    const-string v2, "cncAddr"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    .line 46
    const-string v2, "cncPort"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    .line 51
    :goto_38
    const-string v2, "isPlaying"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    .line 54
    const-string v2, "groupRxs"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/rpc/RpcData;

    .line 55
    .local v1, rx:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v1}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 48
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #rx:Landroid/support/place/rpc/RpcData;
    :cond_68
    const-string v2, "multicastAddr"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    .line 49
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    goto :goto_38

    .line 57
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_74
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getRxs()Ljava/util/List;
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
    .line 116
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTx()Landroid/support/place/music/TgsTxService;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 83
    .local v0, dest:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsGroup;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TgsGroup("

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
    .registers 9
    .parameter "dest"

    .prologue
    .line 61
    const-string v5, "groupId"

    iget-object v6, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "sessionId"

    iget-object v6, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v5, "cncAddr"

    iget-object v6, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v5, "cncPort"

    iget v6, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    invoke-virtual {p1, v5, v6}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 65
    const-string v5, "isPlaying"

    iget-boolean v6, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    invoke-virtual {p1, v5, v6}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    new-instance v4, Landroid/support/place/rpc/RpcData;

    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 68
    .local v4, txd:Landroid/support/place/rpc/RpcData;
    iget-object v5, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    invoke-virtual {v5, v4}, Landroid/support/place/music/TgsTxService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 69
    const-string v5, "groupTx"

    invoke-virtual {p1, v5, v4}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, rxs:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/rpc/RpcData;>;"
    iget-object v5, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/music/TgsService;

    .line 73
    .local v2, rx:Landroid/support/place/music/TgsService;
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 74
    .local v0, d:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v2, v0}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 75
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 77
    .end local v0           #d:Landroid/support/place/rpc/RpcData;
    .end local v2           #rx:Landroid/support/place/music/TgsService;
    :cond_55
    const-string v5, "groupRxs"

    invoke-virtual {p1, v5, v3}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    return-void
.end method
