.class public Lcom/sec/android/socialhub/clipboard/ClipBoardFactory;
.super Ljava/lang/Object;
.source "ClipBoardFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipBoard(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;)Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    .registers 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    instance-of v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;

    if-eqz v1, :cond_b

    .line 25
    new-instance v0, Lcom/sec/android/socialhub/clipboard/FeedClipboard;

    .end local v0           #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/clipboard/FeedClipboard;-><init>(Landroid/content/Context;)V

    .line 40
    .restart local v0       #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    :goto_a
    return-object v0

    .line 27
    :cond_b
    instance-of v1, p1, Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;

    if-eqz v1, :cond_15

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/clipboard/MessageCommentClipboard;

    .end local v0           #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/clipboard/MessageCommentClipboard;-><init>(Landroid/content/Context;)V

    .restart local v0       #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    goto :goto_a

    .line 31
    :cond_15
    instance-of v1, p1, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter$ViewHolder;

    if-eqz v1, :cond_1f

    .line 33
    new-instance v0, Lcom/sec/android/socialhub/clipboard/FeedCommentClipboard;

    .end local v0           #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/clipboard/FeedCommentClipboard;-><init>(Landroid/content/Context;)V

    .restart local v0       #clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    goto :goto_a

    .line 37
    :cond_1f
    const-string v1, "ClipBoardFactory"

    const-string v2, "getClipBoard()"

    const-string v3, "not defined object"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
