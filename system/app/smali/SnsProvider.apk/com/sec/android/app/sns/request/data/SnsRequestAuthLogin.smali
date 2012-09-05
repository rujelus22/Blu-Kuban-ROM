.class public Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestAuthLogin.java"


# instance fields
.field private mPwd:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mbResetSession:Z

.field private mbUseCryptoSessionKey:Z


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "id"
    .parameter "pwd"
    .parameter "bResetSession"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 41
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mUid:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mPwd:Ljava/lang/String;

    .line 43
    iput-boolean p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mbResetSession:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mbUseCryptoSessionKey:Z

    .line 46
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method public getPWD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionResetFlag()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mbResetSession:Z

    return v0
.end method

.method public getUID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCryptoSessionKey()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->mbUseCryptoSessionKey:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
