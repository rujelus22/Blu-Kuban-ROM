.class public Landroid/support/place/music/TgsGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final FIELD_CNC_ADDR:Ljava/lang/String; = "cncAddr"

.field private static final FIELD_CNC_PORT:Ljava/lang/String; = "cncPort"

.field private static final FIELD_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final FIELD_GROUP_RXS:Ljava/lang/String; = "groupRxs"

.field private static final FIELD_GROUP_TX:Ljava/lang/String; = "groupTx"

.field private static final FIELD_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field private static final FIELD_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mCncAddr:Ljava/lang/String;

.field private mCncPort:I

.field private mGroupId:Ljava/lang/String;

.field private mIsPlaying:Z

.field private mRxs:Ljava/util/ArrayList;

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
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    .line 41
    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/support/place/music/TgsTxService;

    const-string v1, "groupTx"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/music/TgsTxService;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    .line 44
    const-string v0, "cncAddr"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 45
    const-string v0, "cncAddr"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    .line 46
    const-string v0, "cncPort"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    .line 51
    :goto_38
    const-string v0, "isPlaying"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    .line 54
    const-string v0, "groupRxs"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 55
    iget-object v2, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/place/music/TgsService;

    invoke-direct {v3, v0}, Landroid/support/place/music/TgsService;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 48
    :cond_68
    const-string v0, "multicastAddr"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    goto :goto_38

    .line 57
    :cond_74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/music/TgsTxService;Ljava/lang/String;IZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    .line 33
    iput-object p4, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    .line 34
    iput p5, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    .line 36
    iput-boolean p6, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getCncAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getCncPort()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlaying()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    return v0
.end method

.method public getRxs()Ljava/util/List;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsGroup;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TgsGroup("

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
    .line 61
    const-string v0, "groupId"

    iget-object v1, p0, Landroid/support/place/music/TgsGroup;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "sessionId"

    iget-object v1, p0, Landroid/support/place/music/TgsGroup;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "cncAddr"

    iget-object v1, p0, Landroid/support/place/music/TgsGroup;->mCncAddr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "cncPort"

    iget v1, p0, Landroid/support/place/music/TgsGroup;->mCncPort:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 65
    const-string v0, "isPlaying"

    iget-boolean v1, p0, Landroid/support/place/music/TgsGroup;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 68
    iget-object v1, p0, Landroid/support/place/music/TgsGroup;->mTx:Landroid/support/place/music/TgsTxService;

    invoke-virtual {v1, v0}, Landroid/support/place/music/TgsTxService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 69
    const-string v1, "groupTx"

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v0, p0, Landroid/support/place/music/TgsGroup;->mRxs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    .line 73
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 74
    invoke-virtual {v0, v3}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 77
    :cond_55
    const-string v0, "groupRxs"

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    return-void
.end method
