.class public interface abstract Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;
.super Ljava/lang/Object;
.source "ISocialHubServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessageReponse(IIZILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
