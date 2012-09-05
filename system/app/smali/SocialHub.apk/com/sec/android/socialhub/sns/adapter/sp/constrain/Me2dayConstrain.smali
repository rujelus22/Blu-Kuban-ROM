.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/Me2dayConstrain;
.super Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.source "Me2dayConstrain.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
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
    .line 45
    iget-object v0, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const-string v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 47
    :cond_e
    const-string v0, "favorite"

    iput-object v0, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 48
    const-string v0, "Me2dayConstrain"

    const-string v1, "commentFavoritePost()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favoriteType is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_STATUSLIST:I

    aget-object v0, v0, v1

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 55
    invoke-super/range {p0 .. p8}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z

    move-result v0

    return v0
.end method

.method public commentPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 8
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_STATUSLIST:I

    aget-object v0, v0, v1

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 37
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
    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_ACTIVITY:I

    aget-object v0, v0, v1

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method

.method public messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 63
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

    .line 21
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 23
    iput-object v2, p5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 24
    iput-object v2, p6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 25
    iput-object v2, p7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 27
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v0

    return v0
.end method
