.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;
.super Landroid/os/Handler;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 595
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 604
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "URL"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, url:Ljava/lang/String;
    const-string v5, "http://ums.samsungmobile.com/http_client/find_url.jsp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 609
    const-string v5, "RESPONSE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, ums:Ljava/lang/String;
    const-string v5, "FAIL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 611
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    .line 613
    :cond_25
    const-string v5, "SUCCESS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 614
    sput-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    .line 615
    const-string v5, "OUTPUT="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sShopUrl:Ljava/lang/String;

    .line 621
    :cond_3d
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    .end local v3           #ums:Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 624
    :cond_47
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const-string v6, "RESPONSE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseResponse(Ljava/lang/String;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v6

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1902(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/sec/android/app/music/common/richinfo/NetworkData;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    .line 629
    const-string v5, "http://ssung.meta.shazamid.com/orbit/RequestConfig1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->isError:Z

    if-eqz v5, :cond_72

    .line 631
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_46

    .line 635
    :cond_72
    const-string v5, "http://ssung.meta.shazamid.com/orbit/RequestConfig1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->isError:Z

    if-eqz v5, :cond_8e

    .line 637
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_46

    .line 640
    :cond_8e
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$2000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "service"

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestConfig:Ljava/util/HashMap;

    const-string v8, "service"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$2000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "chart"

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestConfig:Ljava/util/HashMap;

    const-string v8, "chart"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$2000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "currentTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 662
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_46

    .line 664
    :cond_f7
    const-string v5, "http://ssung.meta.shazamid.com/orbit/DoRecognition1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_127

    .line 666
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 667
    .local v2, msgRequestResult:Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 668
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 669
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "requestId"

    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 671
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_46

    .line 672
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #msgRequestResult:Landroid/os/Message;
    :cond_127
    const-string v5, "http://ssung.meta.shazamid.com/orbit/RequestResults1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 674
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const-string v6, "RESPONSE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/NetworkResponseParser;->parseResponse(Ljava/lang/String;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    move-result-object v6

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1902(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/sec/android/app/music/common/richinfo/NetworkData;)Lcom/sec/android/app/music/common/richinfo/NetworkData;

    .line 683
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_46
.end method
