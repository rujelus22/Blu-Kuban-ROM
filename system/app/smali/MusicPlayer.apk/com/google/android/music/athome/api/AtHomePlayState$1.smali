.class final Lcom/google/android/music/athome/api/AtHomePlayState$1;
.super Ljava/lang/Object;
.source "AtHomePlayState.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/api/AtHomePlayState;
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
        "Lcom/google/android/music/athome/api/AtHomePlayState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter "x0"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomePlayState$1;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Lcom/google/android/music/athome/api/AtHomePlayState;

    move-result-object v0

    return-object v0
.end method

.method public createFromRpcData(Landroid/support/place/rpc/RpcData;)Lcom/google/android/music/athome/api/AtHomePlayState;
    .registers 3
    .parameter "data"

    .prologue
    .line 184
    new-instance v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-direct {v0, p1}, Lcom/google/android/music/athome/api/AtHomePlayState;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v0
.end method
