.class public interface abstract Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;
.super Ljava/lang/Object;
.source "FileShareDeviceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISessionRequestReceivedListener"
.end annotation


# virtual methods
.method public abstract onCancelSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
.end method

.method public abstract onCloseSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
.end method

.method public abstract onCreateSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
.end method
