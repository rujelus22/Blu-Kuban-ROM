.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;
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
    .line 286
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 292
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 302
    :goto_24
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->notifyDataSetChanged()V

    .line 303
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateAllCheckState()V

    .line 304
    return-void

    .line 298
    :cond_33
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setAllItemChecked()V

    goto :goto_24
.end method
