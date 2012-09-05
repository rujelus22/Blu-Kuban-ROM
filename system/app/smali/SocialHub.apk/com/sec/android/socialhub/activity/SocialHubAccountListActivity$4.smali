.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;
.super Ljava/lang/Object;
.source "SocialHubAccountListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 230
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 237
    .local v2, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const-string v3, "SocialHubAccountListActivity"

    const-string v4, "setOnItemClickListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    if-nez v3, :cond_b9

    .line 241
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "4_SevenIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 243
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_61

    .line 245
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->signInIMAccount(Landroid/content/Context;I)V

    .line 282
    :cond_60
    :goto_60
    return-void

    .line 249
    :cond_61
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->editIMAccount(Landroid/content/Context;I)V

    goto :goto_60

    .line 252
    :cond_71
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "3_SevenEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 256
    :cond_85
    :try_start_85
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.email.activity.setup.AccountSettings.intent.action.ACTION_EXTERNAL_ACCOUNT_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "account_id"

    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    :goto_9f
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ab} :catch_ac

    goto :goto_60

    .line 260
    .end local v1           #intent:Landroid/content/Intent;
    :catch_ac
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 257
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_b1
    :try_start_b1
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b6} :catch_ac

    move-result v3

    int-to-long v3, v3

    goto :goto_9f

    .line 268
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b9
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 270
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_d7
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->notifyDataSetChanged()V

    .line 280
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateAllCheckState()V

    goto/16 :goto_60

    .line 275
    :cond_e7
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v3, v3, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d7
.end method
