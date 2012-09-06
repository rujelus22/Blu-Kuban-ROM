.class Lcom/google/android/music/dl/NetworkMonitor$2;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 320
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->getIsStreamingAvailable()Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1600(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    .line 324
    .local v0, newIsAvail:Z
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersNetworkChanged()V
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1700(Lcom/google/android/music/dl/NetworkMonitor;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v1

    if-ne v0, v1, :cond_14

    .line 340
    :goto_13
    return-void

    .line 329
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z
    invoke-static {v1, v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$1802(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 331
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$200()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 332
    const-string v2, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity status changed to ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "CONNTECTED"

    :goto_36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "wifi: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$600(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mobile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$400(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ethernet: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_77
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersStreamabilityChanged(Z)V
    invoke-static {v1, v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$1900(Lcom/google/android/music/dl/NetworkMonitor;Z)V

    .line 339
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$2;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_13

    .line 332
    :cond_8a
    const-string v1, "NOT CONNECTED"

    goto :goto_36
.end method
