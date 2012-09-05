.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
.super Ljava/lang/Object;
.source "ILogUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract AppMessageCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
