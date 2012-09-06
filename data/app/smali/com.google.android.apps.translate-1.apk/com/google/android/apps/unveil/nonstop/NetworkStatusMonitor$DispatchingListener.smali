.class public final Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$DispatchingListener;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"

# interfaces
.implements Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DispatchingListener"
.end annotation


# instance fields
.field private final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, delegates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$DispatchingListener;->delegates:Ljava/util/List;

    .line 91
    return-void
.end method


# virtual methods
.method public onNetworkError(I)V
    .registers 5
    .parameter "statusCode"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$DispatchingListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

    .line 96
    .local v1, l:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;->onNetworkError(I)V

    goto :goto_6

    .line 98
    .end local v1           #l:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
    :cond_16
    return-void
.end method

.method public onNetworkRecovered()V
    .registers 4

    .prologue
    .line 102
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$DispatchingListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

    .line 103
    .local v1, l:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;->onNetworkRecovered()V

    goto :goto_6

    .line 105
    .end local v1           #l:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
    :cond_16
    return-void
.end method
