.class public Lmyorg/bouncycastle/mail/smime/SMIMEException;
.super Ljava/lang/Exception;
.source "SMIMEException.java"


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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "name"
    .parameter "e"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEException;->e:Ljava/lang/Exception;

    .line 15
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEException;->e:Ljava/lang/Exception;

    return-object v0
.end method
