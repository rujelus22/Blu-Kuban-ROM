.class public Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestAuthKeyResolve.java"


# instance fields
.field private mOriginalReqID:I

.field private mbUseCryptoSessionKey:Z


# direct methods
.method public constructor <init>(IIII)V
    .registers 7
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "originalReqID"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->mbUseCryptoSessionKey:Z

    .line 35
    iput p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->mOriginalReqID:I

    .line 37
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method


# virtual methods
.method public getUseCryptoSessionKey()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->mbUseCryptoSessionKey:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOriginalReqID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->mOriginalReqID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method
