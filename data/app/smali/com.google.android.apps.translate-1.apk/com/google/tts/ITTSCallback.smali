.class public interface abstract Lcom/google/tts/ITTSCallback;
.super Ljava/lang/Object;
.source "ITTSCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ITTSCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract markReached(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
