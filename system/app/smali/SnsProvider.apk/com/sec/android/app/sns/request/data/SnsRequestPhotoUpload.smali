.class public Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestPhotoUpload.java"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

.field private mSpTypeList:[I

.field public mTag:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 12
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"
    .parameter "fileName"
    .parameter "content"
    .parameter "title"
    .parameter "tag"
    .parameter "pfd"

    .prologue
    const/4 v2, 0x0

    .line 55
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 57
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mFileName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mContent:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mTitle:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p7}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mTag:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    .line 66
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDesc()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getSpTypeList()[I
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasSpType(I)Z
    .registers 7
    .parameter "spType"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_f

    aget v1, v0, v2

    .line 77
    .local v1, i:I
    if-ne p1, v1, :cond_c

    .line 78
    const/4 v4, 0x1

    .line 80
    .end local v1           #i:I
    :goto_b
    return v4

    .line 76
    .restart local v1       #i:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 80
    .end local v1           #i:I
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, spTypeInt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->mSpTypeList:[I

    aget v2, v2, v0

    xor-int/lit8 v3, v0, 0xa

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_12
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    :goto_20
    return-object v2

    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_20
.end method
