.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;)V
    .registers 2
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bPicReplaced:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$802(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z

    .line 945
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3$1;->this$1:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    .line 946
    return-void
.end method
