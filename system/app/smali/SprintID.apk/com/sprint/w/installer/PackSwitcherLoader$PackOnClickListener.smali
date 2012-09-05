.class Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;
.super Ljava/lang/Object;
.source "PackSwitcherLoader.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackSwitcherLoader;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackSwitcherLoader$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 19
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 754
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v7

    move-wide/from16 v0, p4

    long-to-int v8, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/w/installer/PackInfo;

    .line 755
    .local v5, info:Lcom/sprint/w/installer/PackInfo;
    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->installIntent:Ljava/lang/String;

    if-eqz v7, :cond_3a

    .line 758
    :try_start_13
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    iget-object v8, v5, Lcom/sprint/w/installer/PackInfo;->installIntent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_24

    .line 810
    :cond_23
    :goto_23
    return-void

    .line 759
    :catch_24
    move-exception v3

    .line 760
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v7

    const-string v8, "Error attempting to install downloaded pack"

    invoke-virtual {v7, v8, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 761
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    iget-object v8, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sprint/w/installer/DownloadService;->clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 763
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3a
    iget-boolean v7, v5, Lcom/sprint/w/installer/PackInfo;->notReady:Z

    if-eqz v7, :cond_dc

    .line 764
    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 766
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sop://rssDetails?url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 767
    .local v4, i:Landroid/content/Intent;
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .line 768
    .end local v4           #i:Landroid/content/Intent;
    :cond_76
    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->detailsIntent:Ljava/lang/String;

    if-eqz v7, :cond_96

    .line 771
    :try_start_7a
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    iget-object v8, v5, Lcom/sprint/w/installer/PackInfo;->detailsIntent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8a} :catch_8b

    goto :goto_23

    .line 772
    :catch_8b
    move-exception v3

    .line 773
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v7

    const-string v8, "Error attempting to view detailsIntent"

    invoke-virtual {v7, v8, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 778
    .end local v3           #e:Ljava/lang/Exception;
    :cond_96
    :try_start_96
    new-instance v6, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v6}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 779
    .local v6, pack:Lcom/sprint/w/installer/psi/ServicePack;
    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 780
    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 782
    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V

    .line 783
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    const-class v8, Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "sp"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 785
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V
    :try_end_ce
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_ce} :catch_d0

    goto/16 :goto_23

    .line 786
    .end local v4           #i:Landroid/content/Intent;
    .end local v6           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    :catch_d0
    move-exception v3

    .line 787
    .local v3, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v7

    const-string v8, "Error starting PsiPackDetails activity"

    invoke-virtual {v7, v8, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 790
    .end local v3           #e:Ljava/lang/RuntimeException;
    :cond_dc
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    if-eqz v7, :cond_12b

    iget-object v7, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    iget-object v8, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v8}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 792
    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->getOemLauncher()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_121

    .line 794
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->getOemLauncher()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 797
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V

    .line 802
    .end local v4           #i:Landroid/content/Intent;
    :goto_116
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/w/installer/SprintIdHome;->finish()V

    goto/16 :goto_23

    .line 800
    :cond_121
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-static {v7}, Lcom/sprint/w/installer/util/Util;->startHomeScreen(Landroid/content/Context;)V

    goto :goto_116

    .line 804
    :cond_12b
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v8

    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v11

    sget-boolean v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v7, :cond_163

    const v7, 0x7f0600b2

    :goto_145
    invoke-virtual {v11, v7}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v7, v11, v12}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, v8, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 805
    sget-boolean v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-nez v7, :cond_23

    .line 806
    new-instance v2, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;

    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-wide/from16 v0, p4

    invoke-direct {v2, v7, v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;J)V

    .line 807
    .local v2, ct:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
    invoke-virtual {v2}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->start()V

    goto/16 :goto_23

    .line 804
    .end local v2           #ct:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
    :cond_163
    const v7, 0x7f06006e

    goto :goto_145
.end method
