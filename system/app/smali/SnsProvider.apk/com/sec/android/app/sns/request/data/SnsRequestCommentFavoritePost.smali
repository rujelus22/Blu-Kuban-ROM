.class public Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestCommentFavoritePost.java"


# instance fields
.field private mFavoriteType:Ljava/lang/String;

.field private mMask:Ljava/lang/String;

.field private mTargetAuthorID:Ljava/lang/String;

.field private mTargetID:Ljava/lang/String;

.field private mTargetType:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 44
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetID:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetAuthorID:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetType:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p7}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mFavoriteType:Ljava/lang/String;

    .line 49
    if-eqz p8, :cond_2f

    .line 50
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mMask:Ljava/lang/String;

    .line 54
    :goto_25
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 52
    :cond_2f
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mMask:Ljava/lang/String;

    goto :goto_25
.end method


# virtual methods
.method public getFavoriteType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mFavoriteType:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mMask:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAuthorID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetAuthorID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 80
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

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTargetType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mTargetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFavoriteType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mFavoriteType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMask = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->mMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_63
    return-object v0

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method
