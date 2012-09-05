.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->InitLintener()V
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
    .line 268
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 286
    return-void
.end method

.method public onRequestChangeTabView(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v1

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setVisibility(I)V

    .line 291
    return-void

    .line 290
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public onRequestChangeTitleBar(ZI)V
    .registers 5
    .parameter "visible"
    .parameter "resource"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setTitleBarVisibility(Z)V

    .line 297
    const/4 v0, -0x1

    if-le p2, v0, :cond_13

    .line 298
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v1, p2}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setTitle(Ljava/lang/String;)V

    .line 299
    :cond_13
    return-void
.end method

.method public onTabStateChanged(Lcom/sec/android/socialhub/state/tab/TabState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 272
    instance-of v0, p1, Lcom/sec/android/socialhub/state/tab/FeedTabState;

    if-eqz v0, :cond_f

    .line 274
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 281
    :goto_e
    return-void

    .line 278
    :cond_f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_e
.end method
