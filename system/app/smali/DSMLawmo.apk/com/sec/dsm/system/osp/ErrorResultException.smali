.class public Lcom/sec/dsm/system/osp/ErrorResultException;
.super Ljava/lang/Exception;
.source "ErrorResultException.java"


# static fields
.field private static final serialVersionUID:J = -0x3616ee28603b7f42L


# instance fields
.field private faultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "detailedMessage"
    .parameter "faultCode"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/sec/dsm/system/osp/ErrorResultException;->setFaultCode(Ljava/lang/String;)V

    .line 74
    const-string v0, "ErrorResult.message"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailedMessage"
    .parameter "throwable"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFaultCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResultException;->faultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setFaultCode(Ljava/lang/String;)V
    .registers 2
    .parameter "faultCode"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/dsm/system/osp/ErrorResultException;->faultCode:Ljava/lang/String;

    .line 111
    return-void
.end method
