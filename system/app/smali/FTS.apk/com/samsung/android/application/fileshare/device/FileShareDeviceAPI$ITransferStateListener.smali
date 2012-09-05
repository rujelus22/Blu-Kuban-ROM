.class public interface abstract Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;
.super Ljava/lang/Object;
.source "FileShareDeviceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITransferStateListener"
.end annotation


# virtual methods
.method public abstract onTransferFailed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
.end method

.method public abstract onTransferFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
.end method

.method public abstract onTransferProgress(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
.end method

.method public abstract onTransferRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
.end method

.method public abstract onTransferStarted(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
.end method
