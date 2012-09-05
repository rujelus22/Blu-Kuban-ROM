.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;
.super Ljava/lang/Object;
.source "SocialHubAccountListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setOnClickLintener()V
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
    .line 132
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method
