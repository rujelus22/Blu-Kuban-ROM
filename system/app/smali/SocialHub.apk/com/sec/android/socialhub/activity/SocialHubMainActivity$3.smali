.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$3;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
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
    .line 509
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->refreshState()V

    .line 516
    return-void
.end method
