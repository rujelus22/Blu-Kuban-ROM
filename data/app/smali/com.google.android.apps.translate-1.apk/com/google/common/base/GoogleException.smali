.class public Lcom/google/common/base/GoogleException;
.super Ljava/lang/Exception;
.source "GoogleException.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private externalMessage:Ljava/lang/String;

.field private internalMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "internalMessage"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/common/base/GoogleException;->setInternalMessage(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "internalMessage"
    .parameter "externalMessage"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/common/base/GoogleException;->setInternalMessage(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/google/common/base/GoogleException;->setExternalMessage(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 35
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/GoogleException;->setInternalMessage(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .parameter "t"
    .parameter "externalMessage"

    .prologue
    .line 58
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/GoogleException;->setInternalMessage(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/common/base/GoogleException;->setExternalMessage(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 90
    const/16 v0, -0x3e7

    return v0
.end method

.method public getExternalMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/base/GoogleException;->internalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/common/base/GoogleException;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExternalMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/common/base/GoogleException;->externalMessage:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setInternalMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/common/base/GoogleException;->internalMessage:Ljava/lang/String;

    .line 104
    return-void
.end method
