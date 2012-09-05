.class public Lcom/syncmldstmo/base/vitem/smlvCal;
.super Ljava/lang/Object;
.source "smlvCal.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;,
        Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;,
        Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;,
        Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;,
        Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;
    }
.end annotation


# direct methods
.method public static DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    .registers 9
    .parameter "szEncoded"

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x2

    .line 211
    const/4 v1, 0x0

    .line 214
    .local v1, item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    const/4 v0, 0x0

    .line 216
    .local v0, i:I
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v2, v5

    .line 303
    :cond_c
    :goto_c
    return-object v2

    .line 219
    :cond_d
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    invoke-direct {v2}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;-><init>()V

    .line 220
    .local v2, vCalendar:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    if-nez v2, :cond_1b

    .line 222
    const-string v6, "vCalendar is null"

    invoke-static {v7, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v2, v5

    .line 223
    goto :goto_c

    .line 226
    :cond_1b
    const-string v5, ""

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 227
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v3

    .line 229
    .local v3, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCal;->VCalGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;

    move-result-object v4

    .line 231
    .local v4, vItemList:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    :goto_29
    iget-object v5, v4, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 233
    iget-object v5, v4, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    check-cast v1, Lcom/syncmldstmo/base/vitem/smlVItemItem;

    .line 236
    .restart local v1       #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    iget v5, v1, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    packed-switch v5, :pswitch_data_b0

    .line 301
    :goto_3e
    :pswitch_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 243
    :pswitch_41
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    goto :goto_3e

    .line 247
    :pswitch_4a
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    goto :goto_3e

    .line 251
    :pswitch_53
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    goto :goto_3e

    .line 255
    :pswitch_5c
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    goto :goto_3e

    .line 259
    :pswitch_63
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    goto :goto_3e

    .line 263
    :pswitch_6a
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    goto :goto_3e

    .line 267
    :pswitch_71
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetRRULE(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    goto :goto_3e

    .line 271
    :pswitch_78
    invoke-static {v1, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetALARM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    goto :goto_3e

    .line 275
    :pswitch_7f
    invoke-static {v1, v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetALARM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    goto :goto_3e

    .line 279
    :pswitch_86
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetPRIORITY(Lcom/syncmldstmo/base/vitem/smlVItemItem;)I

    move-result v5

    iput v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    goto :goto_3e

    .line 283
    :pswitch_8d
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetENUM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I

    move-result v5

    iput v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCATEGORIES:I

    goto :goto_3e

    .line 287
    :pswitch_96
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_STATUS_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetENUM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I

    move-result v5

    iput v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    goto :goto_3e

    .line 291
    :pswitch_9f
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_CLASS_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetENUM(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)I

    move-result v5

    iput v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCLASS:I

    goto :goto_3e

    .line 295
    :pswitch_a8
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalGetALLDAY(Lcom/syncmldstmo/base/vitem/smlVItemItem;)I

    move-result v5

    iput v5, v2, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nALLDAY:I

    goto :goto_3e

    .line 236
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
        :pswitch_41
        :pswitch_5c
        :pswitch_63
        :pswitch_71
        :pswitch_78
        :pswitch_8d
        :pswitch_9f
        :pswitch_4a
        :pswitch_86
        :pswitch_96
        :pswitch_6a
        :pswitch_53
        :pswitch_7f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_a8
    .end packed-switch
.end method

.method public static DecodeVNote(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    .registers 9
    .parameter "szEncoded"

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x2

    .line 357
    const/4 v1, 0x0

    .line 360
    .local v1, item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    const/4 v0, 0x0

    .line 362
    .local v0, i:I
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v4, v5

    .line 409
    :cond_c
    :goto_c
    return-object v4

    .line 365
    :cond_d
    new-instance v4, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;

    invoke-direct {v4}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;-><init>()V

    .line 366
    .local v4, vNote:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    if-nez v4, :cond_1b

    .line 368
    const-string v6, "vNote is null"

    invoke-static {v7, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v4, v5

    .line 369
    goto :goto_c

    .line 372
    :cond_1b
    const-string v5, "Start"

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 373
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v2

    .line 375
    .local v2, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCal;->VNoteGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;

    move-result-object v3

    .line 377
    .local v3, vItemList:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    :goto_29
    iget-object v5, v3, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 379
    iget-object v5, v3, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    check-cast v1, Lcom/syncmldstmo/base/vitem/smlVItemItem;

    .line 382
    .restart local v1       #item:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    iget v5, v1, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    packed-switch v5, :pswitch_data_62

    .line 407
    :goto_3e
    :pswitch_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 389
    :pswitch_41
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5, v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->TITLE:Ljava/lang/String;

    goto :goto_3e

    .line 393
    :pswitch_4a
    sget-object v5, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v1, v5, v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetSTRING(Lcom/syncmldstmo/base/vitem/smlVItemItem;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    goto :goto_3e

    .line 397
    :pswitch_53
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v4, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    goto :goto_3e

    .line 401
    :pswitch_5a
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemGetDATETIME(Lcom/syncmldstmo/base/vitem/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v4, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    goto :goto_3e

    .line 382
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_41
        :pswitch_4a
        :pswitch_3e
        :pswitch_53
        :pswitch_5a
    .end packed-switch
.end method

.method public static EncodeVCal(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)Ljava/lang/String;
    .registers 7
    .parameter "vCalendar"

    .prologue
    const/4 v5, 0x2

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, encode:Ljava/lang/StringBuffer;
    if-nez p0, :cond_a

    .line 101
    const/4 v2, 0x0

    .line 206
    :goto_9
    return-object v2

    .line 103
    :cond_a
    const/high16 v2, 0x2

    const-string v3, "EncodeVCal"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v1

    .line 106
    .local v1, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    const-string v2, "1.0"

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalBEGIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v2, v5, :cond_126

    .line 110
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VTodoBEGIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :goto_2a
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 117
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v5, v2, v3, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_3d
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 123
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_52
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 129
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_67
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-eqz v2, :cond_77

    .line 135
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_77
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    if-eqz v2, :cond_87

    .line 141
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_87
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    if-eqz v2, :cond_98

    .line 147
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_98
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCATEGORIES:I

    if-lez v2, :cond_a8

    .line 153
    const/4 v2, 0x7

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCATEGORIES:I

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalENUM(IILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_a8
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    if-lez v2, :cond_b9

    .line 159
    const/16 v2, 0xb

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_STATUS_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalENUM(IILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_b9
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCLASS:I

    if-ltz v2, :cond_ca

    .line 165
    const/16 v2, 0x8

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nCLASS:I

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_CLASS_TYPE:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalENUM(IILcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_ca
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    if-lez v2, :cond_d7

    .line 171
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalPRIORITY(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_d7
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-eqz v2, :cond_e6

    .line 177
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    invoke-static {v2, v3, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalALARM2STRING(ILcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_e6
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-eqz v2, :cond_f4

    .line 183
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    invoke-static {v2, v3, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalALARM2STRING(ILcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_f4
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_105

    .line 189
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalRRULE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_105
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nALLDAY:I

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalALLDAY(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v2, v5, :cond_12f

    .line 196
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VTodoEND()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :goto_119
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalEND()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 112
    :cond_126
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VEventBEGIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2a

    .line 198
    :cond_12f
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VEventEND()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_119
.end method

.method public static EncodeVNote(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;)Ljava/lang/String;
    .registers 6
    .parameter "vNote"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, encode:Ljava/lang/StringBuffer;
    if-nez p0, :cond_9

    .line 312
    const/4 v2, 0x0

    .line 352
    :goto_8
    return-object v2

    .line 314
    :cond_9
    const/high16 v2, 0x2

    const-string v3, "EncodeVCal"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 315
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v1

    .line 317
    .local v1, vItemConfig:Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
    const-string v2, "1.0"

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VCalBEGIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VNoteBEGIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->TITLE:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 325
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->TITLE:Ljava/lang/String;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :cond_39
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 331
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4, v1}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemSTRING(ILjava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_4d
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    if-eqz v2, :cond_5d

    .line 337
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    :cond_5d
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    if-eqz v2, :cond_6d

    .line 343
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    sget-object v4, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemDATETIME(ILandroid/text/format/Time;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :cond_6d
    invoke-static {}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VNoteEND()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static VCalGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;
    .registers 3
    .parameter "str"

    .prologue
    .line 79
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlVItemTools;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlVItemTools;-><init>()V

    .line 81
    .local v0, vItemTools:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VCAL_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-virtual {v0, p0, v1}, Lcom/syncmldstmo/base/vitem/smlVItemTools;->VitemGetList(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Z

    .line 83
    return-object v0
.end method

.method public static VNoteGetList(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlVItemTools;
    .registers 3
    .parameter "str"

    .prologue
    .line 88
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlVItemTools;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlVItemTools;-><init>()V

    .line 90
    .local v0, vItemTools:Lcom/syncmldstmo/base/vitem/smlVItemTools;
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlVItemTag;->VNOTE_TAG:Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;

    invoke-virtual {v0, p0, v1}, Lcom/syncmldstmo/base/vitem/smlVItemTools;->VitemGetList(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Z

    .line 92
    return-object v0
.end method
