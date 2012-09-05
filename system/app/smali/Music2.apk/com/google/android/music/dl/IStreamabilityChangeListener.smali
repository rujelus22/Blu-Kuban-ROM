.class public interface abstract Lcom/google/android/music/dl/IStreamabilityChangeListener;
.super Ljava/lang/Object;
.source "IStreamabilityChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStreamabilityChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
