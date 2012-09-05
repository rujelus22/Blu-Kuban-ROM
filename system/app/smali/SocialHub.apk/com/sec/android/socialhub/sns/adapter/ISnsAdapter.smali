.class public interface abstract Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
.super Ljava/lang/Object;
.source "ISnsAdapter.java"


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V
.end method

.method public abstract checkPossibleUploadPhotoVideo(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/io/File;Z)Z
.end method

.method public abstract drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
.end method

.method public abstract getAddAccountPage(Landroid/content/Context;Z)Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
.end method

.method public abstract getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.end method

.method public abstract getDefaultProfileImage()I
.end method

.method public abstract getDrawable(I)I
.end method

.method public abstract getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImageResource(I)I
.end method

.method public abstract getLimitation(I)I
.end method

.method public abstract getReplyImageSource()I
.end method

.method public abstract getSmallIspIcon()I
.end method

.method public abstract getString(I)I
.end method

.method public abstract getString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringResource(I)I
.end method

.method public abstract invokeHandleSnsCallback(Landroid/content/Context;IZ)V
.end method

.method public abstract isNeeds(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation
.end method

.method public abstract isSupport(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation
.end method

.method public abstract onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I
.end method

.method public abstract onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V
.end method

.method public abstract onGetDeepLink(I)V
.end method

.method public abstract onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V
.end method

.method public abstract setExpandResource(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/content/res/Resources;)V
.end method
