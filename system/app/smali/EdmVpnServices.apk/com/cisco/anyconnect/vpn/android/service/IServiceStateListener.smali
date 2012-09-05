.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
.super Ljava/lang/Object;
.source "IServiceStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract ServiceReadyCB()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ServiceShutdownCB(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
