.class public Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestPhotoUploadBody.java"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

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
    .line 46
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 48
    iput p3, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mParentReqID:I

    .line 49
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mFileName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->setUrl(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mResourceID:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    .line 54
    const-string v0, "PUT"

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpMethod:Ljava/lang/String;

    .line 56
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDesc()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getParentRequestID()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mParentReqID:I

    return v0
.end method

.method public getResourceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->mResourceID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
