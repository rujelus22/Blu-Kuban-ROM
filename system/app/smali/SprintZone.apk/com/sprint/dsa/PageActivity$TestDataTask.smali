.class Lcom/sprint/dsa/PageActivity$TestDataTask;
.super Landroid/os/AsyncTask;
.source "PageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;

.field isError:Z

.field responseCode:I

.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;

.field values:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 608
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 604
    const/16 v0, 0x194

    iput v0, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->responseCode:I

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->isError:Z

    .line 606
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    .line 610
    #getter for: Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    invoke-static {p1}, Lcom/sprint/dsa/PageActivity;->access$7(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->run()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/PageActivity$TestDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11
    .parameter "params"

    .prologue
    .line 617
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 618
    .local v3, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    sget-boolean v6, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v6, :cond_91

    .line 624
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "make"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "fwVer"

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "swVer"

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :goto_3e
    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, query:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v6, v6, Lcom/sprint/dsa/PageActivity;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->getDataTestUrl()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, dataUrl:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 634
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_6d
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 642
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->responseCode:I

    .line 643
    iget-object v6, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 645
    iget-object v6, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v7, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    #setter for: Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;
    invoke-static {v6, v7}, Lcom/sprint/dsa/PageActivity;->access$10(Lcom/sprint/dsa/PageActivity;Ljava/util/Properties;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8f} :catch_c3

    .line 657
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :goto_8f
    const/4 v6, 0x0

    return-object v6

    .line 619
    .end local v0           #dataUrl:Ljava/lang/String;
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v4           #query:Ljava/lang/String;
    :cond_91
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "make"

    sget-object v8, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    sget-object v8, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "fwVer"

    sget-object v8, Lcom/sprint/dsa/Util;->FWVER:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "swVer"

    sget-object v8, Lcom/sprint/dsa/Util;->FWVER:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e

    .line 653
    .restart local v0       #dataUrl:Ljava/lang/String;
    .restart local v1       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #query:Ljava/lang/String;
    :catch_c3
    move-exception v6

    goto :goto_8f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/PageActivity$TestDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 16
    .parameter "result"

    .prologue
    const/16 v13, 0xc8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 662
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #setter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v8, v10}, Lcom/sprint/dsa/PageActivity;->access$9(Lcom/sprint/dsa/PageActivity;Z)V

    .line 663
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$7(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->stopProgress()V

    .line 665
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v7

    .line 666
    .local v7, tView:Lcom/sprint/dsa/widget/TestConnectionView;
    iget-object v11, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    iget v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->responseCode:I

    if-ne v8, v13, :cond_bc

    move v8, v9

    :goto_23
    invoke-virtual {v7, v11, v8}, Lcom/sprint/dsa/widget/TestConnectionView;->setDataTestingResult(Ljava/util/Properties;Z)V

    .line 669
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$11(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/PageContent;

    move-result-object v8

    const-string v11, "function"

    .line 670
    const-string v12, "cifo"

    .line 669
    invoke-virtual {v8, v11, v12}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v3

    .line 671
    .local v3, swItem:Lcom/sprint/dsa/data/FeatureItem;
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$11(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/PageContent;

    move-result-object v8

    const-string v11, "function"

    .line 672
    const-string v12, "ciprl"

    .line 671
    invoke-virtual {v8, v11, v12}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v2

    .line 676
    .local v2, prlItem:Lcom/sprint/dsa/data/FeatureItem;
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    if-eqz v8, :cond_125

    iget v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->responseCode:I

    if-ne v8, v13, :cond_125

    .line 678
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    const-string v11, "swVer"

    invoke-virtual {v8, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, swVer:Ljava/lang/String;
    if-eqz v6, :cond_66

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_66

    .line 680
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_c8

    .line 681
    :cond_66
    if-eqz v3, :cond_70

    .line 683
    const/4 v8, 0x0

    :try_start_69
    invoke-virtual {v3, v8}, Lcom/sprint/dsa/data/FeatureItem;->setEnabled(Z)V

    .line 684
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_bf

    .line 713
    :cond_70
    :goto_70
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    const-string v10, "prlVer"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, prl:Ljava/lang/String;
    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_8c

    .line 715
    const-string v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_117

    .line 716
    :cond_8c
    if-eqz v2, :cond_96

    .line 718
    const/4 v8, 0x0

    :try_start_8f
    invoke-virtual {v2, v8}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    .line 719
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/sprint/dsa/data/FeatureItem;->setEnabled(Z)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_10e

    .line 737
    .end local v1           #prl:Ljava/lang/String;
    .end local v6           #swVer:Ljava/lang/String;
    :cond_96
    :goto_96
    iget v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->responseCode:I

    if-eq v8, v13, :cond_a3

    .line 738
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v8

    invoke-static {v8}, Lcom/sprint/dsa/Reporting;->reportNoData(Lcom/sprint/dsa/data/DbAdapter;)V

    .line 741
    :cond_a3
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;
    invoke-static {v9}, Lcom/sprint/dsa/PageActivity;->access$11(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/PageContent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/dsa/widget/ContentListAdapter;->setContent(Lcom/sprint/dsa/data/PageContent;)V

    .line 742
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v8}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 749
    return-void

    .end local v2           #prlItem:Lcom/sprint/dsa/data/FeatureItem;
    .end local v3           #swItem:Lcom/sprint/dsa/data/FeatureItem;
    :cond_bc
    move v8, v10

    .line 666
    goto/16 :goto_23

    .line 685
    .restart local v2       #prlItem:Lcom/sprint/dsa/data/FeatureItem;
    .restart local v3       #swItem:Lcom/sprint/dsa/data/FeatureItem;
    .restart local v6       #swVer:Ljava/lang/String;
    :catch_bf
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "SprintZone_PageActivity"

    const-string v10, "SetVisible (false) failed"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 690
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c8
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    const-string v11, "swMOD"

    invoke-virtual {v8, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, swMOD:Ljava/lang/String;
    invoke-static {v4}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 692
    iget-object v8, p0, Lcom/sprint/dsa/PageActivity$TestDataTask;->values:Ljava/util/Properties;

    const-string v11, "swMessage"

    invoke-virtual {v8, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, swMsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 695
    if-eqz v4, :cond_104

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_104

    .line 696
    if-eqz v3, :cond_70

    .line 698
    :try_start_ea
    invoke-static {v6}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sprint/dsa/dss/DsaDiag;->setAvailableSoftwareVersion(Ljava/lang/String;)V

    .line 699
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    .line 700
    invoke-virtual {v3, v5}, Lcom/sprint/dsa/data/FeatureItem;->setDescription(Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f8} :catch_fa

    goto/16 :goto_70

    .line 701
    :catch_fa
    move-exception v0

    .line 702
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "SprintZone_PageActivity"

    const-string v10, "SetVisible (false) failed"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 706
    .end local v0           #e:Ljava/lang/Exception;
    :cond_104
    if-eqz v3, :cond_70

    .line 707
    invoke-virtual {v3, v10}, Lcom/sprint/dsa/data/FeatureItem;->setEnabled(Z)V

    .line 708
    invoke-virtual {v3, v10}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    goto/16 :goto_70

    .line 720
    .end local v4           #swMOD:Ljava/lang/String;
    .end local v5           #swMsg:Ljava/lang/String;
    .restart local v1       #prl:Ljava/lang/String;
    :catch_10e
    move-exception v0

    .line 721
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "SprintZone_PageActivity"

    const-string v9, "SetVisible (false) failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 725
    .end local v0           #e:Ljava/lang/Exception;
    :cond_117
    invoke-static {v1}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sprint/dsa/dss/DsaDiag;->setAvailablePrlVersion(Ljava/lang/String;)V

    .line 726
    if-eqz v2, :cond_96

    invoke-virtual {v2, v9}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    goto/16 :goto_96

    .line 730
    .end local v1           #prl:Ljava/lang/String;
    .end local v6           #swVer:Ljava/lang/String;
    :cond_125
    const/4 v8, 0x0

    :try_start_126
    invoke-virtual {v3, v8}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    .line 731
    if-eqz v2, :cond_96

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12f} :catch_131

    goto/16 :goto_96

    .line 732
    :catch_131
    move-exception v0

    .line 733
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "SprintZone_PageActivity"

    const-string v9, "SetVisible (false) failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_96
.end method
