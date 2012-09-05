.class public Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CachingImageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/common/CachingImageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityChangeReceiver"
.end annotation


# instance fields
.field private mLastConnected:Z

.field final synthetic this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;->this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 188
    :cond_c
    :goto_c
    return-void

    .line 180
    :cond_d
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 182
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;->mLastConnected:Z

    if-eq v1, v2, :cond_c

    .line 183
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;->mLastConnected:Z

    .line 184
    iget-boolean v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;->mLastConnected:Z

    if-eqz v1, :cond_c

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;->this$0:Lcom/google/android/apps/books/common/CachingImageManagerProxy;

    invoke-virtual {v1}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->clearExceptions()V

    goto :goto_c
.end method
