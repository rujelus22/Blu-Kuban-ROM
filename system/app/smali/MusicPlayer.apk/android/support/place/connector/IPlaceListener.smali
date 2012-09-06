.class public interface abstract Landroid/support/place/connector/IPlaceListener;
.super Ljava/lang/Object;
.source "IPlaceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/IPlaceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
