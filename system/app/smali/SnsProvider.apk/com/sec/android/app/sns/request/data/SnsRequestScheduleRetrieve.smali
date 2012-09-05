.class public Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestScheduleRetrieve.java"


# instance fields
.field private mInternalSp:I

.field private mMaxCount:I

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I


# direct methods
.method public constructor <init>(IIZIIIILjava/lang/String;)V
    .registers 15
    .parameter "appID"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"
    .parameter "internalSp"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 42
    const/16 v2, 0x10

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(IIIZI)V

    .line 43
    iput p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartOffset:I

    .line 44
    iput p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mMaxCount:I

    .line 45
    invoke-virtual {p0, p8}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartContext:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mInternalSp:I

    .line 48
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public getInternalSp()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mInternalSp:I

    return v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mMaxCount:I

    return v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 70
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

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mInternalSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->mStartContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_63
    return-object v0

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method
