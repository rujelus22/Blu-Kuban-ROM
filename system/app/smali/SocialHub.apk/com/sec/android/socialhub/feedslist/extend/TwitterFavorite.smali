.class public Lcom/sec/android/socialhub/feedslist/extend/TwitterFavorite;
.super Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;
.source "TwitterFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method


# virtual methods
.method public excuteGetStatus(Z)I
    .registers 10
    .parameter "bIsNext"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    const-string v3, "owner"

    const/4 v4, 0x0

    const-string v5, "favorite"

    const/4 v6, 0x1

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->activityStatuslistGet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "count"

    .prologue
    const v2, 0x7f0800d0

    .line 41
    if-lez p2, :cond_21

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
