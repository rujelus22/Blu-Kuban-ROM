.class public Lcom/sec/dsm/system/DSMException;
.super Lcom/sec/dsm/system/osp/AbstractOSPException;
.source "DSMException.java"


# static fields
.field private static final serialVersionUID:J = 0x3dbc13270d7e8778L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedMessage"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailedMessage"
    .parameter "throwable"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .parameter "detailedMessage"
    .parameter "throwable"
    .parameter "faultCode"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
