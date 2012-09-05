.class public interface abstract Lcom/sec/print/mobileprint/IPrintStatusCallback;
.super Ljava/lang/Object;
.source "IPrintStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/IPrintStatusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract statusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
