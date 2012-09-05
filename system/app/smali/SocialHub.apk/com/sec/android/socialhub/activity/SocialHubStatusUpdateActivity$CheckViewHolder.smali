.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckViewHolder"
.end annotation


# instance fields
.field public bIsShowedToast:Z

.field public mCheck:Landroid/widget/CheckBox;

.field public mImage:Landroid/widget/ImageView;

.field public mSpType:I

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1322
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 1325
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mImage:Landroid/widget/ImageView;

    .line 1326
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->bIsShowedToast:Z

    return-void
.end method


# virtual methods
.method public checkEnable(Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;JLandroid/widget/EditText;)V
    .registers 14
    .parameter "info"
    .parameter "length"
    .parameter "edit"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1357
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_90

    if-eqz p1, :cond_90

    iget-object v3, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    if-eqz v3, :cond_90

    .line 1359
    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    const/16 v4, 0x9

    long-to-int v5, p2

    invoke-static {v3, v7, v4, v5, p4}, Lcom/sec/android/socialhub/sns/LimitationChecker;->checkOverLimit(IIIILandroid/widget/EditText;)Z

    move-result v3

    if-ne v3, v7, :cond_97

    .line 1366
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 1368
    iget-object v3, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 1369
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    iget v3, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 1371
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getStringResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, sp_name:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1400(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1375
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080119

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-interface {v1, v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1385
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v2           #sp_name:Ljava/lang/String;
    :cond_78
    :goto_78
    iget-object v3, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1386
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1388
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getEnabledArray()[I

    move-result-object v3

    array-length v3, v3

    if-le v3, v7, :cond_90

    .line 1389
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1404
    :cond_90
    :goto_90
    return-void

    .line 1381
    .restart local v0       #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .restart local v1       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v2       #sp_name:Ljava/lang/String;
    :cond_91
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z
    invoke-static {v3, v7}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1402(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z

    goto :goto_78

    .line 1393
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v2           #sp_name:Ljava/lang/String;
    :cond_97
    iget-object v3, p1, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1394
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1400
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_90

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_90

    .line 1401
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z
    invoke-static {v3, v7}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$1402(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z

    goto :goto_90
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_e

    .line 1334
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1335
    const/4 v0, 0x1

    .line 1337
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
