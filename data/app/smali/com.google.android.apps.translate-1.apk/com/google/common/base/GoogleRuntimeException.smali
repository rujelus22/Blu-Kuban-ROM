.class public Lcom/google/common/base/GoogleRuntimeException;
.super Ljava/lang/RuntimeException;
.source "GoogleRuntimeException.java"


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
    .line 39
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 37
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/GoogleException;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/google/common/base/GoogleException;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/GoogleRuntimeException;->setInternalMessage(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/google/common/base/GoogleException;->getExternalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/GoogleRuntimeException;->setExternalMessage(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "internalMessage"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/common/base/GoogleRuntimeException;->setInternalMessage(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "externalMessage"
    .parameter "t"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const-string v0, "A system error has occurred"

    iput-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    .line 62
    invoke-static {p2}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/GoogleRuntimeException;->setInternalMessage(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/common/base/GoogleRuntimeException;->setExternalMessage(Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getExternalMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/base/GoogleRuntimeException;->internalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/common/base/GoogleRuntimeException;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExternalMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/common/base/GoogleRuntimeException;->externalMessage:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setInternalMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/common/base/GoogleRuntimeException;->internalMessage:Ljava/lang/String;

    .line 94
    return-void
.end method
