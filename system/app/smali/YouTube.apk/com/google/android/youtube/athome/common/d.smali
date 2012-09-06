.class public final Lcom/google/android/youtube/athome/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/place/rpc/RpcData;


# direct methods
.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/youtube/athome/common/d;->a:Landroid/support/place/rpc/RpcData;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/athome/common/d;->a:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/support/place/rpc/RpcData$KeyNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result p2

    .line 36
    :goto_6
    return p2

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/athome/common/d;->a:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;
    :try_end_5
    .catch Landroid/support/place/rpc/RpcData$KeyNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 52
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/athome/common/d;->a:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/support/place/rpc/RpcData$KeyNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 44
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/athome/common/d;->a:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/support/place/rpc/RpcData$KeyNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 28
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method
