.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/MixiConstrain;
.super Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.source "MixiConstrain.java"


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
    .registers 13
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"
    .parameter "isFavorite"
    .parameter "isRecommendable"
    .parameter "bIsForced"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 51
    iget-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "like"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 53
    :cond_10
    const-string v1, "like"

    iput-object v1, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 56
    :cond_14
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 58
    iget-object v1, p8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_50

    .line 60
    iget-object v1, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-nez v1, :cond_24

    .line 83
    :cond_23
    :goto_23
    return v0

    .line 66
    :cond_24
    iget-object v1, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_55

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    .line 78
    :goto_34
    const-string v0, "APIConstrain"

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

    .line 83
    :cond_50
    invoke-super/range {p0 .. p8}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z

    move-result v0

    goto :goto_23

    .line 70
    :cond_55
    iget-object v1, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_23

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    goto :goto_34
.end method

.method public messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

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

    .line 19
    iget-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29
    iput-object v3, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 31
    iput-object v3, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 33
    iput-object v3, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 41
    :cond_21
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method