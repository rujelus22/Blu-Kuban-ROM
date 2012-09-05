.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger;
.super Ljava/lang/Object;
.source "IVpnLogger.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger$Stub;
    }
.end annotation


# virtual methods
.method public abstract GetAllMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
