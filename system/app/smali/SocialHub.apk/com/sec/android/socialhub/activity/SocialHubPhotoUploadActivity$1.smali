.class Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;
.super Ljava/lang/Object;
.source "SocialHubPhotoUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getUploadMode()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 197
    :goto_d
    return-void

    .line 186
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)[I

    move-result-object v1

    const-string v2, "android.intent.action.socialhub.UPLOAD_PHOTO"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->doUploadPhoto([ILjava/lang/String;)I

    goto :goto_d

    .line 190
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)[I

    move-result-object v1

    const-string v2, "android.intent.action.socialhub.UPLOAD_PHOTO"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->doUploadVideo([ILjava/lang/String;)I

    goto :goto_d

    .line 183
    :pswitch_data_2a
    .packed-switch 0x10
        :pswitch_e
        :pswitch_1c
    .end packed-switch
.end method
