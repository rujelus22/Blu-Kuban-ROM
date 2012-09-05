.class public Lcom/sec/dsm/system/osp/DeviceException;
.super Lcom/sec/dsm/system/osp/AbstractOSPException;
.source "DeviceException.java"


# static fields
.field private static final serialVersionUID:J = 0x7b28f81efdd8b401L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedMessage"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailedMessage"
    .parameter "throwable"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .parameter "detailedMessage"
    .parameter "throwable"
    .parameter "faultCode"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
