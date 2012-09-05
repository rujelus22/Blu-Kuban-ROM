.class public Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumGet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponsePhotoAlbumGet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 38
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

    .line 40
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 18
    .parameter "context"
    .parameter "req"

    .prologue
    .line 51
    const/4 v12, 0x0

    .line 52
    .local v12, uri:Landroid/net/Uri;
    const/16 v10, 0x1771

    .line 53
    .local v10, internalCode:I
    const/4 v7, 0x0

    .line 56
    .local v7, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumGet;->getRespType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5e

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 58
    .local v2, album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 60
    .local v5, errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    new-instance v3, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    .local v3, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 62
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v12

    .line 63
    invoke-virtual {v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 65
    if-eqz v5, :cond_68

    .line 66
    invoke-static {v5}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumGet;->getErrSpList(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)Ljava/util/ArrayList;

    move-result-object v6

    .line 68
    .local v6, errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_6a

    .line 69
    .end local v7           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v8, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_2f
    check-cast p2, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getActorMap()Ljava/util/Map;

    move-result-object v1

    .line 72
    .local v1, actorMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_64

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 73
    .local v11, sp:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_58} :catch_59

    goto :goto_39

    .line 80
    .end local v1           #actorMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #sp:I
    :catch_59
    move-exception v4

    move-object v7, v8

    .line 81
    .end local v2           #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    .end local v3           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v5           #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .end local v6           #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v4, e:Ljava/lang/Exception;
    .restart local v7       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_5b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    new-instance v13, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v13, v12, v10, v7}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;ILjava/util/Map;)V

    return-object v13

    .line 76
    .end local v7           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v1       #actorMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v2       #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    .restart local v3       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .restart local v5       #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .restart local v6       #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_64
    const/16 v10, 0x1772

    move-object v7, v8

    .line 77
    .end local v8           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v7       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    goto :goto_5e

    .line 78
    .end local v1           #actorMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6           #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local p2
    :cond_68
    const/4 v10, 0x0

    goto :goto_5e

    .line 80
    .end local v2           #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    .end local v3           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v5           #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    :catch_6a
    move-exception v4

    goto :goto_5b
.end method
