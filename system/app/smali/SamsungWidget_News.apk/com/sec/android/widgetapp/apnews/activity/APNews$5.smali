.class Lcom/sec/android/widgetapp/apnews/activity/APNews$5;
.super Landroid/content/BroadcastReceiver;
.source "APNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v4, 0x7f0c0038

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 691
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, action:Ljava/lang/String;
    const-string v2, "Updated.result"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 699
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 703
    .local v1, lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const-string v3, "APNews.updated.finish"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 705
    const-string v2, "handlerNull"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 706
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->updateImageData(Ljava/lang/String;)V

    .line 709
    :cond_32
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNewsImageData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "imageDataNull"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 712
    :cond_44
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 713
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 717
    :cond_50
    invoke-static {v5}, Lcom/sec/android/widgetapp/apnews/engine/Util;->setWeatherNewAdd(Z)V

    .line 719
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_60

    .line 720
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 801
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_5f
    :goto_5f
    return-void

    .line 725
    .restart local v1       #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_60
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 726
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_98

    .line 727
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 780
    :cond_76
    :goto_76
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 781
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z
    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$302(Lcom/sec/android/widgetapp/apnews/activity/APNews;Z)Z

    .line 782
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$400(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->unbindService(Landroid/content/ServiceConnection;)V

    .line 785
    :cond_8e
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 789
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->getCpData(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$500(Lcom/sec/android/widgetapp/apnews/activity/APNews;Landroid/content/Context;)V

    goto :goto_5f

    .line 738
    :cond_98
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-ne v2, v6, :cond_d6

    .line 740
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-ne v2, v6, :cond_c0

    .line 741
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "AP Mobile news"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v2, v3, :cond_c0

    .line 742
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 746
    :cond_c0
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 747
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-ne v2, v6, :cond_76

    .line 748
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    goto :goto_76

    .line 763
    :cond_d6
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "AP Mobile news"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v6, :cond_76

    .line 764
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 765
    .restart local v1       #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    if-eqz v1, :cond_76

    .line 766
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getAPCurrentTab()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 767
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    if-gez v2, :cond_76

    .line 768
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    goto/16 :goto_76

    .line 792
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_102
    const-string v2, "Alarm.To.Update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 793
    sget-boolean v2, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsState:Z

    if-eqz v2, :cond_11a

    .line 794
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/4 v3, 0x1

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 799
    :goto_113
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    goto/16 :goto_5f

    .line 796
    :cond_11a
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    goto :goto_113
.end method
