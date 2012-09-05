.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/TwitterConstrain;
.super Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.source "TwitterConstrain.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;-><init>()V

    return-void
.end method


# virtual methods
.method public commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z
    .registers 14
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"
    .parameter "isFavorite"
    .parameter "isRecommendable"
    .parameter "bIsForced"

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "like"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 33
    :cond_f
    const-string v1, "favorite"

    iput-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 34
    const-string v1, "TwitterConstrain"

    const-string v2, "commentFavoritePost()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "favoriteType is changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 39
    iget-object v1, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-nez v1, :cond_56

    .line 41
    const-string v1, "statuslist"

    iput-object v1, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 42
    const-string v1, "TwitterConstrain"

    const-string v2, "commentFavoritePost()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetType is changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_56
    iget-object v1, p8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_90

    .line 47
    iget-object v1, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-nez v1, :cond_63

    .line 66
    :goto_62
    return v0

    .line 53
    :cond_63
    iget-object v1, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    .line 63
    :goto_74
    const-string v0, "TwitterConstrain"

    const-string v1, "commentFavoritePost()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mask is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_90
    invoke-super/range {p0 .. p8}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z

    move-result v0

    goto :goto_62

    .line 59
    :cond_95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    goto :goto_74
.end method

.method public friendListRetrieveEx(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "relation"

    .prologue
    .line 80
    const-string v0, "follower"

    iput-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 82
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->friendListRetrieveEx(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 11
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 18
    iput-object v2, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 19
    iput-object v2, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 20
    iput-object v2, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 22
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public serviceProviderDeepLinkGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 11
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"
    .parameter "actorName"

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 109
    :cond_5
    :goto_5
    return v0

    .line 96
    :cond_6
    iget-object v1, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    iget-object v1, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 104
    iget-object v0, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 109
    :cond_18
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->serviceProviderDeepLinkGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    goto :goto_5
.end method
