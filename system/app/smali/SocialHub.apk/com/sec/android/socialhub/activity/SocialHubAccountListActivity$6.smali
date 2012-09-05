.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$6;
.super Ljava/lang/Object;
.source "SocialHubAccountListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->changeOptionMenuState(Z)V

    .line 483
    return-void
.end method
