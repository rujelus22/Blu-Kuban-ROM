.class Lcom/sec/android/widgetapp/apnews/activity/APNews$7;
.super Landroid/os/Handler;
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
    .line 822
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const v6, 0x7f0c0038

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 825
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_118

    .line 901
    :cond_a
    :goto_a
    :pswitch_a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 902
    :goto_d
    return-void

    .line 828
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const-string v3, "AP Mobile news"

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->refreshDataToService(Ljava/lang/String;)V

    goto :goto_a

    .line 832
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 834
    .local v0, dataBundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 835
    const-string v2, "Updated.result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_33

    .line 836
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    goto :goto_d

    .line 840
    :cond_33
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "News.updated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 841
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "AP Mobile news"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v5, :cond_8e

    .line 843
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 844
    .local v1, lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getAPCurrentTab()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 845
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    if-gez v2, :cond_71

    .line 846
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v4, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 849
    :cond_71
    const-string v2, "Updated.result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_80

    .line 850
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->updateData(IZ)V

    .line 853
    :cond_80
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNewsImageData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 854
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v4, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 872
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 873
    const/4 v0, 0x0

    .line 875
    goto/16 :goto_a

    .line 862
    :cond_94
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "News.Image.updated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 863
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "AP Mobile news"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v5, :cond_8e

    .line 864
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 865
    .restart local v1       #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->updateImageData(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNewsImageData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 868
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v4, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    goto :goto_8e

    .line 877
    .end local v0           #dataBundle:Landroid/os/Bundle;
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :pswitch_d6
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "AP Mobile news"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 878
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 880
    .restart local v1       #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNewsImageData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 881
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->requestFirstTabImage()V

    goto/16 :goto_a

    .line 883
    :cond_103
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->updateImageData(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 896
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :pswitch_10c
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iput v4, v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 897
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    goto/16 :goto_a

    .line 825
    nop

    :pswitch_data_118
    .packed-switch 0x6
        :pswitch_e
        :pswitch_a
        :pswitch_16
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d6
        :pswitch_10c
    .end packed-switch
.end method
