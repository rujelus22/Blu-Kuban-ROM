.class public interface abstract Lcom/google/tts/ITtsCallbackBeta;
.super Ljava/lang/Object;
.source "ITtsCallbackBeta.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ITtsCallbackBeta$Stub;
    }
.end annotation


# virtual methods
.method public abstract utteranceCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
