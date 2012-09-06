.class public interface abstract Landroid/support/place/beacon/IBeaconScannerListener;
.super Ljava/lang/Object;
.source "IBeaconScannerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/beacon/IBeaconScannerListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBeaconsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/beacon/BeaconInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
