.class final Lcom/google/android/apps/unveil/network/AbstractConnector$1;
.super Ljava/lang/Object;
.source "AbstractConnector.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;->connectionManagerConnectivityProvider(Landroid/net/ConnectivityManager;)Lcom/google/android/apps/unveil/env/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
