.class public Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestCommentPost.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mTargetAuthorID:Ljava/lang/String;

.field private mTargetID:Ljava/lang/String;

.field private mTargetSubID:Ljava/lang/String;

.field private mTargetType:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 44
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetID:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetAuthorID:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetType:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetSubID:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p8}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mContent:Ljava/lang/String;

    .line 50
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAuthorID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetAuthorID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSubID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetSubID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 76
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

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTargetAuthorID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetAuthorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTargetType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTargetSubID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mTargetSubID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mContent = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_75
    return-object v0

    :cond_76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_75
.end method
