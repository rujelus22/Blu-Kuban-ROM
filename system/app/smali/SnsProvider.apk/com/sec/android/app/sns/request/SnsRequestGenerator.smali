.class public Lcom/sec/android/app/sns/request/SnsRequestGenerator;
.super Ljava/lang/Object;
.source "SnsRequestGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPhotoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "req"
    .parameter "parsedData"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v12

    .line 170
    .local v12, reqType:I
    if-nez p1, :cond_1b

    .line 171
    :try_start_6
    new-instance v2, Lcom/sec/android/app/sns/exception/SnsException;

    const-string v3, "SnsRequestGenerator : createPhotoUploadBodyRequest() : Parsed Result is NULL !!!"

    invoke-direct {v2, v3}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_6 .. :try_end_e} :catch_e

    .line 191
    :catch_e
    move-exception v9

    .line 192
    .local v9, e:Lcom/sec/android/app/sns/exception/SnsException;
    invoke-virtual {v9}, Lcom/sec/android/app/sns/exception/SnsException;->printStackTrace()V

    .line 193
    const-string v2, "SNS_FRAMEWORK"

    const-string v3, "SnsRequestGenerator : createPhotoUploadBodyRequest() : Failed !!!"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v11, 0x0

    .end local v9           #e:Lcom/sec/android/app/sns/exception/SnsException;
    :cond_1a
    :goto_1a
    return-object v11

    .line 174
    :cond_1b
    const/4 v11, 0x0

    .line 176
    .local v11, photoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    const/16 v2, 0x20

    if-ne v2, v12, :cond_1a

    .line 178
    :try_start_20
    new-instance v1, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct {v1}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    .line 180
    .local v1, requestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;
    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    move-object v10, v0

    .line 181
    .local v10, photo:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    move-object v13, v0

    .line 182
    .local v13, uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v4

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mHostAddr:Ljava/lang/String;

    iget-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mResourceID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getParcelFileDesc()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPhotoUploadBody(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    :try_end_46
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_20 .. :try_end_46} :catch_e

    move-result-object v11

    goto :goto_1a
.end method

