.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;
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
    .line 926
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 930
    const-string v1, "SocialHubStatusUpdateActivity"

    const-string v2, "onClick()"

    const-string v3, "mPhotoButtonListener Clicked "

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-nez v1, :cond_23

    .line 934
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    .line 960
    :goto_22
    return-void

    .line 938
    :cond_23
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;-><init>(Landroid/content/Context;)V

    .line 940
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 949
    const/high16 v1, 0x104

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$2;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->show()Landroid/app/AlertDialog;

    goto :goto_22
.end method
