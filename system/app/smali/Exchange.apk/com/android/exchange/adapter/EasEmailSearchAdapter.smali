.class public Lcom/android/exchange/adapter/EasEmailSearchAdapter;
.super Ljava/lang/Object;
.source "EasEmailSearchAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendBaseBodyPreference(Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/exchange/SearchRequest;->getOptionsBodyPreferenceType()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, bodyPreferenceType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/SearchRequest;->getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, bodyPreferenceTruncationSize:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v2, p1

    .line 388
    .end local p1
    .local v2, s:Lcom/android/exchange/adapter/Serializer;
    :goto_15
    return-object v2

    .line 370
    .end local v2           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p1
    :cond_16
    const/16 v3, 0x445

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 374
    const/16 v3, 0x446

    invoke-static {v3, v1, p1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p1

    .line 378
    :cond_27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 380
    const/16 v3, 0x447

    invoke-static {v3, v0, p1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p1

    .line 386
    :cond_33
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object v2, p1

    .line 388
    .end local p1
    .restart local v2       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_15
.end method

.method private static appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 4
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 5
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p2, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 428
    .local v0, serializer:Lcom/android/exchange/adapter/Serializer;
    const/16 v1, 0x8f

    invoke-static {v1, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 430
    const/16 v1, 0x3d2

    invoke-static {v1, p1, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    return-object v1
.end method

.method private static appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 3
    .parameter "tag"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p1, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendOpaqueData(I[BLcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 4
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendSearchOptions(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 14
    .parameter "acc"
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v9, 0x4028

    .line 270
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsRebuildResults()Z

    move-result v5

    .line 272
    .local v5, rebuildResults:Z
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsDeepTraversal()Z

    move-result v1

    .line 274
    .local v1, deepTraversal:Z
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsRange()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, range:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsOptionsMIMESupport()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, MIMESupport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 284
    .local v2, protocolVersion:D
    const-wide/high16 v7, 0x4004

    cmpl-double v7, v2, v7

    if-nez v7, :cond_26

    .line 286
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    move-object v6, p2

    .line 346
    .end local p2
    .local v6, s:Lcom/android/exchange/adapter/Serializer;
    :goto_25
    return-object v6

    .line 292
    .end local v6           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p2
    :cond_26
    if-nez v5, :cond_38

    if-nez v1, :cond_38

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    move-object v6, p2

    .line 296
    .end local p2
    .restart local v6       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_25

    .line 302
    .end local v6           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p2
    :cond_38
    const/16 v7, 0x3ca

    invoke-virtual {p2, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 304
    if-eqz v5, :cond_4a

    cmpl-double v7, v2, v9

    if-ltz v7, :cond_4a

    .line 306
    const/16 v7, 0x3d9

    invoke-static {v7, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 310
    :cond_4a
    if-eqz v1, :cond_56

    cmpl-double v7, v2, v9

    if-ltz v7, :cond_56

    .line 312
    const/16 v7, 0x3d7

    invoke-static {v7, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 316
    :cond_56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 318
    const/16 v7, 0x3cb

    invoke-static {v7, v4, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 322
    :cond_62
    cmpl-double v7, v2, v9

    if-ltz v7, :cond_76

    .line 324
    invoke-static {p1, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendBaseBodyPreference(Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 328
    const/16 v7, 0x22

    invoke-static {v7, v0, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 336
    :cond_76
    const-wide v7, 0x402c333333333333L

    cmpl-double v7, v2, v7

    if-ltz v7, :cond_86

    .line 338
    const/16 v7, 0x605

    const-string v8, "1"

    invoke-virtual {p2, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 344
    :cond_86
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object v6, p2

    .line 346
    .end local p2
    .restart local v6       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_25
.end method

.method private static appendSearchQuery(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .registers 29
    .parameter "context"
    .parameter "acc"
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryClass()Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, queryClass:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryText()Ljava/lang/String;

    move-result-object v19

    .line 97
    .local v19, queryText:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryFreeText()Ljava/lang/String;

    move-result-object v16

    .line 99
    .local v16, queryFreeText:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryCollectionIds()[J

    move-result-object v14

    .line 101
    .local v14, queryCollectionIds:[J
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryGreaterThan()Ljava/lang/String;

    move-result-object v17

    .line 103
    .local v17, queryGreaterThan:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryLessThan()Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, queryLessThan:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/SearchRequest;->getQueryConvIdText()Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, queryConvId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 115
    .local v11, protocolVersion:D
    const-wide/high16 v22, 0x4004

    cmpl-double v22, v11, v22

    if-nez v22, :cond_44

    .line 117
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_35

    move-object/from16 v20, p3

    .line 260
    .end local p3
    .local v20, s:Lcom/android/exchange/adapter/Serializer;
    :goto_34
    return-object v20

    .line 123
    .end local v20           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p3
    :cond_35
    const/16 v22, 0x3c9

    move/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    move-object/from16 v20, p3

    .line 125
    .end local p3
    .restart local v20       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_34

    .line 129
    .end local v20           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p3
    :cond_44
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_66

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_66

    if-eqz v14, :cond_57

    array-length v0, v14

    move/from16 v22, v0

    if-gtz v22, :cond_66

    :cond_57
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_66

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_66

    move-object/from16 v20, p3

    .line 135
    .end local p3
    .restart local v20       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_34

    .line 141
    .end local v20           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p3
    :cond_66
    const/16 v22, 0x3c9

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x3d3

    invoke-virtual/range {v22 .. v23}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 143
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_86

    .line 145
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v0, v13, v1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 149
    :cond_86
    if-eqz v14, :cond_d0

    .line 151
    move-object v3, v14

    .local v3, arr$:[J
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_8b
    if-ge v8, v9, :cond_d0

    aget-wide v4, v3, v8

    .line 153
    .local v4, collectionId:J
    const-string v22, "EasSyncService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fzhang request QueryCollectionId"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 163
    .local v10, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v10, :cond_cd

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_cd

    if-nez v15, :cond_cd

    .line 165
    const/16 v22, 0x12

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 151
    :cond_cd
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    .line 175
    .end local v3           #arr$:[J
    .end local v4           #collectionId:J
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_d0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e2

    .line 177
    const/16 v22, 0x3d5

    move/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 181
    :cond_e2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f4

    .line 183
    const/16 v22, 0x3db

    move/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 187
    :cond_f4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_106

    .line 189
    const/16 v22, 0x3da

    move/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 195
    :cond_106
    if-eqz v15, :cond_18c

    .line 196
    if-eqz v15, :cond_110

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_118

    .line 198
    :cond_110
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "Byte array to encript cannot be null or zero length"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 202
    :cond_118
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 204
    .local v6, convId:[B
    const/4 v7, 0x0

    .line 206
    .local v7, i:I
    const/16 v21, 0x0

    .line 208
    .local v21, temp:I
    :goto_125
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_182

    .line 210
    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Character;->digit(CI)I

    move-result v22

    shl-int/lit8 v22, v22, 0x4

    add-int/lit8 v23, v7, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Character;->digit(CI)I

    move-result v23

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v6, v21

    .line 214
    aget-byte v22, v6, v21

    const/16 v23, -0x80

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_161

    .line 226
    :cond_15c
    :goto_15c
    add-int/lit8 v7, v7, 0x2

    .line 228
    add-int/lit8 v21, v21, 0x1

    goto :goto_125

    .line 218
    :cond_161
    aget-byte v22, v6, v21

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-lez v22, :cond_15c

    .line 220
    aget-byte v22, v6, v21

    and-int/lit8 v22, v22, 0x7f

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v6, v21

    .line 222
    aget-byte v22, v6, v21

    mul-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v6, v21

    goto :goto_15c

    .line 250
    :cond_182
    const/16 v22, 0x3e0

    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v0, v6, v1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendOpaqueData(I[BLcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 256
    .end local v6           #convId:[B
    .end local v7           #i:I
    .end local v21           #temp:I
    :cond_18c
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object/from16 v20, p3

    .line 260
    .end local p3
    .restart local v20       #s:Lcom/android/exchange/adapter/Serializer;
    goto/16 :goto_34
.end method

.method public static buildEasDocSearchRequest(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;
    .registers 11
    .parameter "context"
    .parameter "acc"
    .parameter "searchRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 70
    .local v0, protocolVersion:D
    const-wide/high16 v5, 0x4028

    cmpg-double v5, v0, v5

    if-gez v5, :cond_13

    .line 71
    const-string v5, "EasSyncService"

    const-string v6, "document search can not be supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_13
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryFreeText()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, queryFreeText:Ljava/lang/String;
    new-instance v3, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v3}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 75
    .local v3, s:Lcom/android/exchange/adapter/Serializer;
    const-string v4, "DocumentLibrary"

    .line 76
    .local v4, storeName:Ljava/lang/String;
    const/16 v5, 0x3c5

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x3c7

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x3c8

    invoke-virtual {v5, v6, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x3c9

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 78
    const/16 v5, 0x3d1

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 79
    const/16 v5, 0x4c5

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x3d2

    invoke-virtual {v5, v6, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 80
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 81
    const/16 v5, 0x3ca

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x3cb

    const-string v7, "0-999"

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 82
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 83
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 84
    return-object v3
.end method

.method public static buildEasEmailSearchRequest(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;
    .registers 7
    .parameter "context"
    .parameter "acc"
    .parameter "searchRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 43
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getStoreName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, storeName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 47
    new-instance v2, Ljava/io/IOException;

    const v3, 0x7f060015

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1c
    const/16 v2, 0x3c5

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c7

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c8

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendSearchQuery(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 57
    invoke-static {p1, p2, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendSearchOptions(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 61
    return-object v0
.end method
