.class public Lcom/sec/android/socialhub/clipboard/FeedClipboard;
.super Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
.source "FeedClipboard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getContent(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "object"

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 20
    .local v1, holder:Lcom/sec/android/socialhub/feedslist/FeedView;
    const/4 v0, 0x0

    .line 22
    .local v0, content:Ljava/lang/String;
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/sec/android/socialhub/feedslist/FeedView;

    if-eqz v2, :cond_b

    move-object v1, p1

    .line 24
    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 27
    :cond_b
    if-eqz v1, :cond_13

    .line 29
    iget-object v2, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyLayout(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_13
    return-object v0
.end method
