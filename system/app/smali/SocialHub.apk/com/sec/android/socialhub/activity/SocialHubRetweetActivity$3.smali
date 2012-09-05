.class Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;
.super Ljava/lang/Object;
.source "SocialHubRetweetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/util/SocialHubUtil;->dismissClipboardPopup(Landroid/content/Context;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->onBackPressed()V

    .line 421
    return-void
.end method
