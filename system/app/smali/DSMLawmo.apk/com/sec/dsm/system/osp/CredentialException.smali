.class public Lcom/sec/dsm/system/osp/CredentialException;
.super Lcom/sec/dsm/system/osp/AbstractOSPException;
.source "CredentialException.java"


# static fields
.field private static final serialVersionUID:J = -0x3616c69396177f42L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedMessage"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailedMessage"
    .parameter "throwable"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .parameter "detailedMessage"
    .parameter "throwable"
    .parameter "faultCode"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/osp/AbstractOSPException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
