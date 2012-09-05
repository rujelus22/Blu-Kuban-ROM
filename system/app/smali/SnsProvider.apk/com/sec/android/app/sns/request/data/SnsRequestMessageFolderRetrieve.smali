.class public Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestMessageFolderRetrieve.java"


# instance fields
.field private mInternalSp:I

.field private mMaxCount:I

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I

.field private mTimeLimitEndTime:Ljava/lang/Long;

.field private mTimeLimitIntervalEndDay:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZIILjava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V
    .registers 18
    .parameter "appID"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"
    .parameter "internalSp"
    .parameter "timeLimitIntervalEndDay"
    .parameter "timeLimitEndTime"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 47
    const/16 v3, 0x10

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(IIIZI)V

    .line 26
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mInternalSp:I

    .line 48
    iput p8, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartOffset:I

    .line 49
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mMaxCount:I

    .line 50
    move-object/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartContext:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mInternalSp:I

    .line 52
    iput-object p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitIntervalEndDay:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_34

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    .line 58
    :cond_34
    const-string v1, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method


# virtual methods
.method public getInternalSp()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mInternalSp:I

    return v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mMaxCount:I

    return v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartOffset:I

    return v0
.end method

.method public getTimeLimitEndTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimeLimitIntervalEndDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitIntervalEndDay:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mInternalSp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mInternalSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTimeLimitIntervalEndDay = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitIntervalEndDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTimeLimitEndTime = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mTimeLimitEndTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->mStartContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_87
    return-object v0

    :cond_88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_87
.end method
