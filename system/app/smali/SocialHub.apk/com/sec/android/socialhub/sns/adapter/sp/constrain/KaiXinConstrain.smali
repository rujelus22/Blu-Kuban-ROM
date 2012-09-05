.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/KaiXinConstrain;
.super Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.source "KaiXinConstrain.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;-><init>()V

    return-void
.end method


# virtual methods
.method public commentPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 8
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 75
    iget-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_STATUSLIST:I

    aget-object v0, v0, v1

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 80
    :cond_16
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 7
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"

    .prologue
    .line 88
    iget-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_STATUSLIST:I

    aget-object v0, v0, v1

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 93
    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 12
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 30
    iget-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 34
    iput-object v3, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 36
    iput-object v3, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 60
    :cond_17
    :goto_17
    iput-object v3, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 64
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0

    .line 40
    :cond_1e
    iget-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_REPLY:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 44
    iget-object v0, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 48
    iput-object v3, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    goto :goto_17
.end method

.method public messageThreadRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 4
    .parameter "folder"
    .parameter "threadID"

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 101
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageThreadRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method
