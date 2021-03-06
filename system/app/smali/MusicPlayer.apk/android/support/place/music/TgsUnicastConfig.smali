.class public Landroid/support/place/music/TgsUnicastConfig;
.super Ljava/lang/Object;
.source "TgsUnicastConfig.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/music/TgsUnicastConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCncAddress:Ljava/lang/String;

.field private mCncPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Landroid/support/place/music/TgsUnicastConfig$1;

    invoke-direct {v0}, Landroid/support/place/music/TgsUnicastConfig$1;-><init>()V

    sput-object v0, Landroid/support/place/music/TgsUnicastConfig;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 21
    const-string v0, "cncAddress"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cncPort"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/place/music/TgsUnicastConfig;-><init>(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "cncAddress"
    .parameter "cncPort"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/support/place/music/TgsUnicastConfig;->mCncAddress:Ljava/lang/String;

    .line 17
    iput p2, p0, Landroid/support/place/music/TgsUnicastConfig;->mCncPort:I

    .line 18
    return-void
.end method


# virtual methods
.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "dest"

    .prologue
    .line 26
    const-string v0, "cncAddress"

    iget-object v1, p0, Landroid/support/place/music/TgsUnicastConfig;->mCncAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "cncPort"

    iget v1, p0, Landroid/support/place/music/TgsUnicastConfig;->mCncPort:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 28
    return-void
.end method
