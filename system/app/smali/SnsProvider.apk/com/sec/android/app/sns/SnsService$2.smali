.class Lcom/sec/android/app/sns/SnsService$2;
.super Lcom/sec/android/app/sns/ISnsRequester$Stub;
.source "SnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/SnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

.field final synthetic this$0:Lcom/sec/android/app/sns/SnsService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/SnsService;)V
    .registers 3
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequester$Stub;-><init>()V

    .line 502
    new-instance v0, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    return-void
.end method


# virtual methods
.method public abortRequest(II)V
    .registers 7
    .parameter "appID"
    .parameter "reqID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2513
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "appID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2514
    const-string v2, "reqID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2516
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2517
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2518
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2519
    return-void
.end method

.method public activityForward(ILjava/lang/String;)I
    .registers 7
    .parameter "appID"
    .parameter "activityID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->findActivity(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 599
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== activityForward Activity = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not existed in DB!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v1, -0x1

    .line 607
    :goto_2b
    return v1

    .line 604
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, p2}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityForward(IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v0

    .line 607
    .local v0, activityForwardReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto :goto_2b
.end method

.method public activityRetrieve(ILjava/util/Map;ZZ)I
    .registers 40
    .parameter "appID"
    .parameter "actorList"
    .parameter "bIsGroupActivity"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v10, -0x1

    .line 626
    .local v10, activityType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 627
    const-string v2, "SNS"

    const-string v3, "=============== activityRetrieve: No account is logged in!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v15, -0x1

    .line 750
    :goto_17
    return v15

    .line 632
    :cond_18
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v5, inActorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v11, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_117

    .line 637
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v32, owner:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "owner"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const/16 v34, 0x0

    .local v34, spType:I
    :goto_36
    const/16 v2, 0xf

    move/from16 v0, v34

    if-gt v0, v2, :cond_a7

    .line 641
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v34

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 642
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const/16 v2, 0x8

    move/from16 v0, v34

    if-ne v0, v2, :cond_9f

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v31

    .line 645
    .local v31, locale:Ljava/lang/String;
    const-string v2, "deu"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "fra"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "spa"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 646
    :cond_8f
    new-instance v28, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept-Language"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .local v28, basicHeader:Lorg/apache/http/message/BasicHeader;
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_9f} :catch_a2

    .line 639
    .end local v28           #basicHeader:Lorg/apache/http/message/BasicHeader;
    .end local v31           #locale:Ljava/lang/String;
    :cond_9f
    :goto_9f
    add-int/lit8 v34, v34, 0x1

    goto :goto_36

    .line 651
    :catch_a2
    move-exception v30

    .line 652
    .local v30, e:Landroid/os/RemoteException;
    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9f

    .line 655
    .end local v30           #e:Landroid/os/RemoteException;
    :cond_a7
    const/4 v10, 0x0

    .line 690
    .end local v32           #owner:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34           #spType:I
    :goto_a8
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1a1

    .line 692
    const/16 v33, 0x0

    .line 693
    .local v33, prevActorCode:Ljava/lang/String;
    const/16 v29, 0x0

    .line 694
    .local v29, curActorCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 696
    .local v6, actTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/sec/android/app/sns/util/SnsUtil;->getActivityHistory(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v33

    .line 697
    invoke-static {v5}, Lcom/sec/android/app/sns/db/SnsDBUtil;->activityOffsetwhere(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v29

    .line 698
    const/16 v27, 0x0

    .line 700
    .local v27, bIsFirstActRetrieveAfterPhotoUpload:Z
    if-nez v10, :cond_e0

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getIsFirstActRetrieveAfterPhotoUpload(Landroid/content/Context;)Z

    move-result v27

    .line 704
    if-eqz v27, :cond_e0

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/sns/util/SnsUtil;->setIsFirstActRetrieveAfterPhotoUpload(Landroid/content/Context;Z)V

    .line 708
    :cond_e0
    if-eqz v29, :cond_18a

    if-eqz v33, :cond_18a

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18a

    if-nez v27, :cond_18a

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getLatestActivityTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 719
    :goto_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v4, 0x5

    const/4 v7, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityRetrieve(IILjava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/util/ArrayList;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v26

    .line 724
    .local v26, activityRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v26

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v15

    goto/16 :goto_17

    .line 659
    .end local v6           #actTime:Ljava/lang/String;
    .end local v26           #activityRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .end local v27           #bIsFirstActRetrieveAfterPhotoUpload:Z
    .end local v29           #curActorCode:Ljava/lang/String;
    .end local v33           #prevActorCode:Ljava/lang/String;
    :cond_117
    move-object/from16 v5, p2

    .line 665
    invoke-static {v5}, Lcom/sec/android/app/sns/util/SnsUtil;->isValidFriendList(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_129

    .line 666
    const-string v2, "SNS"

    const-string v3, "=============== activityRetrieve: isValidFriendList is FALSE!!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v15, -0x1

    goto/16 :goto_17

    .line 671
    :cond_129
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v31

    .line 673
    .restart local v31       #locale:Ljava/lang/String;
    const-string v2, "deu"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_169

    const-string v2, "fra"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_169

    const-string v2, "spa"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 674
    :cond_169
    new-instance v28, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept-Language"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .restart local v28       #basicHeader:Lorg/apache/http/message/BasicHeader;
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v28           #basicHeader:Lorg/apache/http/message/BasicHeader;
    .end local v31           #locale:Ljava/lang/String;
    :cond_179
    if-eqz p3, :cond_17e

    .line 681
    const/4 v10, 0x2

    goto/16 :goto_a8

    .line 682
    :cond_17e
    invoke-static {v5}, Lcom/sec/android/app/sns/util/SnsUtil;->IsIncludeOwner(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 683
    const/4 v10, 0x0

    goto/16 :goto_a8

    .line 685
    :cond_187
    const/4 v10, 0x1

    goto/16 :goto_a8

    .line 714
    .restart local v6       #actTime:Ljava/lang/String;
    .restart local v27       #bIsFirstActRetrieveAfterPhotoUpload:Z
    .restart local v29       #curActorCode:Ljava/lang/String;
    .restart local v33       #prevActorCode:Ljava/lang/String;
    :cond_18a
    const-string v2, "SNS"

    const-string v3, "activityRetrieve: actTime = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v6, 0x0

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0, v10}, Lcom/sec/android/app/sns/util/SnsUtil;->setActivityHistory(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_fc

    .line 726
    .end local v6           #actTime:Ljava/lang/String;
    .end local v27           #bIsFirstActRetrieveAfterPhotoUpload:Z
    .end local v29           #curActorCode:Ljava/lang/String;
    .end local v33           #prevActorCode:Ljava/lang/String;
    :cond_1a1
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v15

    .line 729
    .local v15, reqID:I
    if-nez v10, :cond_1e5

    .line 730
    new-instance v12, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v14, 0x10

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move/from16 v13, p1

    invoke-direct/range {v12 .. v25}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 747
    .local v12, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :goto_1cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v12, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_17

    .line 735
    .end local v12           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_1e5
    const/4 v2, 0x1

    if-ne v10, v2, :cond_20a

    .line 736
    new-instance v12, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v14, 0x10

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/friend_activity"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move/from16 v13, p1

    invoke-direct/range {v12 .. v25}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .restart local v12       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    goto :goto_1cb

    .line 741
    .end local v12           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_20a
    new-instance v12, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v14, 0x10

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/group_activity"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move/from16 v13, p1

    invoke-direct/range {v12 .. v25}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .restart local v12       #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    goto :goto_1cb
.end method

.method public activityRetrieveNext(ILjava/util/Map;Z)I
    .registers 22
    .parameter "appID"
    .parameter "actorList"
    .parameter "bIsGroupActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    const/4 v9, -0x1

    .line 768
    .local v9, activityType:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v10, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 771
    const-string v1, "SNS"

    const-string v2, "=============== activityRetrieveNext: No account is logged in!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, -0x1

    .line 843
    :goto_1c
    return v1

    .line 776
    :cond_1d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v4, inActorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_b0

    .line 781
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v15, owner:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "owner"

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    const/16 v17, 0x0

    .local v17, spType:I
    :goto_34
    const/16 v1, 0xf

    move/from16 v0, v17

    if-gt v0, v1, :cond_97

    .line 785
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v0, v17

    invoke-static {v1, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 786
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const/16 v1, 0x8

    move/from16 v0, v17

    if-ne v0, v1, :cond_8f

    .line 788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v14

    .line 789
    .local v14, locale:Ljava/lang/String;
    const-string v1, "deu"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "fra"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "spa"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 790
    :cond_85
    new-instance v12, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Accept-Language"

    invoke-direct {v12, v1, v14}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .local v12, basicHeader:Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_8f} :catch_92

    .line 783
    .end local v12           #basicHeader:Lorg/apache/http/message/BasicHeader;
    .end local v14           #locale:Ljava/lang/String;
    :cond_8f
    :goto_8f
    add-int/lit8 v17, v17, 0x1

    goto :goto_34

    .line 795
    :catch_92
    move-exception v13

    .line 796
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8f

    .line 799
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_97
    const/4 v9, 0x0

    .line 831
    .end local v15           #owner:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #spType:I
    :goto_98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getActivityOffset(Landroid/content/Context;Ljava/util/Map;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v16

    .line 833
    .local v16, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v16, :cond_114

    .line 834
    const-string v1, "SNS"

    const-string v2, "activityRetrieveNext() - SHOULD CALL activityRetrieve() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v1, -0x1

    goto/16 :goto_1c

    .line 803
    .end local v16           #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_b0
    move-object/from16 v4, p2

    .line 809
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isValidFriendList(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 810
    const-string v1, "SNS"

    const-string v2, "=============== activityRetrieveNext: isValidFriendList is FALSE!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, -0x1

    goto/16 :goto_1c

    .line 815
    :cond_c2
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v14

    .line 817
    .restart local v14       #locale:Ljava/lang/String;
    const-string v1, "deu"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fc

    const-string v1, "fra"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fc

    const-string v1, "spa"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 818
    :cond_fc
    new-instance v12, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Accept-Language"

    invoke-direct {v12, v1, v14}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .restart local v12       #basicHeader:Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v12           #basicHeader:Lorg/apache/http/message/BasicHeader;
    .end local v14           #locale:Ljava/lang/String;
    :cond_106
    if-eqz p3, :cond_10a

    .line 824
    const/4 v9, 0x2

    goto :goto_98

    .line 825
    :cond_10a
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->IsIncludeOwner(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 826
    const/4 v9, 0x0

    goto :goto_98

    .line 828
    :cond_112
    const/4 v9, 0x1

    goto :goto_98

    .line 838
    .restart local v16       #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v8

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityRetrieve(IILjava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/util/ArrayList;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v11

    .line 843
    .local v11, activityRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v11}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto/16 :goto_1c
.end method

.method public activityStatuslistGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 23
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "groupID"
    .parameter "statusType"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 861
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== activityStatuslistGet() spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v4, -0x1

    .line 926
    :goto_27
    return v4

    .line 866
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 867
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== activityStatuslistGet() spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v4, -0x1

    goto :goto_27

    .line 873
    :cond_5a
    if-nez p3, :cond_65

    .line 874
    const-string v2, "SNS"

    const-string v3, "=============== activityStatuslistGet have to need peopleID !!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v4, -0x1

    goto :goto_27

    .line 880
    :cond_65
    if-eqz p4, :cond_72

    if-eqz p5, :cond_72

    .line 881
    const-string v2, "SNS"

    const-string v3, "=============== activityStatuslistGet groupID and statusType are mutually exclusive parameter !!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v4, -0x1

    goto :goto_27

    .line 887
    :cond_72
    if-eqz p5, :cond_100

    .line 889
    const-string v2, "mention"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const-string v2, "RTtome"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const-string v2, "RTbyme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const-string v2, "RTofme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const-string v2, "favorite"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 894
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== activityStatuslistGet statusType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v4, -0x1

    goto/16 :goto_27

    .line 899
    :cond_c9
    const-string v2, "favorite"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    const-string v2, "owner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 901
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== activityStatuslistGet statusType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] can use only peopleID is owner !!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v4, -0x1

    goto/16 :goto_27

    .line 907
    :cond_100
    if-eqz p6, :cond_123

    .line 908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v4, 0x6

    const/4 v8, 0x1

    const/16 v9, 0x10

    const/4 v10, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityStatuslistGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 913
    .local v15, activityStatuslistGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto/16 :goto_27

    .line 915
    .end local v15           #activityStatuslistGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_123
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v4

    .line 918
    .local v4, reqID:I
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/activity_statuslist"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 923
    .local v1, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public activityStatuslistGetNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "groupID"
    .parameter "statusType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 944
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== activityStatuslistGetNext() spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, -0x1

    .line 1002
    :goto_25
    return v1

    .line 949
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 950
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== activityStatuslistGetNext() spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, -0x1

    goto :goto_25

    .line 956
    :cond_52
    if-nez p3, :cond_5d

    .line 957
    const-string v1, "SNS"

    const-string v2, "=============== activityStatuslistGet have to need peopleID !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v1, -0x1

    goto :goto_25

    .line 961
    :cond_5d
    if-eqz p4, :cond_6a

    if-eqz p5, :cond_6a

    .line 962
    const-string v1, "SNS"

    const-string v2, "=============== activityStatuslistGetNext groupID and statusType are mutually exclusive parameter !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v1, -0x1

    goto :goto_25

    .line 968
    :cond_6a
    if-eqz p5, :cond_f8

    .line 970
    const-string v1, "mention"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "RTtome"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "RTbyme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "RTofme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "favorite"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 975
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== activityStatuslistGet statusType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, -0x1

    goto/16 :goto_25

    .line 980
    :cond_c1
    const-string v1, "favorite"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    const-string v1, "owner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    .line 982
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== activityStatuslistGet statusType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] can use only peopleID is owner !!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v1, -0x1

    goto/16 :goto_25

    .line 989
    :cond_f8
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getStatusListOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v12

    .line 991
    .local v12, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v12, :cond_10e

    .line 992
    const-string v1, "SNS"

    const-string v2, "activityStatuslistGetNext() - SHOULD CALL activityStatuslistGet() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, -0x1

    goto/16 :goto_25

    .line 997
    :cond_10e
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v4, 0x6

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v8

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v9

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v10

    move v2, p1

    move v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityStatuslistGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v11

    .line 1002
    .local v11, activityStatuslistGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v11}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto/16 :goto_25
.end method

.method public authLogin(IILjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "id"
    .parameter "pwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 517
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== authLogin spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, -0x1

    .line 550
    :goto_25
    return v0

    .line 522
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 523
    .local v8, am:Landroid/accounts/AccountManager;
    const/4 v6, 0x1

    .line 527
    .local v6, bResetSession:Z
    const/4 v10, 0x0

    .local v10, spEnum:I
    :goto_32
    const/16 v0, 0xf

    if-gt v10, v0, :cond_42

    .line 528
    sget-object v0, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v8, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 529
    .local v7, account:[Landroid/accounts/Account;
    array-length v0, v7

    if-lez v0, :cond_8f

    .line 530
    const/4 v6, 0x0

    .line 536
    .end local v7           #account:[Landroid/accounts/Account;
    :cond_42
    if-eqz v6, :cond_7d

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->removeAllAccounts()V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->clearSessionInfo()V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->resetICCID(Landroid/content/Context;)V

    .line 542
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteAllOffset()I

    .line 544
    const-string v0, "SNS"

    const-string v1, " Clear Account and Session values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newAuthLogin(IIILjava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v9

    .line 550
    .local v9, loginReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v9}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25

    .line 527
    .end local v9           #loginReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    .restart local v7       #account:[Landroid/accounts/Account;
    :cond_8f
    add-int/lit8 v10, v10, 0x1

    goto :goto_32
.end method

.method public authLogout(II)I
    .registers 10
    .parameter "appID"
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v6, 0x3

    invoke-virtual {v5, p1, p2, v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newAuthLogout(III)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v3

    .line 565
    .local v3, logoutReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Lcom/sec/android/app/sns/util/SnsUtil;->setICCID(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 566
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->removeAccount(I)V

    .line 567
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 570
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForRemoveAccount(I)V

    .line 572
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 573
    .local v1, am:Landroid/accounts/AccountManager;
    const/4 v2, 0x0

    .line 575
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, spEnum:I
    :goto_38
    const/16 v5, 0xf

    if-gt v4, v5, :cond_4c

    .line 576
    sget-object v5, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 577
    .local v0, account:[Landroid/accounts/Account;
    array-length v5, v0

    if-lez v5, :cond_49

    .line 578
    add-int/lit8 v2, v2, 0x1

    .line 575
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 582
    .end local v0           #account:[Landroid/accounts/Account;
    :cond_4c
    const/4 v5, 0x1

    if-ne v2, v5, :cond_58

    .line 583
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadCastForRemoveAllAccount()V

    .line 585
    :cond_58
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v5, v3}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v5

    return v5
.end method

.method public cancelSync(II)Z
    .registers 4
    .parameter "appID"
    .parameter "syncID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->cancelPollingRequest(II)Z

    move-result v0

    return v0
.end method

.method public commentFavoriteGetUser(IILjava/lang/String;Z)I
    .registers 22
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1202
    const-string v3, "SNS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=============== commentFavoriteGetUser spType = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is invalid!!! ==============="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v5, -0x1

    .line 1228
    :goto_27
    return v5

    .line 1207
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1208
    const-string v3, "SNS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=============== commentFavoriteGetUser spType = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is not logged in!!! ==============="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v5, -0x1

    goto :goto_27

    .line 1213
    :cond_5a
    if-eqz p4, :cond_7b

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentFavoriteGetUser(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v16

    .line 1218
    .local v16, commentFavoriteGetUserReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v16

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v3, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v5

    goto :goto_27

    .line 1220
    .end local v16           #commentFavoriteGetUserReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_7b
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v5

    .line 1221
    .local v5, reqID:I
    new-instance v2, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v3, v0, v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v15}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1225
    .local v2, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public commentFavoriteGetUserNext(IILjava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1243
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1244
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== commentFavoriteGetUserNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_25
    return v0

    .line 1249
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1250
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== commentFavoriteGetUserNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1255
    :cond_51
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getCommentFavoriteOffset(Landroid/content/Context;ILjava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v9

    .line 1257
    .local v9, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v9, :cond_65

    .line 1258
    const-string v1, "SNS"

    const-string v2, "commentFavoriteGetUserNext() : SHOULD CALL commentFavoriteGetUser() FIRST !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1262
    :cond_65
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x8

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentFavoriteGetUser(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v8

    .line 1267
    .local v8, commentFavoriteGetUserReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v8}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public commentFavoritePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 18
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1164
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== commentFavoritePost spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v0, -0x1

    .line 1185
    :goto_25
    return v0

    .line 1169
    :cond_26
    const/4 v0, 0x7

    invoke-static {p2, v0, p5}, Lcom/sec/android/app/sns/util/SnsUtil;->checkTargetType(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1170
    const-string v0, "SNS"

    const-string v1, "=============== commentFavoritePost: targetType is invalid!!! ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v0, -0x1

    goto :goto_25

    .line 1175
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1176
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== commentFavoritePost spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not logged in!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, -0x1

    goto :goto_25

    .line 1181
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v3, 0x7

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentFavoratePost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v9

    .line 1185
    .local v9, commentFavoriteReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v9}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public commentPost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1022
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== commentPost spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, -0x1

    .line 1042
    :goto_25
    return v0

    .line 1027
    :cond_26
    const/16 v0, 0x9

    invoke-static {p2, v0, p5}, Lcom/sec/android/app/sns/util/SnsUtil;->checkTargetType(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1028
    const-string v0, "SNS"

    const-string v1, "=============== commentPost: targetType is invalid!!! ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, -0x1

    goto :goto_25

    .line 1032
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1033
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== commentPost spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not logged in!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v0, -0x1

    goto :goto_25

    .line 1038
    :cond_63
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x9

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentPost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v9

    .line 1042
    .local v9, commentPostReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v9}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public commentRetrieve(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 26
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1063
    const-string v4, "SNS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=============== commentRetrieve spType = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] is invalid!!! ==============="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v6, -0x1

    .line 1097
    :goto_27
    return v6

    .line 1068
    :cond_28
    const/16 v4, 0xa

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/sec/android/app/sns/util/SnsUtil;->checkTargetType(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1069
    const-string v4, "SNS"

    const-string v5, "=============== commentRetrieve: targetType is invalid!!! ==============="

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v6, -0x1

    goto :goto_27

    .line 1074
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 1075
    const-string v4, "SNS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=============== commentPost spType = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] is not logged in!!! ==============="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v6, -0x1

    goto :goto_27

    .line 1080
    :cond_6f
    if-eqz p7, :cond_97

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x10

    const/4 v14, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v14}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentRetrieve(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v17

    .line 1086
    .local v17, commentRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v17

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v4, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v6

    goto :goto_27

    .line 1089
    .end local v17           #commentRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_97
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v6

    .line 1090
    .local v6, reqID:I
    new-instance v3, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v4, 0xa

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v16}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1094
    .local v3, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public commentRetrieveNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1116
    const-string v3, "SNS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== commentRetrieveNext spType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v3, -0x1

    .line 1144
    :goto_27
    return v3

    .line 1121
    :cond_28
    const/16 v3, 0xa

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1}, Lcom/sec/android/app/sns/util/SnsUtil;->checkTargetType(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1122
    const-string v3, "SNS"

    const-string v4, "=============== commentRetrieveNext: targetType is invalid!!! ==============="

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v3, -0x1

    goto :goto_27

    .line 1127
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 1128
    const-string v3, "SNS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== commentRetrieveNext spType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v3, -0x1

    goto :goto_27

    .line 1133
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getCommentOffset(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v16

    .line 1135
    .local v16, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v16, :cond_8c

    .line 1136
    const-string v3, "SNS"

    const-string v4, "commentRetrieveNext() : SHOULD CALL commentRetrieve() FIRST !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v3, -0x1

    goto :goto_27

    .line 1139
    :cond_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v6, 0xa

    const/4 v7, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v14

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v14}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newCommentRetrieve(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 1144
    .local v15, commentRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v3, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v3

    goto/16 :goto_27
.end method

.method public friendDelete(IILjava/lang/String;)I
    .registers 9
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1313
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1314
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== friendDelete spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is invalid!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_25
    return v1

    .line 1319
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_51

    .line 1320
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== friendDelete spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not logged in!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1325
    :cond_51
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendDelete(IIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v0

    .line 1328
    .local v0, friendDeleteReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto :goto_25
.end method

.method public friendGroupingGet(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 22
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "relation"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1345
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== friendGroupingGet spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v4, -0x1

    .line 1390
    :goto_27
    return v4

    .line 1350
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1351
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== friendGroupingGet spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v4, -0x1

    goto :goto_27

    .line 1357
    :cond_5a
    if-nez p3, :cond_65

    .line 1358
    const-string v2, "SNS"

    const-string v3, "=============== friendGroupingGet have to need peopleID !!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v4, -0x1

    goto :goto_27

    .line 1364
    :cond_65
    if-eqz p4, :cond_a7

    .line 1365
    const-string v2, "creator"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    const-string v2, "member"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    const-string v2, "follower"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 1368
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== friendGroupingGet statusType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v4, -0x1

    goto :goto_27

    .line 1374
    :cond_a7
    if-eqz p5, :cond_c9

    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0xd

    const/4 v7, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendGroupingGet(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 1379
    .local v15, friendGroupingGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto/16 :goto_27

    .line 1381
    .end local v15           #friendGroupingGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_c9
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v4

    .line 1382
    .local v4, reqID:I
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/friend_grouping"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1387
    .local v1, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public friendGroupingGetNext(IILjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "relation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1406
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1407
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== friendGroupingGetNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :goto_25
    return v0

    .line 1412
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1413
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== friendGroupingGetNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1419
    :cond_51
    if-nez p3, :cond_5b

    .line 1420
    const-string v1, "SNS"

    const-string v2, "=============== friendGroupingGetNext have to need peopleID !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1426
    :cond_5b
    if-eqz p4, :cond_94

    .line 1427
    const-string v1, "creator"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "member"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "follower"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 1430
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== friendGroupingGetNext statusType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1436
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getFriendGroupingOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v10

    .line 1439
    .local v10, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v10, :cond_a9

    .line 1440
    const-string v1, "SNS"

    const-string v2, "friendGroupingGetNext() - SHOULD CALL friendGroupingGet() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 1444
    :cond_a9
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0xd

    invoke-virtual {v10}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v6

    invoke-virtual {v10}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v7

    invoke-virtual {v10}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v8

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendGroupingGet(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v9

    .line 1449
    .local v9, friendGroupingGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v9}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto/16 :goto_25
.end method

.method public friendListRetrieveEx(IILjava/lang/String;Z)I
    .registers 32
    .parameter "appID"
    .parameter "spType"
    .parameter "relation"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1465
    const/4 v9, 0x0

    .line 1466
    .local v9, fullResponseTime:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1467
    .local v10, updatedResponseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1469
    .local v7, maxCount:I
    if-nez p2, :cond_51

    .line 1470
    new-instance v25, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 1471
    .local v25, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 1472
    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "full"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1474
    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "updated"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1476
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 1478
    const/16 v7, 0x80

    .line 1487
    .end local v25           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :goto_32
    if-eqz p4, :cond_64

    .line 1488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendListRetrieveEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v26

    .line 1492
    .local v26, friendListRetrieveExReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v26

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v14

    .line 1505
    .end local v26           #friendListRetrieveExReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :goto_50
    return v14

    .line 1479
    :cond_51
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_59

    .line 1480
    const/16 v7, 0x20

    goto :goto_32

    .line 1481
    :cond_59
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_61

    .line 1482
    const/16 v7, 0x64

    goto :goto_32

    .line 1484
    :cond_61
    const/16 v7, 0x80

    goto :goto_32

    .line 1494
    :cond_64
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v14

    .line 1497
    .local v14, reqID:I
    new-instance v11, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-direct/range {v11 .. v24}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1502
    .local v11, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50
.end method

.method public friendListRetrieveExNext(IILjava/lang/String;)I
    .registers 17
    .parameter "appID"
    .parameter "spType"
    .parameter "relation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1522
    const/4 v8, 0x0

    .line 1523
    .local v8, fullResponseTime:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1524
    .local v9, updatedResponseTime:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1526
    .local v6, maxCount:I
    if-nez p2, :cond_3f

    .line 1527
    new-instance v10, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 1528
    .local v10, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 1529
    const/4 v0, 0x0

    const/16 v1, 0xc

    const-string v2, "full"

    invoke-virtual {v10, v0, v1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1531
    const/4 v0, 0x0

    const/16 v1, 0xc

    const-string v2, "updated"

    invoke-virtual {v10, v0, v1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1533
    invoke-virtual {v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 1535
    const/16 v6, 0x80

    .line 1544
    .end local v10           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :goto_2a
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getFriendListRetrieveExOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v12

    .line 1547
    .local v12, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v12, :cond_4e

    .line 1548
    const-string v0, "SNS"

    const-string v1, "friendListRetrieveExNext() - SHOULD CALL friendListRetrieveEx() FIRST!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v0, -0x1

    .line 1557
    :goto_3e
    return v0

    .line 1536
    .end local v12           #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_3f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_45

    .line 1537
    const/16 v6, 0x20

    goto :goto_2a

    .line 1538
    :cond_45
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4b

    .line 1539
    const/16 v6, 0x64

    goto :goto_2a

    .line 1541
    :cond_4b
    const/16 v6, 0x80

    goto :goto_2a

    .line 1552
    .restart local v12       #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0xc

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendListRetrieveEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v11

    .line 1557
    .local v11, friendListRetrieveExReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v11}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_3e
.end method

.method public friendRequestPost(IILjava/lang/String;)I
    .registers 9
    .parameter "appID"
    .parameter "spType"
    .parameter "targetID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1281
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1282
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== friendRequestPost spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is invalid!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :goto_25
    return v1

    .line 1285
    :cond_26
    const/4 v2, 0x2

    if-eq p2, v2, :cond_48

    .line 1286
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== friendRequestPost spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1291
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1292
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== friendRequestPost spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not logged in!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1297
    :cond_73
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendRequestPost(IIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v0

    .line 1300
    .local v0, friendRequestPostReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto :goto_25
.end method

.method public groupRetrieve(IILjava/lang/String;Z)I
    .registers 21
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1574
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1575
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== groupRetrieve spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v4, -0x1

    .line 1608
    :goto_27
    return v4

    .line 1580
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1581
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== groupRetrieve spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v4, -0x1

    goto :goto_27

    .line 1587
    :cond_5a
    if-nez p3, :cond_65

    .line 1588
    const-string v2, "SNS"

    const-string v3, "=============== groupRetrieve have to need peopleID !!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v4, -0x1

    goto :goto_27

    .line 1593
    :cond_65
    if-eqz p4, :cond_84

    .line 1594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x11

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newGroupRetrieve(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 1598
    .local v15, groupRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto :goto_27

    .line 1600
    .end local v15           #groupRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_84
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v4

    .line 1601
    .local v4, reqID:I
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/groups"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1605
    .local v1, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public groupRetrieveNext(IILjava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1622
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1623
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== groupRetrieveNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_25
    return v0

    .line 1628
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1629
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== groupRetrieveNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1635
    :cond_51
    if-nez p3, :cond_5b

    .line 1636
    const-string v1, "SNS"

    const-string v2, "=============== groupRetrieveNext have to need peopleID !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1641
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getGroupRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v9

    .line 1644
    .local v9, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v9, :cond_6f

    .line 1645
    const-string v1, "SNS"

    const-string v2, "groupRetrieveNext() - SHOULD CALL groupRetrieve() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1649
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x11

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newGroupRetrieve(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v8

    .line 1653
    .local v8, friendGroupingGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v8}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public messageDelete(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1668
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1669
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messageDelete spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :goto_25
    return v0

    .line 1674
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1675
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messageDelete spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1680
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x12

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessageDelete(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v7

    .line 1683
    .local v7, messageDeleteReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v7}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public messageGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "threadID"
    .parameter "messageID"
    .parameter "messageFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1699
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1700
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messageGet spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :goto_25
    return v0

    .line 1705
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1706
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messageGet spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1711
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x14

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessageGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v7

    .line 1714
    .local v7, messageGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v7}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public messagePost(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 27
    .parameter "appID"
    .parameter "spType"
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1735
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messagePost spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v1, -0x1

    .line 1805
    :goto_27
    return v1

    .line 1740
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1741
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messagePost spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v1, -0x1

    goto :goto_27

    .line 1747
    :cond_5a
    const-string v1, "new"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "reply"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "forward"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 1750
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messagePost postType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v1, -0x1

    goto :goto_27

    .line 1756
    :cond_9a
    const-string v1, "new"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1757
    if-nez p7, :cond_aa

    if-nez p8, :cond_aa

    if-eqz p9, :cond_cd

    .line 1758
    :cond_aa
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messagePost postType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] can not use replyMessageID, replyThreadID, replyFolder!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1767
    :cond_cd
    if-eqz p4, :cond_117

    .line 1768
    move-object/from16 v12, p4

    .local v12, arr$:[Ljava/lang/String;
    array-length v14, v12

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_d3
    if-ge v13, v14, :cond_e6

    aget-object v16, v12, v13

    .line 1769
    .local v16, receiver:Ljava/lang/String;
    if-nez v16, :cond_e3

    .line 1770
    const-string v1, "SNS"

    const-string v2, "=============== A member of of receiverIDs is null!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1768
    :cond_e3
    add-int/lit8 v13, v13, 0x1

    goto :goto_d3

    .line 1775
    .end local v16           #receiver:Ljava/lang/String;
    :cond_e6
    const/4 v1, 0x7

    move/from16 v0, p2

    if-eq v0, v1, :cond_f6

    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_f6

    const/16 v1, 0xe

    move/from16 v0, p2

    if-ne v0, v1, :cond_106

    .line 1777
    :cond_f6
    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_121

    .line 1778
    const-string v1, "SNS"

    const-string v2, "=============== messagePost postType = this SP can\'t support multi receiver!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1783
    :cond_106
    move-object/from16 v0, p4

    array-length v1, v0

    const/16 v2, 0x14

    if-le v1, v2, :cond_121

    .line 1784
    const-string v1, "SNS"

    const-string v2, "=============== messagePost postType = this SP support max 20 receiver!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1790
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_117
    const-string v1, "SNS"

    const-string v2, "=============== messagePost receiverIDs is null, it need at least one receiver !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1795
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    :cond_121
    if-nez p6, :cond_12d

    .line 1796
    const-string v1, "SNS"

    const-string v2, "=============== messagePost postType = Content must be filled!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v1, -0x1

    goto/16 :goto_27

    .line 1801
    :cond_12d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x15

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessagePost(IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 1805
    .local v15, messagePostReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto/16 :goto_27
.end method

.method public messageThreadRetrieve(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .parameter "appID"
    .parameter "folder"
    .parameter "threadID"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1822
    const-string v3, "SNS"

    const-string v4, "=============== commentPost spType = [0] is not logged in!!! ==============="

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v5, -0x1

    .line 1848
    :goto_17
    return v5

    .line 1827
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    const/4 v4, 0x0

    const/16 v6, 0x16

    move-object/from16 v0, p2

    #calls: Lcom/sec/android/app/sns/SnsService;->checkMsgFolderType(IILjava/lang/String;)Z
    invoke-static {v3, v4, v6, v0}, Lcom/sec/android/app/sns/SnsService;->access$300(Lcom/sec/android/app/sns/SnsService;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 1828
    const-string v3, "SNS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=============== messageThreadRetrieve: folder name ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is invalid!!! ==============="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const/4 v5, -0x1

    goto :goto_17

    .line 1833
    :cond_49
    if-eqz p4, :cond_6a

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x16

    const/4 v7, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x0

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessageThreadRetrieve(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v16

    .line 1838
    .local v16, messageThreadRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v16

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v3, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v5

    goto :goto_17

    .line 1840
    .end local v16           #messageThreadRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_6a
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v5

    .line 1841
    .local v5, reqID:I
    new-instance v2, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v4, 0x0

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v3, 0x16

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v15, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1845
    .local v2, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_17
.end method

.method public messageThreadRetrieveNext(ILjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "folder"
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x16

    const/4 v0, -0x1

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/sns/SnsService;->checkMsgFolderType(IILjava/lang/String;)Z
    invoke-static {v1, v3, v2, p2}, Lcom/sec/android/app/sns/SnsService;->access$300(Lcom/sec/android/app/sns/SnsService;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1864
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== messageThreadRetrieveNext: folder name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :goto_2a
    return v0

    .line 1869
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getThreadRetrieveOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v9

    .line 1871
    .local v9, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v9, :cond_3f

    .line 1872
    const-string v1, "SNS"

    const-string v2, "messageThreadRetrieveNext() : SHOULD CALL messageThreadRetrieve() FIRST !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1876
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessageThreadRetrieve(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v8

    .line 1881
    .local v8, messageThreadRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v8}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_2a
.end method

.method public notePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "categoryID"
    .parameter "categoryOwnerID"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1900
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1901
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== notePost spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_25
    return v0

    .line 1906
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1907
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== notePost spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1912
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x17

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newNotePost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v7

    .line 1915
    .local v7, notePostReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v7}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public notificationPost(I[I)I
    .registers 12
    .parameter "appID"
    .parameter "spTypeList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1927
    if-nez p2, :cond_b

    .line 1928
    const-string v6, "SNS"

    const-string v7, "=============== notificationPost spType is null!!!!! ==============="

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :goto_a
    return v5

    .line 1932
    :cond_b
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v2, :cond_46

    aget v4, v0, v1

    .line 1933
    .local v4, spType:I
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_43

    .line 1935
    :cond_24
    const-string v6, "SNS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=============== notificationPost spType = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is invalid!!! ==============="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1932
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1941
    .end local v4           #spType:I
    :cond_46
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v6, 0x18

    invoke-virtual {v5, p1, p2, v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newNotificationPost(I[II)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v3

    .line 1944
    .local v3, notificationPostReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v5, v3}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v5

    goto :goto_a
.end method

.method public notificationRetrieve(IIZ)I
    .registers 20
    .parameter "appID"
    .parameter "spType"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1956
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1957
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== notificationRetrieve() spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const/4 v4, -0x1

    .line 1986
    :goto_27
    return v4

    .line 1962
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1963
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== notificationRetrieve() spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/4 v4, -0x1

    goto :goto_27

    .line 1968
    :cond_5a
    if-eqz p3, :cond_77

    .line 1969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x19

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newNotificationRetrieve(IIIIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 1973
    .local v15, notificationRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto :goto_27

    .line 1975
    .end local v15           #notificationRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_77
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v4

    .line 1978
    .local v4, reqID:I
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v5, 0x19

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/notification_list"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 1983
    .local v1, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public notificationRetrieveNext(II)I
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1998
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1999
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== notificationRetrieveNext() spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :goto_25
    return v0

    .line 2004
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2005
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== notificationRetrieveNext() spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2011
    :cond_51
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getNotificationRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v8

    .line 2014
    .local v8, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v8, :cond_65

    .line 2015
    const-string v1, "SNS"

    const-string v2, "notificationRetrieveNext() - SHOULD CALL notificationRetrieve() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2019
    :cond_65
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x19

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v4

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v5

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newNotificationRetrieve(IIIIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v7

    .line 2023
    .local v7, notificationRetrieveReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v7}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public oAuthCredentialGet(IILjava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .parameter "url"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2490
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2491
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== oAuthCredentialGet spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const/4 v0, -0x1

    .line 2499
    :goto_25
    return v0

    .line 2496
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x29

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newOAuthCredentialGet(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v6

    .line 2499
    .local v6, loginGetBody:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v6}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public peopleProfileGet(IILjava/lang/String;I)I
    .registers 13
    .parameter "appID"
    .parameter "spType"
    .parameter "peopleId"
    .parameter "parentReqID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2039
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2040
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== PeopleProfileGet() spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :goto_25
    return v4

    .line 2045
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 2046
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== PeopleProfileGet() spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not logged in!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2051
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x1a

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPeopleProfileGet(IIIILjava/lang/String;I)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v7

    .line 2054
    .local v7, peopleProfileGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v7}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto :goto_25
.end method

.method public peopleProfileSet(I[ILjava/lang/String;)I
    .registers 13
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 2068
    if-nez p2, :cond_b

    .line 2069
    const-string v6, "SNS"

    const-string v7, "=============== peopleProfileSet spType is null!!!!! ==============="

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :goto_a
    return v5

    .line 2073
    :cond_b
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v2, :cond_46

    aget v4, v0, v1

    .line 2074
    .local v4, spType:I
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_43

    .line 2076
    :cond_24
    const-string v6, "SNS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=============== peopleProfileSet spType = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is invalid!!! ==============="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2073
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2082
    .end local v4           #spType:I
    :cond_46
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v6, 0x1b

    invoke-virtual {v5, p1, p2, v6, p3}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPeopleProfileSet(I[IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v3

    .line 2085
    .local v3, peopleProfileSetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v5, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v5, v3}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v5

    goto :goto_a
.end method

.method public photoAlbumGet(ILjava/util/Map;Z)I
    .registers 28
    .parameter "appID"
    .parameter "peopleList"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2105
    const/16 v3, 0x10

    .line 2107
    .local v3, spType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2108
    const-string v1, "SNS"

    const-string v2, "=============== photoAlbumGet: No account is logged in!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v9, -0x1

    .line 2149
    :goto_18
    return v9

    .line 2115
    :cond_19
    move-object/from16 v5, p2

    .line 2121
    .local v5, friendList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {v5}, Lcom/sec/android/app/sns/util/SnsUtil;->isValidFriendList(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2122
    const/4 v9, -0x1

    goto :goto_18

    .line 2124
    :cond_23
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v22

    .line 2126
    .local v22, peopleKeySetArray:[Ljava/lang/Object;
    move-object/from16 v0, v22

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    .line 2127
    const/4 v1, 0x0

    aget-object v1, v22, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2128
    .local v21, key:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 2129
    .local v20, checkPeopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    .line 2130
    move/from16 v3, v21

    .line 2133
    .end local v20           #checkPeopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #key:I
    :cond_51
    if-eqz p3, :cond_6e

    .line 2134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x1d

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPhotoAlbumGet(IIILjava/util/Map;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v23

    .line 2138
    .local v23, photoAlbumGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    move-object/from16 v0, v23

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v9

    goto :goto_18

    .line 2141
    .end local v23           #photoAlbumGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_6e
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v9

    .line 2142
    .local v9, reqID:I
    new-instance v6, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move/from16 v7, p1

    move v8, v3

    invoke-direct/range {v6 .. v19}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 2146
    .local v6, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_18
.end method

.method public photoAlbumGetNext(ILjava/util/Map;)I
    .registers 16
    .parameter "appID"
    .parameter "peopleList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 2166
    const/16 v2, 0x10

    .line 2168
    .local v2, spType:I
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2169
    const-string v1, "SNS"

    const-string v3, "=============== photoAlbumGetNext: No account is logged in!! ==============="

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_17
    :goto_17
    return v0

    .line 2176
    :cond_18
    move-object v4, p2

    .line 2182
    .local v4, friendList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isValidFriendList(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2185
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getAlbumGetOffset(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v12

    .line 2186
    .local v12, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v12, :cond_33

    .line 2187
    const-string v1, "SNS"

    const-string v3, "photoAlbumGetNext() : SHOULD CALL photoAlbumGet() FIRST !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2191
    :cond_33
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .line 2193
    .local v10, peopleKeySetArray:[Ljava/lang/Object;
    array-length v0, v10

    if-ne v0, v3, :cond_5a

    .line 2194
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2195
    .local v9, key:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2196
    .local v8, checkPeopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5a

    .line 2197
    move v2, v9

    .line 2200
    .end local v8           #checkPeopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #key:I
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x1d

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v6

    invoke-virtual {v12}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPhotoAlbumGet(IIILjava/util/Map;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v11

    .line 2204
    .local v11, photoAlbumGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v11}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_17
.end method

.method public photoUpload(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 22
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "fileName"
    .parameter "content"
    .parameter "title"
    .parameter "tag"
    .parameter "pfd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2223
    if-nez p2, :cond_b

    .line 2224
    const-string v0, "SNS"

    const-string v1, "=============== photoUpload spType is null!!!!! ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const/4 v0, -0x1

    .line 2246
    :goto_a
    return v0

    .line 2228
    :cond_b
    move-object/from16 v9, p2

    .local v9, arr$:[I
    array-length v11, v9

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_f
    if-ge v10, v11, :cond_48

    aget v13, v9, v10

    .line 2229
    .local v13, spType:I
    invoke-static {v13}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2231
    :cond_25
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== photoUpload spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const/4 v0, -0x1

    goto :goto_a

    .line 2228
    :cond_45
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 2237
    .end local v13           #spType:I
    :cond_48
    if-nez p7, :cond_53

    .line 2238
    const-string v0, "SNS"

    const-string v1, "=============== photoUpload pfd is null, it need valid value !!!!! ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/4 v0, -0x1

    goto :goto_a

    .line 2243
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x20

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPhotoUpload(I[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v12

    .line 2246
    .local v12, photoUploadReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v12}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_a
.end method

.method public searchKeywordRetrieve(II)I
    .registers 8
    .parameter "appID"
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2290
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2291
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== searchKeywordRetrieve spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is invalid!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :goto_25
    return v1

    .line 2296
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_51

    .line 2297
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============== searchKeywordRetrieve spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not logged in!!! ==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2302
    :cond_51
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v2, 0x25

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newSearchKeywrodsRetrieve(III)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v0

    .line 2305
    .local v0, searchKeywordRetrievereq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v1

    goto :goto_25
.end method

.method public searchingSearch(IILjava/lang/String;Z)I
    .registers 21
    .parameter "appID"
    .parameter "spType"
    .parameter "keyWord"
    .parameter "bFetchFromServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2321
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2322
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== searchingSearch spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is invalid!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    const/4 v4, -0x1

    .line 2366
    :goto_27
    return v4

    .line 2327
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2328
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== searchingSearch spType = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is not logged in!!! ==============="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    const/4 v4, -0x1

    goto :goto_27

    .line 2334
    :cond_5a
    if-nez p3, :cond_65

    .line 2335
    const-string v2, "SNS"

    const-string v3, "=============== searchingSearch have to need keyWord !!! ==============="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/4 v4, -0x1

    goto :goto_27

    .line 2340
    :cond_65
    if-eqz p4, :cond_84

    .line 2341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v4, 0x26

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newSearchingSearch(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v15

    .line 2345
    .local v15, searchingSearchReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v2, v15}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v4

    goto :goto_27

    .line 2347
    .end local v15           #searchingSearchReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_84
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v4

    .line 2348
    .local v4, reqID:I
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/16 v5, 0x26

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v2, "content://com.sec.android.app.provider.sns/searching"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 2363
    .local v1, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27
.end method

.method public searchingSearchNext(IILjava/lang/String;)I
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "keyWord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2381
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2382
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== searchingSearchNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :goto_25
    return v0

    .line 2387
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2388
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== searchingSearchNext spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2394
    :cond_51
    if-nez p3, :cond_5b

    .line 2395
    const-string v1, "SNS"

    const-string v2, "=============== searchingSearchNext have to need keyWord !!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2400
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getSearchingSearchOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v8

    .line 2403
    .local v8, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-nez v8, :cond_6f

    .line 2404
    const-string v1, "SNS"

    const-string v2, "groupRetrieveNext() - SHOULD CALL groupRetrieve() FIRST!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2408
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x26

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v5

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v6

    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newSearchingSearch(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v9

    .line 2412
    .local v9, searchingSearchReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v9}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public serviceProviderDeepLinkGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .parameter "appID"
    .parameter "spType"
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2434
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== serviceProviderDeepLinkGet spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const/4 v0, -0x1

    .line 2454
    :goto_25
    return v0

    .line 2439
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 2440
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== serviceProviderDeepLinkGet spType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not logged in!!! ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/4 v0, -0x1

    goto :goto_25

    .line 2445
    :cond_52
    if-eqz p3, :cond_5f

    if-eqz p4, :cond_5f

    .line 2446
    const-string v0, "SNS"

    const-string v1, "linkType or deeplinkUrl must be null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/4 v0, -0x1

    goto :goto_25

    .line 2449
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x27

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newServiceProvideDeepLinkGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v10

    .line 2454
    .local v10, serviceProviderDeepLinkGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v10}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method

.method public snsGatewayHostGet(I)I
    .registers 10
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2467
    .local v7, resource:Landroid/content/res/Resources;
    const v0, 0x7f040001

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2468
    .local v4, modelCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2470
    .local v5, mccValue:Ljava/lang/String;
    if-eqz v5, :cond_23

    .line 2471
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2473
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v2, 0x10

    const/16 v3, 0x28

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newSnsGatewayHostGet(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v6

    .line 2476
    .local v6, hostGetReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v6}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    return v0
.end method

.method public syncSNSData(II[II)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2536
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2537
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== syncSNSData spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :goto_25
    return v0

    .line 2542
    :cond_26
    array-length v1, p3

    if-nez v1, :cond_31

    .line 2543
    const-string v1, "SNS"

    const-string v2, "=============== syncSNSData pollingTypes is null!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2547
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 2548
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== syncSNSData spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2553
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->checkSupportedPollingType(I[I)Z
    invoke-static {v1, p2, p3}, Lcom/sec/android/app/sns/SnsService;->access$400(Lcom/sec/android/app/sns/SnsService;I[I)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 2554
    const-string v1, "SNS"

    const-string v2, "=============== syncSNSData unsupported request type!!! ==============="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2559
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->addPollingRequest(II[II)I

    move-result v1

    .line 2562
    if-le v1, v0, :cond_90

    .line 2563
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2565
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_90
    move v0, v1

    .line 2567
    goto :goto_25
.end method

.method public testReqMgrExceptionCase(III)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2596
    const-string v0, "SNS"

    const-string v1, "=============== testReqMgrExceptionCase: No account is logged in!! ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    const/4 v0, -0x1

    .line 2673
    :goto_14
    return v0

    .line 2601
    :cond_15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    const-string v0, "owner"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    const/16 v0, 0xf

    if-gt v1, v0, :cond_46

    .line 2608
    :try_start_2a
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3d} :catch_41

    .line 2606
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 2611
    :catch_41
    move-exception v0

    .line 2612
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3d

    .line 2616
    :cond_46
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getLatestActivityTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newActivityRetrieve(IILjava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/util/ArrayList;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v1

    .line 2622
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 2625
    packed-switch p3, :pswitch_data_14a

    .line 2673
    :goto_67
    const/4 v0, 0x1

    goto :goto_14

    .line 2627
    :pswitch_69
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 2628
    const/16 v0, 0x1f41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    .line 2630
    new-instance v0, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x190

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v0

    .line 2633
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_67

    .line 2639
    :pswitch_a1
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 2640
    const/16 v0, 0x2329

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    .line 2641
    const-string v0, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "9001 error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    sget-object v2, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v0, v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 2644
    new-instance v0, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x190

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v0

    .line 2647
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_67

    .line 2653
    :pswitch_101
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->increaseRetryCount()V

    .line 2654
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->increaseRetryCount()V

    .line 2655
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->increaseRetryCount()V

    .line 2656
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v1}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    goto/16 :goto_67

    .line 2660
    :pswitch_111
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 2661
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    .line 2663
    new-instance v0, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v0

    .line 2666
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_67

    .line 2625
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_69
        :pswitch_a1
        :pswitch_101
        :pswitch_111
    .end packed-switch
.end method

.method public videoUpload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "categoryOwnerID"
    .parameter "title"
    .parameter "fileName"
    .parameter "pfd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2263
    invoke-static {p2}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2264
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== videoUpload spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is invalid!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :goto_25
    return v0

    .line 2269
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/sns/util/SnsUtil;->IsAddedAccount(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2270
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============== videoUpload spType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not logged in!!! ==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2275
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->mRequestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;

    const/16 v3, 0x22

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newVideoUpload(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v8

    .line 2278
    .local v8, videoUploadReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$2;->this$0:Lcom/sec/android/app/sns/SnsService;

    #calls: Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    invoke-static {v0, v8}, Lcom/sec/android/app/sns/SnsService;->access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    goto :goto_25
.end method
