.class public Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestCommentFavoriteGetUser.java"


# instance fields
.field private mMaxCount:I

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I

.field private mTargetID:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;IILjava/lang/String;)V
    .registers 10
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 42
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mTargetID:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartOffset:I

    .line 44
    iput p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mMaxCount:I

    .line 45
    invoke-virtual {p0, p7}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartContext:Ljava/lang/String;

    .line 47
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method


# virtual methods
.method public getMaxCount()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mMaxCount:I

    return v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartOffset:I

    return v0
.end method

.method public getTargetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mTargetID:Ljava/lang/String;

    return-object v0
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

    const-string v1, ": mTargetID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mTargetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartOffset = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMaxCount = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartContext = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->mStartContext:Ljava/lang/String;

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
