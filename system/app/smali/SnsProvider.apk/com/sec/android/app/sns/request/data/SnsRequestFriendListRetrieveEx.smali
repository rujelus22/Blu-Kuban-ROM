.class public Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestFriendListRetrieveEx.java"


# instance fields
.field private mFullResponseTime:Ljava/lang/String;

.field private mMaxCount:I

.field private mPeopleID:Ljava/lang/String;

.field private mRelationType:Ljava/lang/String;

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I

.field private mUpdatedResponseTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "relationType"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"
    .parameter "fullResponseTime"
    .parameter "updatedResponseTime"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 49
    iput p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartOffset:I

    .line 50
    iput p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mMaxCount:I

    .line 51
    invoke-virtual {p0, p7}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartContext:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mFullResponseTime:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mUpdatedResponseTime:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mRelationType:Ljava/lang/String;

    .line 55
    const-string v0, "owner"

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mPeopleID:Ljava/lang/String;

    .line 56
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public getFullResponseTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mFullResponseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mMaxCount:I

    return v0
.end method

.method public getPeopleID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mPeopleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mRelationType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartOffset:I

    return v0
.end method

.method public getUpdatedResponseTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mUpdatedResponseTime:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mFullResponseTime = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mFullResponseTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mUpdatedResponseTime = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mUpdatedResponseTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->mStartContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_75
    return-object v0

    :cond_76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_75
.end method
