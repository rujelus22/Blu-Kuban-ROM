.class public final Lcom/google/android/music/athome/api/AtHomeApiUtils;
.super Ljava/lang/Object;
.source "AtHomeApiUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLongs(Landroid/support/place/rpc/RpcData;)[J
    .registers 10
    .parameter "data"

    .prologue
    .line 35
    const-string v6, "longs"

    invoke-virtual {p0, v6}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, str:Ljava/lang/String;
    if-nez v5, :cond_a

    .line 37
    const/4 v2, 0x0

    .line 54
    :cond_9
    return-object v2

    .line 39
    :cond_a
    const-string v6, "size"

    invoke-virtual {p0, v6}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 40
    .local v4, size:I
    new-array v2, v4, [J

    .line 41
    .local v2, longs:[J
    if-lez v4, :cond_9

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, i:I
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, scanner:Ljava/util/Scanner;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 45
    :goto_1f
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLong()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 46
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v6

    aput-wide v6, v2, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1f

    .line 48
    :cond_2f
    if-eq v0, v4, :cond_9

    .line 49
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse the array of longs. Expecting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " elements. Got:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static toRpcData([J)Landroid/support/place/rpc/RpcData;
    .registers 5
    .parameter "longs"

    .prologue
    .line 22
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 23
    .local v0, data:Landroid/support/place/rpc/RpcData;
    if-nez p0, :cond_e

    .line 24
    const-string v2, "longs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_d
    return-object v0

    .line 26
    :cond_e
    const-string v2, ","

    invoke-static {v2, p0}, Lcom/google/common/primitives/Longs;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, str:Ljava/lang/String;
    const-string v2, "longs"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "size"

    array-length v3, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    goto :goto_d
.end method
