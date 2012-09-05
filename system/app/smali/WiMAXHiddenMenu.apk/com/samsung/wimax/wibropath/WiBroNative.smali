.class public Lcom/samsung/wimax/wibropath/WiBroNative;
.super Ljava/lang/Object;
.source "WiBroNative.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    :try_start_0
    const-string v1, "WiMAXNative"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 14
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    return-void

    .line 10
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 12
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected LogMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 22
    const-string v0, "WMD MSG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method protected native closeDevice()I
.end method

.method protected native closeDriver()I
.end method

.method protected native openDevice()I
.end method

.method protected native wibropathchange(I)I
.end method
