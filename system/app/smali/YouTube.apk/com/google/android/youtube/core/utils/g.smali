.class public final Lcom/google/android/youtube/core/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/k;


# instance fields
.field private final a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_10

    .line 29
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_14

    .line 40
    :cond_10
    :goto_10
    :sswitch_10
    return v0

    .line 35
    :sswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 29
    nop

    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x6 -> :sswitch_10
        0x9 -> :sswitch_10
    .end sparse-switch
.end method

.method public final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 51
    :cond_e
    const-string v0, "Disconnected"

    .line 58
    :cond_10
    :goto_10
    return-object v0

    .line 53
    :cond_11
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public final e()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final f()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_1e

    .line 69
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_20

    move v0, v1

    .line 101
    :goto_12
    :pswitch_12
    :sswitch_12
    return v0

    .line 75
    :sswitch_13
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    move v0, v1

    .line 95
    goto :goto_12

    :pswitch_1c
    move v0, v1

    .line 91
    goto :goto_12

    :cond_1e
    move v0, v1

    .line 101
    goto :goto_12

    .line 69
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_13
        0x1 -> :sswitch_12
        0x6 -> :sswitch_12
        0x9 -> :sswitch_12
    .end sparse-switch

    .line 75
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_12
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
