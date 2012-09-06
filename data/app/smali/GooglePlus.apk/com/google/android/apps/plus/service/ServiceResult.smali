.class public Lcom/google/android/apps/plus/service/ServiceResult;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# instance fields
.field private final mErrorCode:I

.field private final mException:Ljava/lang/Exception;

.field private final mReasonPhrase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 25
    const/16 v0, 0xc8

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "exception"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mErrorCode:I

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mReasonPhrase:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mException:Ljava/lang/Exception;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/network/HttpOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mErrorCode:I

    .line 48
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mReasonPhrase:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mException:Ljava/lang/Exception;

    .line 50
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mErrorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mErrorCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 82
    const-string v0, "ServiceResult(errorCode=%d, reasonPhrase=%s, exception=%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mErrorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mReasonPhrase:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ServiceResult;->mException:Ljava/lang/Exception;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
