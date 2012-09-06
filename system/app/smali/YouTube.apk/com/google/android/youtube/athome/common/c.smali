.class public abstract Lcom/google/android/youtube/athome/common/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
.end method

.method public final createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/youtube/athome/common/d;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/athome/common/d;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/athome/common/c;->a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    return-object v0
.end method
