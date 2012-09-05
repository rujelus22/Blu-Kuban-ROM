.class public Lcom/wssnps/base/smlvCal;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;,
        Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;,
        Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;,
        Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;,
        Lcom/wssnps/base/smlvCal$SmlvCalVersion;,
        Lcom/wssnps/base/smlvCal$SmlvCal_t;
    }
.end annotation


# static fields
.field public static ALLDAY:I

.field public static DTSTART:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/wssnps/base/smlvCal;->DTSTART:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/wssnps/base/smlvCal;->ALLDAY:I

    .line 11
    return-void
.end method

.method public static DecodeVCal(Ljava/lang/String;)Lcom/wssnps/base/smlvCal$SmlvCal_t;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 373
    .line 379
    if-nez p0, :cond_5

    .line 381
    const/4 v0, 0x0

    .line 505
    :goto_4
    return-object v0

    .line 384
    :cond_5
    new-instance v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;

    invoke-direct {v2}, Lcom/wssnps/base/smlvCal$SmlvCal_t;-><init>()V

    .line 387
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v3

    .line 388
    invoke-static {p0}, Lcom/wssnps/base/smlvCal;->VCalGetList(Ljava/lang/String;)Lcom/wssnps/base/smlVItemTools;

    move-result-object v4

    move v1, v0

    .line 390
    :goto_13
    iget-object v0, v4, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_25

    .line 497
    if-nez v2, :cond_23

    .line 499
    const/4 v0, 0x1

    const-string v1, "smlDecodevCal vCal is null"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    :cond_23
    move-object v0, v2

    .line 505
    goto :goto_4

    .line 392
    :cond_25
    iget-object v0, v4, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlVItemItem;

    .line 395
    iget v5, v0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    packed-switch v5, :pswitch_data_e8

    .line 494
    :goto_32
    :pswitch_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 405
    :pswitch_36
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetSTRING(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    goto :goto_32

    .line 409
    :pswitch_3d
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetSTRING(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    goto :goto_32

    .line 413
    :pswitch_44
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetSTRING(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    goto :goto_32

    .line 417
    :pswitch_4b
    iget-object v5, v0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    sput-object v5, Lcom/wssnps/base/smlvCal;->DTSTART:Ljava/lang/String;

    .line 418
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetDATE(Lcom/wssnps/base/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    goto :goto_32

    .line 422
    :pswitch_56
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetDATE(Lcom/wssnps/base/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    goto :goto_32

    .line 426
    :pswitch_5d
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetDATE(Lcom/wssnps/base/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    goto :goto_32

    .line 430
    :pswitch_64
    sget-object v5, Lcom/wssnps/base/smlvCal;->DTSTART:Ljava/lang/String;

    sget v6, Lcom/wssnps/base/smlvCal;->ALLDAY:I

    invoke-static {v0, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCalGetRRULE(Lcom/wssnps/base/smlVItemItem;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    goto :goto_32

    .line 434
    :pswitch_6f
    iget-object v5, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DisplayAlarm:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetALARM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 438
    :pswitch_79
    iget-object v5, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetALARM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 442
    :pswitch_83
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetPRIORITY(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    goto :goto_32

    .line 446
    :pswitch_8a
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetENUM(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nCategory:I

    goto :goto_32

    .line 450
    :pswitch_91
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetENUM(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nStatus:I

    goto :goto_32

    .line 454
    :pswitch_98
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetENUM(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nClass:I

    goto :goto_32

    .line 458
    :pswitch_9f
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetATTENDEE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Attendee:Ljava/util/List;

    goto :goto_32

    .line 462
    :pswitch_a6
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetXALLDAY(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    .line 463
    iget v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    sput v0, Lcom/wssnps/base/smlvCal;->ALLDAY:I

    goto :goto_32

    .line 467
    :pswitch_b1
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetUID(Lcom/wssnps/base/smlVItemItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    goto/16 :goto_32

    .line 471
    :pswitch_b9
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetXEXTYPE(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    goto/16 :goto_32

    .line 475
    :pswitch_c1
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetDATE(Lcom/wssnps/base/smlVItemItem;)Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    .line 478
    :pswitch_c7
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetXLUNAR(Lcom/wssnps/base/smlVItemItem;)I

    move-result v0

    iput v0, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    goto/16 :goto_32

    .line 482
    :pswitch_cf
    iget-object v5, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    sget-object v6, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-static {v0, v6, v3}, Lcom/wssnps/base/smlvItemApi;->VCalGetATTACHIMAGE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlVItemTag$VitemHash;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 486
    :pswitch_dc
    iget-object v5, v2, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCalGetATTACHSMEMO(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 395
    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_36
        :pswitch_4b
        :pswitch_56
        :pswitch_64
        :pswitch_6f
        :pswitch_8a
        :pswitch_98
        :pswitch_3d
        :pswitch_83
        :pswitch_91
        :pswitch_5d
        :pswitch_44
        :pswitch_79
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_9f
        :pswitch_32
        :pswitch_a6
        :pswitch_b1
        :pswitch_b9
        :pswitch_c1
        :pswitch_c7
        :pswitch_cf
        :pswitch_dc
    .end packed-switch
.end method

.method public static EncodeVCal(Lcom/wssnps/base/smlvCal$SmlvCal_t;)Ljava/lang/String;
    .registers 10
    .parameter "vCal"

    .prologue
    const/4 v8, 0x2

    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, encode:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 185
    const/4 v3, 0x0

    .line 367
    :goto_5
    return-object v3

    .line 189
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/wssnps/base/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v2

    .line 191
    .local v2, vItemConfig:Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;
    const-string v3, "1.0"

    invoke-static {v3}, Lcom/wssnps/base/smlvItemApi;->VCalBegin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v3, v8, :cond_28f

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VTodoBegin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_2a
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nClass:I

    if-eqz v3, :cond_47

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    iget v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nClass:I

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->VCalENUM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_47
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    invoke-static {v8, v4, v2}, Lcom/wssnps/base/smlvItemApi;->VCalSTRING(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_66
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/wssnps/base/smlvItemApi;->VCalSTRING(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_87
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/wssnps/base/smlvItemApi;->VCalSTRING(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_a8
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-eqz v3, :cond_2a6

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCalDATE(ILandroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_c6
    :goto_c6
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    if-eqz v3, :cond_e4

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCalDATE(ILandroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_e4
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    if-eq v3, v8, :cond_106

    .line 247
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_106

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x15

    iget v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->VCalAllday(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_106
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    if-eqz v3, :cond_123

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x19

    iget v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->VCalLunar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_123
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    if-eqz v3, :cond_2c3

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCalDATE(ILandroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_142
    :goto_142
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nCategory:I

    if-eqz v3, :cond_15e

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    iget v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nCategory:I

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->VCalENUM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_15e
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nStatus:I

    if-eqz v3, :cond_17b

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    iget v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nStatus:I

    invoke-static {v4, v5}, Lcom/wssnps/base/smlvItemApi;->VCalENUM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_17b
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    if-eqz v3, :cond_196

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->VCalPRIORITY(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_196
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a7

    .line 294
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_19f
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2e0

    .line 300
    .end local v1           #idx:I
    :cond_1a7
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DisplayAlarm:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b8

    .line 303
    const/4 v1, 0x0

    .restart local v1       #idx:I
    :goto_1b0
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DisplayAlarm:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_305

    .line 309
    .end local v1           #idx:I
    :cond_1b8
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    if-eqz v3, :cond_1e5

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e5

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    iget-object v7, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->dbtimezone:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/wssnps/base/smlvItemApi;->VCalRRULE(Ljava/lang/String;Landroid/text/format/Time;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_1e5
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    if-eqz v3, :cond_202

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x16

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/wssnps/base/smlvItemApi;->VCalSTRING(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_202
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    if-eqz v3, :cond_21d

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    invoke-static {v4}, Lcom/wssnps/base/smlvItemApi;->VCalXEXTYPE(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_21d
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    if-eqz v3, :cond_23c

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x18

    iget-object v5, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v4, v5, v6}, Lcom/wssnps/base/smlvItemApi;->VCalDATE(ILandroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_23c
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24d

    .line 343
    const/4 v1, 0x0

    .restart local v1       #idx:I
    :goto_245
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_329

    .line 348
    .end local v1           #idx:I
    :cond_24d
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25e

    .line 351
    const/4 v1, 0x0

    .restart local v1       #idx:I
    :goto_256
    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_34c

    .line 356
    .end local v1           #idx:I
    :cond_25e
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v3, v8, :cond_36f

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VTodoEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VCalEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 367
    goto/16 :goto_5

    .line 197
    :cond_28f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VEventBegin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 233
    :cond_2a6
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v3, v8, :cond_c6

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-nez v3, :cond_c6

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "DTSTART:20370101T090000\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c6

    .line 264
    :cond_2c3
    iget v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    if-ne v3, v8, :cond_142

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    if-nez v3, :cond_142

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "DUE:20370101T090000\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_142

    .line 295
    .restart local v1       #idx:I
    :cond_2e0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xe

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v5, v3, v2, v6}, Lcom/wssnps/base/smlvItemApi;->VCalALARM2STRING(ILcom/wssnps/base/smlvCal$SmlvCalAlarm_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19f

    .line 304
    :cond_305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DisplayAlarm:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget v6, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    invoke-static {v5, v3, v2, v6}, Lcom/wssnps/base/smlvItemApi;->VCalALARM2STRING(ILcom/wssnps/base/smlvCal$SmlvCalAlarm_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b0

    .line 344
    :cond_329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1a

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    invoke-static {v5, v3, v2}, Lcom/wssnps/base/smlvItemApi;->VCalATTACHIMAGE(ILcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_245

    .line 352
    :cond_34c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1b

    iget-object v3, p0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    invoke-static {v5, v3}, Lcom/wssnps/base/smlvItemApi;->VCalATTACHSMEMO(ILcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_256

    .line 359
    .end local v1           #idx:I
    :cond_36f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VEventEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_277
.end method

.method public static VCalGetList(Ljava/lang/String;)Lcom/wssnps/base/smlVItemTools;
    .registers 3
    .parameter "str"

    .prologue
    .line 173
    new-instance v0, Lcom/wssnps/base/smlVItemTools;

    invoke-direct {v0}, Lcom/wssnps/base/smlVItemTools;-><init>()V

    .line 174
    .local v0, t:Lcom/wssnps/base/smlVItemTools;
    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-virtual {v0, p0, v1}, Lcom/wssnps/base/smlVItemTools;->VitemGetList(Ljava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Z

    .line 175
    return-object v0
.end method
