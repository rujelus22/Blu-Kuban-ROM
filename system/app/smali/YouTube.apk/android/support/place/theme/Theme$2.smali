.class final Landroid/support/place/theme/Theme$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/support/place/theme/Theme$2;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/theme/Theme;

    move-result-object v0

    return-object v0
.end method

.method public final createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/theme/Theme;
    .registers 3
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/support/place/theme/Theme;

    invoke-direct {v0, p1}, Landroid/support/place/theme/Theme;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v0
.end method
