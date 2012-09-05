.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const v7, 0x7f080074

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 967
    const-string v2, "SocialHubStatusUpdateActivity"

    const-string v3, "onClick()"

    const-string v4, "mUpdateStatusButtonListener Clicked "

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getEnabledArray()[I

    move-result-object v1

    .line 970
    .local v1, updateTypeArray:[I
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v2

    if-ne v2, v5, :cond_4c

    .line 972
    array-length v2, v1

    if-lez v2, :cond_2b

    .line 974
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    const-string v3, "android.intent.action.STATUS_UPDATE"

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->doUploadPhoto([ILjava/lang/String;)I

    .line 1002
    :cond_2a
    :goto_2a
    return-void

    .line 978
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 980
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 981
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z
    invoke-static {v2, v6}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1102(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z

    goto :goto_2a

    .line 987
    :cond_4c
    array-length v2, v1

    if-lez v2, :cond_6f

    .line 989
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    .line 990
    .local v0, connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    if-eqz v0, :cond_2a

    .line 991
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I

    goto :goto_2a

    .line 995
    .end local v0           #connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    :cond_6f
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 997
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 998
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z
    invoke-static {v2, v6}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1102(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z

    goto :goto_2a
.end method
