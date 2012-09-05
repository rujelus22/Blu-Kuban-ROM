.class public Lcom/sec/android/socialhub/clipboard/FeedCommentClipboard;
.super Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
.source "FeedCommentClipboard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getContent(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "object"

    .prologue
    const/16 v3, 0xa

    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, holder:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v1, str_buff:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_11

    instance-of v2, p1, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;

    if-eqz v2, :cond_11

    move-object v0, p1

    .line 23
    check-cast v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;

    .line 26
    :cond_11
    if-eqz v0, :cond_28

    .line 28
    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommenterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;->mCommentDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
