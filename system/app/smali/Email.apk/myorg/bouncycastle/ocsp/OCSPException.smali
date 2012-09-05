.class public Lmyorg/bouncycastle/ocsp/OCSPException;
.super Ljava/lang/Exception;
.source "OCSPException.java"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/OCSPException;->e:Ljava/lang/Exception;

    return-object v0
.end method
