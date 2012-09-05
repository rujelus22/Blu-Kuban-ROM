.class public Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestFriendGroupingGet.java"


# instance fields
.field private mMaxCount:I

.field private mRelation:Ljava/lang/String;

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "peopleID"
    .parameter "relation"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 43
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mRelation:Ljava/lang/String;

    .line 44
    iput p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartOffset:I

    .line 45
    iput p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mMaxCount:I

    .line 46
    invoke-virtual {p0, p8}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartContext:Ljava/lang/String;

    .line 48
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public getMaxCount()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mMaxCount:I

    return v0
.end method

.method public getRelation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mRelation:Ljava/lang/String;

    return-object v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartOffset:I

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

    const-string v1, ": mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mStartContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRelation = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->mRelation:Ljava/lang/String;

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
