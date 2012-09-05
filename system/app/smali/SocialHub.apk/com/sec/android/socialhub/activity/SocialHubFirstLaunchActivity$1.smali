.class Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;
.super Ljava/lang/Object;
.source "SocialHubFirstLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->rememberAlwaysShow()V
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->finish()V

    .line 80
    return-void
.end method
