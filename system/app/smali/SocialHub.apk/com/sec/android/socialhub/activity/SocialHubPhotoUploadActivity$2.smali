.class Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$2;
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
    .line 202
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->onBackPressed()V

    .line 206
    return-void
.end method
