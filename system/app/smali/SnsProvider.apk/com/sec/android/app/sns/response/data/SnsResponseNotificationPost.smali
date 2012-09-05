.class public Lcom/sec/android/app/sns/response/data/SnsResponseNotificationPost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseNotificationPost.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 36
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 16
    .parameter "context"
    .parameter "req"

    .prologue
    .line 49
    const/4 v10, 0x0

    .line 50
    .local v10, uri:Landroid/net/Uri;
    const/16 v7, 0x1771

    .line 51
    .local v7, internalCode:I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v4, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_8
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationPost;->getRespType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_54

    .line 55
    iget-object v8, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 56
    .local v8, notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    iget-object v2, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 58
    .local v2, errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 60
    invoke-virtual {v0, p2, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v10

    .line 61
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 63
    if-eqz v2, :cond_5d

    .line 64
    invoke-static {v2}, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationPost;->getErrSpList(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)Ljava/util/ArrayList;

    move-result-object v3

    .line 66
    .local v3, errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 67
    .local v9, sp:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v6, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "null"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 77
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .end local v3           #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    .end local v9           #sp:I
    :catch_50
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :cond_54
    :goto_54
    new-instance v11, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v11, v10, v7, v4}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;ILjava/util/Map;)V

    return-object v11

    .line 71
    .restart local v0       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .restart local v2       #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .restart local v3       #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :cond_5a
    const/16 v7, 0x1772

    .line 72
    goto :goto_54

    .line 73
    .end local v3           #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5d
    const/4 v4, 0x0

    .line 74
    const/4 v7, 0x0

    goto :goto_54
.end method
