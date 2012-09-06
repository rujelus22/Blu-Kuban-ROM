.class final Lcom/google/android/youtube/athome/app/common/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/athome/app/common/h;

.field private b:I

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/athome/app/common/h;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/n;->a:Lcom/google/android/youtube/athome/app/common/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput p2, p0, Lcom/google/android/youtube/athome/app/common/n;->b:I

    .line 342
    iput-object p3, p0, Lcom/google/android/youtube/athome/app/common/n;->c:Ljava/lang/Object;

    .line 343
    return-void
.end method


# virtual methods
.method public final onResult([B)V
    .registers 5
    .parameter

    .prologue
    .line 346
    iget v0, p0, Lcom/google/android/youtube/athome/app/common/n;->b:I

    sparse-switch v0, :sswitch_data_52

    .line 369
    :goto_5
    return-void

    .line 350
    :sswitch_6
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    const-string v1, "_result"

    sget-object v2, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/athome/app/common/j;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/athome/app/common/j;->a(Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;)V

    goto :goto_5

    .line 355
    :sswitch_1d
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/athome/app/common/l;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/athome/app/common/l;->a(I)V

    goto :goto_5

    .line 360
    :sswitch_30
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/athome/app/common/k;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/athome/app/common/k;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 365
    :sswitch_43
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    const-string v1, "_result"

    sget-object v2, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    iget-object v0, p0, Lcom/google/android/youtube/athome/app/common/n;->c:Ljava/lang/Object;

    goto :goto_5

    .line 346
    :sswitch_data_52
    .sparse-switch
        0x7 -> :sswitch_6
        0xa -> :sswitch_1d
        0xd -> :sswitch_30
        0x10 -> :sswitch_43
    .end sparse-switch
.end method
