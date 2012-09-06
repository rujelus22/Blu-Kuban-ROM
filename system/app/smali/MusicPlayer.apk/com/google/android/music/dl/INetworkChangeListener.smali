.class public interface abstract Lcom/google/android/music/dl/INetworkChangeListener;
.super Ljava/lang/Object;
.source "INetworkChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/INetworkChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNetworkChanged(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
