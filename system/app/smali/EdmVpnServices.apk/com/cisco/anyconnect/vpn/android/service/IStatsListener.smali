.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
.super Ljava/lang/Object;
.source "IStatsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
