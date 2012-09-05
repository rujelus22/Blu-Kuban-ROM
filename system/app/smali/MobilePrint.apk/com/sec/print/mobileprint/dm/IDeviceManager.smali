.class public interface abstract Lcom/sec/print/mobileprint/dm/IDeviceManager;
.super Ljava/lang/Object;
.source "IDeviceManager.java"


# virtual methods
.method public abstract getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrinters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScanners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
.end method

.method public abstract isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
.end method

.method public abstract startDiscovery(Z)I
.end method

.method public abstract stopDiscovery()I
.end method
