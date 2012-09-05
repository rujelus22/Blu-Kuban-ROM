.class Lcom/sprint/dsa/PageActivity$2;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 14
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 440
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v4}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/dsa/widget/ContentListAdapter;->getCurrentListContent()Lcom/sprint/dsa/data/PageContent;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(II)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    .line 441
    .local v0, item:Lcom/sprint/dsa/data/FeatureItem;
    if-nez v0, :cond_13

    .line 507
    :goto_12
    return v2

    .line 448
    :cond_13
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 449
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v2, v2, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v2}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startProgramming()V

    :cond_20
    :goto_20
    move v2, v3

    .line 507
    goto :goto_12

    .line 450
    :cond_22
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->isFactoryReset()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 451
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #calls: Lcom/sprint/dsa/PageActivity;->requestFactoryReset()V
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$1(Lcom/sprint/dsa/PageActivity;)V

    goto :goto_20

    .line 453
    :cond_2e
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connection"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 454
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v4}, Lcom/sprint/dsa/PageActivity;->access$2(Lcom/sprint/dsa/PageActivity;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 456
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    const v5, 0x7f080050

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 458
    goto :goto_12

    .line 461
    :cond_50
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v4}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v1

    .line 462
    .local v1, tView:Lcom/sprint/dsa/widget/TestConnectionView;
    if-eqz v1, :cond_20

    .line 463
    invoke-virtual {v1}, Lcom/sprint/dsa/widget/TestConnectionView;->isVoiceOk()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 464
    invoke-virtual {v1}, Lcom/sprint/dsa/widget/TestConnectionView;->isDataOk()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 465
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    const v5, 0x7f080057

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 467
    goto :goto_12

    .line 471
    :cond_76
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/widget/TestConnectionView;->resetView(Landroid/content/Context;)V

    .line 472
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 473
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #calls: Lcom/sprint/dsa/PageActivity;->onStartTestConnections()V
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$3(Lcom/sprint/dsa/PageActivity;)V

    move v2, v3

    .line 474
    goto :goto_12

    .line 479
    .end local v1           #tView:Lcom/sprint/dsa/widget/TestConnectionView;
    :cond_8b
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->isMore()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 480
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getCampaign()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/sprint/dsa/Reporting;->reportPromoClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;I)V

    .line 483
    :cond_a0
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 486
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$2(Lcom/sprint/dsa/PageActivity;)Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v4, "tel:*2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 487
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v1

    .line 488
    .restart local v1       #tView:Lcom/sprint/dsa/widget/TestConnectionView;
    if-eqz v1, :cond_e0

    .line 489
    invoke-virtual {v1}, Lcom/sprint/dsa/widget/TestConnectionView;->isVoiceOk()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-virtual {v1}, Lcom/sprint/dsa/widget/TestConnectionView;->isDataOk()Z

    move-result v2

    if-nez v2, :cond_e0

    .line 490
    :cond_d8
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v2}, Lcom/sprint/dsa/PageActivity;->showCallFromOtherPhoneDialog()V

    move v2, v3

    .line 491
    goto/16 :goto_12

    .line 496
    .end local v1           #tView:Lcom/sprint/dsa/widget/TestConnectionView;
    :cond_e0
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "function"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 497
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v2, v0}, Lcom/sprint/dsa/PageActivity;->handleSoftwareUpdateClick(Lcom/sprint/dsa/data/FeatureItem;)Z

    move-result v2

    if-eqz v2, :cond_f7

    move v2, v3

    .line 498
    goto/16 :goto_12

    .line 502
    :cond_f7
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$2;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getExtra()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 502
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_12
.end method
