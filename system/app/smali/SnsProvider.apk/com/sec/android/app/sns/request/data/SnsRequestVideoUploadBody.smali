.class public Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestVideoUploadBody.java"


# instance fields
.field private mFileName:Ljava/lang/String;

.field public mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

.field private mParentReqID:I

.field private mResourceID:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .parameter "appID"
    .parameter "reqType"
    .parameter "parentReqID"
    .parameter "fileName"
    .parameter "uploadHostAddr"
    .parameter "resourceID"
    .parameter "pfd"

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 47
    iput p3, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mParentReqID:I

    .line 48
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mFileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->setUrl(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mResourceID:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    .line 53
    const-string v0, "PUT"

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpMethod:Ljava/lang/String;

    .line 55
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDesc()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getParentRequestID()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mParentReqID:I

    return v0
.end method

.method public getResourceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mResourceID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mFileName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getUrl() = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mResourceID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mResourceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mParcelFileDesc = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_69
    return-object v0

    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method
