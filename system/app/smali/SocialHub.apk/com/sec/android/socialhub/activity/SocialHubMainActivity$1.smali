.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->initTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "match"

    .prologue
    .line 253
    const-string v0, "Feeds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 255
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->changeState(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 261
    :goto_1b
    return-void

    .line 259
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->changeState(Lcom/sec/android/socialhub/state/tab/TabState;)V

    goto :goto_1b
.end method
