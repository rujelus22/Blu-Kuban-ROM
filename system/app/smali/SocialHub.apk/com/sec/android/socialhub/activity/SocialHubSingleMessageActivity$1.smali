.class Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-boolean v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    if-nez v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 232
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setAllItemChecked()V

    .line 239
    :goto_10
    return-void

    .line 236
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 237
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setAllItemChecked()V

    goto :goto_10
.end method