.method public static createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 40
    .parameter "context"
    .parameter "appID"
    .parameter "internalSp"
    .parameter "reqType"
    .parameter "pollingID"
    .parameter "prevReq"
    .parameter "parsedData"

    .prologue
    .line 42
    new-instance v2, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct {v2}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    .line 43
    .local v2, reqFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;
    const/16 v30, 0x0

    .line 45
    .local v30, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    const/4 v8, 0x1

    .line 46
    .local v8, startOffset:I
    const/16 v9, 0x10

    .line 47
    .local v9, maxCount:I
    const/4 v10, 0x0

    .line 49
    .local v10, startContext:Ljava/lang/String;
    sparse-switch p3, :sswitch_data_142

    .line 153
    :goto_e
    return-object v30

    .line 52
    :sswitch_f
    const/4 v11, 0x0

    .line 53
    .local v11, fullResponseTime:Ljava/lang/String;
    const/4 v12, 0x0

    .line 55
    .local v12, updatedResponseTime:Ljava/lang/String;
    if-nez p2, :cond_62

    .line 56
    new-instance v27, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 57
    .local v27, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 58
    const/4 v3, 0x0

    const/16 v4, 0xe

    const-string v5, "full"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    const/4 v3, 0x0

    const/16 v4, 0xe

    const-string v5, "updated"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 62
    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 64
    const/16 v9, 0x80

    .line 79
    .end local v27           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :goto_3a
    if-eqz p6, :cond_8e

    if-eqz p5, :cond_8e

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_8e

    move-object/from16 v28, p5

    .line 80
    check-cast v28, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    .line 81
    .local v28, friendReq:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    .line 82
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getStartOffset()I

    move-result v3

    add-int v8, v3, v9

    .line 94
    .end local v28           #friendReq:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;
    :cond_54
    :goto_54
    const/4 v6, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v12}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newFriendListRetrieve(IIIZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v30

    .line 97
    goto :goto_e

    .line 65
    :cond_62
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6a

    .line 66
    const/16 v9, 0x20

    goto :goto_3a

    .line 67
    :cond_6a
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_72

    .line 68
    const/16 v9, 0x64

    goto :goto_3a

    .line 69
    :cond_72
    const/4 v3, 0x6

    move/from16 v0, p2

    if-ne v0, v3, :cond_7a

    .line 70
    const/16 v9, 0x80

    goto :goto_3a

    .line 71
    :cond_7a
    const/4 v3, 0x7

    move/from16 v0, p2

    if-ne v0, v3, :cond_82

    .line 72
    const/16 v9, 0x80

    goto :goto_3a

    .line 73
    :cond_82
    const/16 v3, 0xf

    move/from16 v0, p2

    if-ne v0, v3, :cond_8b

    .line 74
    const/16 v9, 0x80

    goto :goto_3a

    .line 76
    :cond_8b
    const/16 v9, 0x80

    goto :goto_3a

    .line 84
    :cond_8e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getFriendListRetrieveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v31

    .line 87
    .local v31, responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-eqz v31, :cond_54

    .line 88
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v8

    .line 89
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v9

    .line 90
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v10

    goto :goto_54

    .line 100
    .end local v11           #fullResponseTime:Ljava/lang/String;
    .end local v12           #updatedResponseTime:Ljava/lang/String;
    .end local v31           #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :sswitch_a5
    const-string v19, "-30"

    .line 102
    .local v19, timeLimitIntervalEndDay:Ljava/lang/String;
    if-eqz p6, :cond_da

    if-eqz p5, :cond_da

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_da

    move-object/from16 v29, p5

    .line 103
    check-cast v29, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 104
    .local v29, messageReq:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    .line 105
    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getStartOffset()I

    move-result v3

    add-int v8, v3, v9

    .line 117
    .end local v29           #messageReq:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    :cond_c1
    :goto_c1
    const/16 v16, 0x1

    const/16 v20, 0x0

    move-object v13, v2

    move/from16 v14, p1

    move/from16 v15, p3

    move/from16 v17, p4

    move/from16 v18, p2

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    invoke-virtual/range {v13 .. v23}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newMessageFolderRetrieve(IIZIILjava/lang/String;Ljava/lang/Long;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v30

    .line 121
    goto/16 :goto_e

    .line 107
    :cond_da
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getMessageFolderRetireveOffset(Landroid/content/Context;I)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v31

    .line 110
    .restart local v31       #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-eqz v31, :cond_c1

    .line 111
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v8

    .line 112
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v9

    .line 113
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v10

    goto :goto_c1

    .line 124
    .end local v19           #timeLimitIntervalEndDay:Ljava/lang/String;
    .end local v31           #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    :sswitch_f1
    const-string v25, "owner"

    const/16 v26, -0x1

    move-object/from16 v20, v2

    move/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, p3

    move/from16 v24, p4

    invoke-virtual/range {v20 .. v26}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newPeopleProfileGet(IIIILjava/lang/String;I)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v30

    .line 127
    goto/16 :goto_e

    .line 130
    :sswitch_105
    if-eqz p6, :cond_12e

    if-eqz p5, :cond_12e

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_12e

    move-object/from16 v32, p5

    .line 131
    check-cast v32, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 132
    .local v32, scheduleReq:Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    .line 133
    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getStartOffset()I

    move-result v3

    add-int v8, v3, v9

    .line 144
    .end local v32           #scheduleReq:Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
    :cond_11f
    :goto_11f
    const/4 v5, 0x1

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newScheduleRetrieve(IIZIIIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v30

    .line 147
    goto/16 :goto_e

    .line 135
    :cond_12e
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBUtil;->getScheduleRetrieveOffset(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBUtilListData;

    move-result-object v31

    .line 137
    .restart local v31       #responseParams:Lcom/sec/android/app/sns/db/SnsDBUtilListData;
    if-eqz v31, :cond_11f

    .line 138
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartOffset()I

    move-result v8

    .line 139
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getMaxCount()I

    move-result v9

    .line 140
    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->getStartContext()Ljava/lang/String;

    move-result-object v10

    goto :goto_11f

    .line 49
    nop

    :sswitch_data_142
    .sparse-switch
        0xe -> :sswitch_f
        0x13 -> :sswitch_a5
        0x1a -> :sswitch_f1
        0x24 -> :sswitch_105
    .end sparse-switch
.end method

.method public static createVideoUploadBodyRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "req"
    .parameter "parsedData"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v10

    .line 213
    .local v10, reqType:I
    if-nez p1, :cond_1b

    .line 214
    :try_start_6
    new-instance v2, Lcom/sec/android/app/sns/exception/SnsException;

    const-string v3, "SnsRequestGenerator : createVideoUploadBodyRequest() : Parsed Result is NULL !!!"

    invoke-direct {v2, v3}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_6 .. :try_end_e} :catch_e

    .line 232
    :catch_e
    move-exception v9

    .line 233
    .local v9, e:Lcom/sec/android/app/sns/exception/SnsException;
    invoke-virtual {v9}, Lcom/sec/android/app/sns/exception/SnsException;->printStackTrace()V

    .line 234
    const-string v2, "SNS_FRAMEWORK"

    const-string v3, "SnsRequestGenerator : createVideoUploadBodyRequest() : Failed !!!"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v13, 0x0

    .end local v9           #e:Lcom/sec/android/app/sns/exception/SnsException;
    :cond_1a
    :goto_1a
    return-object v13

    .line 217
    :cond_1b
    const/4 v13, 0x0

    .line 219
    .local v13, videoUploadBodyReq:Lcom/sec/android/app/sns/request/data/SnsRequest;
    const/16 v2, 0x22

    if-ne v2, v10, :cond_1a

    .line 220
    :try_start_20
    new-instance v1, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct {v1}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    .line 222
    .local v1, requestFactory:Lcom/sec/android/app/sns/request/SnsRequestFactory;
    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;

    move-object v12, v0

    .line 223
    .local v12, video:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    move-object v11, v0

    .line 224
    .local v11, uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getAppID()I

    move-result v2

    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v4

    invoke-virtual {v12}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;->getFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mHostAddr:Ljava/lang/String;

    iget-object v7, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mResourceID:Ljava/lang/String;

    iget-object v8, v12, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;->mParcelFileDesc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newVideoUploadBody(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    :try_end_44
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_20 .. :try_end_44} :catch_e

    move-result-object v13

    goto :goto_1a
.end method
