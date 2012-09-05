.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;
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
    .line 140
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "arg0"

    .prologue
    .line 143
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Z

    move-result v8

    if-nez v8, :cond_b7

    .line 145
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v9, 0x1

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z
    invoke-static {v8, v9}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$002(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;Z)Z

    .line 147
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v9, 0x0

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I
    invoke-static {v8, v9}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$102(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;I)I

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, mEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v4, mIM:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v5, mSns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v8, v8, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, id:I
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v8, v8, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 158
    .local v7, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v8, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, app:I
    packed-switch v0, :pswitch_data_d2

    goto :goto_2b

    .line 163
    :pswitch_53
    iget-object v8, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 167
    :pswitch_5d
    iget-object v8, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 171
    :pswitch_67
    iget-object v8, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 175
    :pswitch_71
    iget-object v8, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 180
    .end local v0           #app:I
    .end local v2           #id:I
    .end local v7           #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_7b
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v9, 0x3

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I
    invoke-static {v8, v9}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$102(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;I)I

    .line 182
    const/4 v6, -0x1

    .line 184
    .local v6, reqId:I
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const-string v9, "2_Email"

    invoke-virtual {v8, v9, v3}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->removeAccount(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    .line 186
    if-gez v6, :cond_91

    .line 188
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$110(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I

    .line 191
    :cond_91
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const-string v9, "4_SevenIM"

    invoke-virtual {v8, v9, v4}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->removeAccount(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    .line 193
    if-gez v6, :cond_a0

    .line 195
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$110(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I

    .line 198
    :cond_a0
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const-string v9, "5_SNS"

    invoke-virtual {v8, v9, v5}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->removeAccount(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    .line 199
    if-gez v6, :cond_af

    .line 201
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$110(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I

    .line 204
    :cond_af
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I

    move-result v8

    if-gtz v8, :cond_b8

    .line 221
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #mIM:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #mSns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #reqId:I
    :cond_b7
    :goto_b7
    return-void

    .line 215
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #mEmail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #mIM:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #mSns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #reqId:I
    :cond_b8
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    const v12, 0x7f080047

    invoke-virtual {v11, v12}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 217
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-virtual {v8}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->onBackPressed()V

    goto :goto_b7

    .line 160
    :pswitch_data_d2
    .packed-switch 0x2
        :pswitch_53
        :pswitch_5d
        :pswitch_67
        :pswitch_71
    .end packed-switch
.end method
