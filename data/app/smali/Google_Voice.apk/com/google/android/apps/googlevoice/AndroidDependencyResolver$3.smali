.class Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$3;
.super Ljava/lang/Object;
.source "AndroidDependencyResolver.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ConnectionInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$3;->this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNetworkConnection()Z
    .registers 5

    .prologue
    .line 699
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$3;->this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->access$000(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 701
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 702
    .local v1, currentInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method
