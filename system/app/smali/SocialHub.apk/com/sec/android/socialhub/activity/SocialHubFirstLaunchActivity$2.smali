.class Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;
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
    .line 84
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->rememberAlwaysShow()V
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->finish()V

    .line 89
    return-void
.end method
