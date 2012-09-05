.class public interface abstract Lcom/sec/android/app/sns/ISnsRequesterCallback;
.super Ljava/lang/Object;
.source "ISnsRequesterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
