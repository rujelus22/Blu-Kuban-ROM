.class public Landroid/support/place/music/TgsRxVolume;
.super Ljava/lang/Object;
.source "TgsRxVolume.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/music/TgsRxVolume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMute:Z

.field private mRxId:Ljava/lang/String;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Landroid/support/place/music/TgsRxVolume$1;

    invoke-direct {v0}, Landroid/support/place/music/TgsRxVolume$1;-><init>()V

    sput-object v0, Landroid/support/place/music/TgsRxVolume;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 24
    const-string v0, "rxId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "volume"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "mute"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/place/music/TgsRxVolume;-><init>(Ljava/lang/String;FZ)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FZ)V
    .registers 4
    .parameter "rxId"
    .parameter "volume"
    .parameter "mute"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/support/place/music/TgsRxVolume;->mRxId:Ljava/lang/String;

    .line 19
    iput p2, p0, Landroid/support/place/music/TgsRxVolume;->mVolume:F

    .line 20
    iput-boolean p3, p0, Landroid/support/place/music/TgsRxVolume;->mMute:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getMute()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/place/music/TgsRxVolume;->mMute:Z

    return v0
.end method

.method public getRxId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/place/music/TgsRxVolume;->mRxId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Landroid/support/place/music/TgsRxVolume;->mVolume:F

    return v0
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "dest"

    .prologue
    .line 29
    const-string v0, "rxId"

    iget-object v1, p0, Landroid/support/place/music/TgsRxVolume;->mRxId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "volume"

    iget v1, p0, Landroid/support/place/music/TgsRxVolume;->mVolume:F

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 31
    const-string v0, "mute"

    iget-boolean v1, p0, Landroid/support/place/music/TgsRxVolume;->mMute:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method
