.class public Lcom/syncmldstmo/base/vitem/smlvCard;
.super Ljava/lang/Object;
.source "smlvCard.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;,
        Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    }
.end annotation


# direct methods
.method public static DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 13
    .parameter "str"

    .prologue
    const/high16 v11, 0x2

    .line 330
    const/4 v3, 0x0

    .line 334
    .local v3, item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    const/4 v2, 0x0

    .line 336
    .local v2, i:I
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 337
    const/4 v8, 0x0

    .line 472
    :goto_b
    return-object v8

    .line 339
    :cond_c
    new-instance v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    invoke-direct {v8}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;-><init>()V

    .line 341
    .local v8, vCard:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    const-string v10, ""

    invoke-static {v11, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 342
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v9

    .line 344
    .local v9, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCard;->VCardGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;

    move-result-object v4

    .line 346
    .local v4, itemlist:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    :goto_1f
    iget-object v10, v4, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v2, v10, :cond_e9

    .line 348
    iget-object v10, v4, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v10, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    check-cast v3, Lcom/syncmldstmo/base/vitem/smlVItemItem;

    .line 350
    .restart local v3       #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    iget v10, v3, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    packed-switch v10, :pswitch_data_f8

    .line 459
    const-string v10, "not support field"

    invoke-static {v11, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 462
    :cond_39
    :goto_39
    :pswitch_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 359
    :pswitch_3c
    sget-object v10, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v3, v10, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    goto :goto_39

    .line 363
    :pswitch_45
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetN(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    goto :goto_39

    .line 367
    :pswitch_4c
    sget-object v10, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v3, v10, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, nickname:Ljava/lang/String;
    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_39

    .line 369
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 373
    .end local v5           #nickname:Ljava/lang/String;
    :pswitch_5e
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetPHOTO(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    goto :goto_39

    .line 377
    :pswitch_65
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetDATE(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->BDAY:Ljava/lang/String;

    goto :goto_39

    .line 381
    :pswitch_6c
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetDATE(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ANNI:Ljava/lang/String;

    goto :goto_39

    .line 385
    :pswitch_73
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetTEL(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    move-result-object v1

    .line 386
    .local v1, ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_39

    .line 387
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 391
    .end local v1           #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    :pswitch_7f
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetENUMITEM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    move-result-object v1

    .line 392
    .restart local v1       #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_39

    .line 393
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 397
    .end local v1           #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    :pswitch_8b
    sget-object v10, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v3, v10, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    goto :goto_39

    .line 404
    :pswitch_94
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetADR(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;

    move-result-object v0

    .line 405
    .local v0, addr:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    if-eqz v0, :cond_39

    .line 406
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 410
    .end local v0           #addr:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    :pswitch_a0
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetORG(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;

    move-result-object v7

    .line 411
    .local v7, org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    if-eqz v7, :cond_39

    .line 412
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 416
    .end local v7           #org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    :pswitch_ac
    sget-object v10, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v3, v10, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, note:Ljava/lang/String;
    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_39

    .line 418
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 422
    .end local v6           #note:Ljava/lang/String;
    :pswitch_bf
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetENUMITEM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    move-result-object v1

    .line 423
    .restart local v1       #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_39

    .line 424
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 428
    .end local v1           #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    :pswitch_cc
    invoke-static {v3, v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetENUMITEM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    move-result-object v1

    .line 429
    .restart local v1       #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v1, :cond_39

    .line 430
    iget-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 434
    .end local v1           #ei:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    :pswitch_d9
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->REV:Landroid/text/format/Time;

    goto/16 :goto_39

    .line 438
    :pswitch_e1
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardGetVERSION(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    move-result-object v10

    iput-object v10, v8, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->VERSION:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    goto/16 :goto_39

    .line 465
    :cond_e9
    if-nez v8, :cond_f0

    .line 467
    const-string v10, "vCard is null"

    invoke-static {v11, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 470
    :cond_f0
    const-string v10, "end of while"

    invoke-static {v11, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 350
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_3c
        :pswitch_45
        :pswitch_4c
        :pswitch_73
        :pswitch_7f
        :pswitch_8b
        :pswitch_39
        :pswitch_a0
        :pswitch_94
        :pswitch_65
        :pswitch_5e
        :pswitch_bf
        :pswitch_ac
        :pswitch_e1
        :pswitch_cc
        :pswitch_6c
        :pswitch_d9
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public static EncodeVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Ljava/lang/String;
    .registers 16
    .parameter "vCard"

    .prologue
    const/4 v14, 0x3

    .line 108
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v7, encode:Ljava/lang/StringBuffer;
    if-nez p0, :cond_a

    .line 112
    const/4 v11, 0x0

    .line 325
    :goto_9
    return-object v11

    .line 114
    :cond_a
    const/high16 v11, 0x2

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 115
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v10

    .line 118
    .local v10, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardBEGIN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_31

    .line 123
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    sget-object v13, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_31
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    if-eqz v11, :cond_44

    .line 129
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-boolean v11, v11, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->isValid:Z

    if-eqz v11, :cond_71

    .line 131
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    invoke-static {v14, v11, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardN(ILcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_44
    :goto_44
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_8a

    .line 143
    const/4 v3, 0x0

    .line 145
    .local v3, NickName:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4e
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_8a

    .line 147
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #NickName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 148
    .restart local v3       #NickName:Ljava/lang/String;
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6e

    .line 150
    const/4 v11, 0x4

    sget-object v12, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v3, v12, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 135
    .end local v3           #NickName:Ljava/lang/String;
    .end local v8           #i:I
    :cond_71
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f060041

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 136
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    invoke-static {v14, v11, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardN(ILcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    .line 156
    :cond_8a
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_bb

    .line 158
    const/4 v5, 0x0

    .line 160
    .local v5, Tel:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_94
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_bb

    .line 162
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #Tel:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v5, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 163
    .restart local v5       #Tel:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v11, v5, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b8

    .line 165
    const/4 v11, 0x5

    iget-object v12, v5, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iget v13, v5, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardENUMITEM(ILjava/lang/String;ILcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_b8
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 171
    .end local v5           #Tel:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .end local v8           #i:I
    :cond_bb
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_ec

    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, Email:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_c5
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_ec

    .line 177
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #Email:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 178
    .restart local v1       #Email:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v11, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e9

    .line 180
    const/4 v11, 0x6

    iget-object v12, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iget v13, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardENUMITEM(ILjava/lang/String;ILcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_e9
    add-int/lit8 v8, v8, 0x1

    goto :goto_c5

    .line 187
    .end local v1           #Email:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .end local v8           #i:I
    :cond_ec
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_114

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, Address:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_f6
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_114

    .line 193
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Address:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;

    .line 194
    .restart local v0       #Address:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    iget-boolean v11, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->isValid:Z

    if-eqz v11, :cond_111

    .line 196
    invoke-static {v0, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardADR(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_111
    add-int/lit8 v8, v8, 0x1

    goto :goto_f6

    .line 202
    .end local v0           #Address:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    .end local v8           #i:I
    :cond_114
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_13c

    .line 204
    const/4 v9, 0x0

    .line 206
    .local v9, org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_11e
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_13c

    .line 208
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    check-cast v9, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;

    .line 209
    .restart local v9       #org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    iget-boolean v11, v9, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->isValid:Z

    if-eqz v11, :cond_139

    .line 211
    invoke-static {v9, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardORG(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_139
    add-int/lit8 v8, v8, 0x1

    goto :goto_11e

    .line 217
    .end local v8           #i:I
    .end local v9           #org:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    :cond_13c
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_150

    .line 219
    const/4 v11, 0x7

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    sget-object v13, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_150
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->BDAY:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_163

    .line 225
    const/16 v11, 0xb

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->BDAY:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardDATE(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_163
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ANNI:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_176

    .line 231
    const/16 v11, 0x11

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ANNI:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardDATE(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_176
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1a0

    .line 237
    const/4 v6, 0x0

    .line 239
    .local v6, Url:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_180
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_1a0

    .line 241
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #Url:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v6, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 242
    .restart local v6       #Url:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/16 v11, 0xd

    iget-object v12, v6, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    sget-object v13, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_180

    .line 251
    .end local v6           #Url:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .end local v8           #i:I
    :cond_1a0
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1d2

    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, Im:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1aa
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_1d2

    .line 257
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #Im:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 258
    .restart local v2       #Im:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v11, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1cf

    .line 263
    const/16 v11, 0x10

    iget-object v12, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iget v13, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardENUMITEM(ILjava/lang/String;ILcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_1cf
    add-int/lit8 v8, v8, 0x1

    goto :goto_1aa

    .line 269
    .end local v2           #Im:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    .end local v8           #i:I
    :cond_1d2
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ROLE:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1e7

    .line 271
    const/16 v11, 0x8

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ROLE:Ljava/lang/String;

    sget-object v13, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v12, v13, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_1e7
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_215

    .line 277
    const/4 v4, 0x0

    .line 279
    .local v4, Note:Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1f1
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_215

    .line 281
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #Note:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 282
    .restart local v4       #Note:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_212

    .line 284
    const/16 v11, 0xe

    sget-object v12, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v4, v12, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_212
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f1

    .line 290
    .end local v4           #Note:Ljava/lang/String;
    .end local v8           #i:I
    :cond_215
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    if-eqz v11, :cond_230

    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    iget-object v11, v11, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_230

    .line 292
    const/16 v11, 0xc

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    iget-object v12, v12, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    invoke-static {v11, v12, v10}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardPHOTO(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_230
    iget v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->CLASS:I

    if-ltz v11, :cond_23d

    .line 310
    iget v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->CLASS:I

    invoke-static {v11}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardCLASS(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_23d
    iget-object v11, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->REV:Landroid/text/format/Time;

    if-eqz v11, :cond_24e

    .line 316
    const/16 v11, 0x12

    iget-object v12, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->REV:Landroid/text/format/Time;

    sget-object v13, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v11, v12, v13}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_24e
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCardEND()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9
.end method

.method public static VCardGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;
    .registers 3
    .parameter "str"

    .prologue
    .line 477
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlVItemTools;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlVItemTools;-><init>()V

    .line 479
    .local v0, t:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCARD_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-virtual {v0, p0, v1}, Lcom/syncmldstmo/base/vitem/smlVItemTools;->VitemGetList(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Z

    .line 481
    return-object v0
.end method
