.class public Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;
.super Ljava/lang/Object;
.source "FeedLayoutCopy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyCaption(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 85
    const-string v0, ""

    .line 87
    .local v0, str:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 89
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    .line 92
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_25
    return-object v0
.end method

.method private static copyContents(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 48
    const-string v0, ""

    .line 50
    .local v0, str:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 52
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    .line 55
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_25
    return-object v0
.end method

.method private static copyDescription(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 102
    const-string v0, ""

    .line 104
    .local v0, str:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 106
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    .line 109
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_25
    return-object v0
.end method

.method public static copyLayout(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 23
    const-string v0, ""

    .line 25
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyName(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyContents(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyMood(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyCaption(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedLayoutCopy;->copyDescription(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method private static copyMood(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 65
    const-string v0, ""

    .line 67
    .local v0, str:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v2, "mood"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 69
    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodText:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodName:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodName:Ljava/lang/String;

    const-string v2, "mood"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_6d
    return-object v0
.end method

.method private static copyName(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 36
    const-string v0, ""

    .line 38
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_1b
    return-object v0
.end method
