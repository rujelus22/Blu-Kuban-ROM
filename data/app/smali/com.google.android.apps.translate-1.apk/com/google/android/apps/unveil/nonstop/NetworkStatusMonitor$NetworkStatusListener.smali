.class public interface abstract Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStatusListener"
.end annotation


# virtual methods
.method public abstract onNetworkError(I)V
.end method

.method public abstract onNetworkRecovered()V
.end method
