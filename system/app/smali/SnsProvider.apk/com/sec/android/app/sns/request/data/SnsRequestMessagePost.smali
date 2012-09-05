.class public Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestMessagePost.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mPostType:Ljava/lang/String;

.field private mReceiverIDs:[Ljava/lang/String;

.field private mReplyFolder:Ljava/lang/String;

.field private mReplyMessageID:Ljava/lang/String;

.field private mReplyThreadID:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 49
    iput-object p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mPostType:Ljava/lang/String;

    .line 50
    if-eqz p5, :cond_19

    .line 51
    array-length v1, p5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReceiverIDs:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v1, p5

    if-ge v0, v1, :cond_1c

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReceiverIDs:[Ljava/lang/String;

    aget-object v2, p5, v0

    aput-object v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 56
    .end local v0           #i:I
    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReceiverIDs:[Ljava/lang/String;

    .line 59
    :cond_1c
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mContent:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p8}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyMessageID:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p9}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyThreadID:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p10}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyFolder:Ljava/lang/String;

    .line 65
    const-string v1, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPostType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mPostType:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverID()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReceiverIDs:[Ljava/lang/String;

    return-object v0
.end method

.method public getReplyFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyMessageID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyMessageID:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyThreadID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyThreadID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : mPostType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mPostType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mReceiverID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReceiverIDs:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTitle = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mContent = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mReplyMessageID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mReplyThreadID = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyThreadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mReplyFolder = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->mReplyFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_99
    return-object v0

    :cond_9a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_99
.end method
