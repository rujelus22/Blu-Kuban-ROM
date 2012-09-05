.class Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$1;
.super Ljava/lang/Object;
.source "SocialHubNewTweetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->onMiddleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    .line 204
    return-void
.end method
