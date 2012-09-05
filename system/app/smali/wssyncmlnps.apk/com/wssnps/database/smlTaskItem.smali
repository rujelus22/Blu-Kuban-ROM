.class public Lcom/wssnps/database/smlTaskItem;
.super Ljava/lang/Object;
.source "smlTaskItem.java"


# static fields
.field public static ModleDefine:Lcom/wssnps/smlModelDefine;

.field public static URI:Ljava/lang/String;

.field public static URI_SYNC:Ljava/lang/String;


# instance fields
.field public AttachImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;",
            ">;"
        }
    .end annotation
.end field

.field public AttachSmemo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;",
            ">;"
        }
    .end annotation
.end field

.field public _id:I

.field public body_size:I

.field public complete:I

.field public description:Ljava/lang/String;

.field public end_date:J

.field public importance:I

.field public rem_set:I

.field public rem_time:J

.field public rem_type:I

.field public start_date:J

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlTaskItem;->ModleDefine:Lcom/wssnps/smlModelDefine;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V
    .registers 12
    .parameter "smlvcal"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    .line 89
    if-nez p1, :cond_1a

    .line 176
    :cond_19
    :goto_19
    return-void

    .line 92
    :cond_1a
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    .line 96
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nStatus:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_d8

    .line 98
    iput v5, p0, Lcom/wssnps/database/smlTaskItem;->complete:I

    .line 106
    :goto_2a
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    if-ne v0, v5, :cond_dc

    .line 108
    iput v6, p0, Lcom/wssnps/database/smlTaskItem;->importance:I

    .line 120
    :cond_30
    :goto_30
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-eqz v0, :cond_4a

    .line 122
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    .line 123
    iget-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7e076290

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    .line 124
    iput-wide v8, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    .line 128
    :cond_4a
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    if-eqz v0, :cond_64

    .line 130
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    .line 131
    iget-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7e076290

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    .line 132
    iput-wide v8, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    .line 136
    :cond_64
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 138
    iput v5, p0, Lcom/wssnps/database/smlTaskItem;->rem_set:I

    .line 139
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    .line 141
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-eqz v0, :cond_ec

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_ec

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_ec

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v0, v1, :cond_ec

    .line 146
    iput v5, p0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    .line 167
    :goto_ba
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 169
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    .line 172
    :cond_c8
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 174
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    goto/16 :goto_19

    .line 102
    :cond_d8
    iput v4, p0, Lcom/wssnps/database/smlTaskItem;->complete:I

    goto/16 :goto_2a

    .line 110
    :cond_dc
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    if-ne v0, v6, :cond_e4

    .line 112
    iput v5, p0, Lcom/wssnps/database/smlTaskItem;->importance:I

    goto/16 :goto_30

    .line 114
    :cond_e4
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    if-ne v0, v7, :cond_30

    .line 116
    iput v4, p0, Lcom/wssnps/database/smlTaskItem;->importance:I

    goto/16 :goto_30

    .line 148
    :cond_ec
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    if-eqz v0, :cond_129

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_129

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_129

    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v0, v1, :cond_129

    .line 153
    iput v6, p0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    goto :goto_ba

    .line 157
    :cond_129
    iput v7, p0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    goto :goto_ba

    .line 162
    :cond_12c
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    .line 163
    iput v4, p0, Lcom/wssnps/database/smlTaskItem;->rem_set:I

    .line 164
    iput v4, p0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    goto :goto_ba
.end method

.method public static DecodeVTask(Ljava/lang/String;)Lcom/wssnps/database/smlTaskItem;
    .registers 3
    .parameter "vtask"

    .prologue
    .line 281
    invoke-static {p0}, Lcom/wssnps/base/smlvCal;->DecodeVCal(Ljava/lang/String;)Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 282
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    new-instance v0, Lcom/wssnps/database/smlTaskItem;

    invoke-direct {v0, v1}, Lcom/wssnps/database/smlTaskItem;-><init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V

    .line 283
    .local v0, task:Lcom/wssnps/database/smlTaskItem;
    return-object v0
.end method

.method public static addTask(Landroid/content/ContentResolver;Lcom/wssnps/database/smlTaskItem;I)Ljava/lang/String;
    .registers 18
    .parameter "cResolver"
    .parameter "taskdb"
    .parameter "luid"

    .prologue
    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v9, stResult:Ljava/lang/StringBuilder;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v3, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_183

    .line 448
    const-string v11, "subject"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_1d
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18c

    .line 458
    const-string v11, "body"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    iput v11, v0, Lcom/wssnps/database/smlTaskItem;->body_size:I

    .line 466
    :goto_3c
    const-string v11, "body_size"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/wssnps/database/smlTaskItem;->body_size:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    const-string v11, "importance"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/wssnps/database/smlTaskItem;->importance:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    const-string v11, "complete"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/wssnps/database/smlTaskItem;->complete:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_87

    .line 477
    const-string v11, "start_date"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v11, "utc_start_date"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 482
    :cond_87
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_ab

    .line 484
    const-string v11, "due_date"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v11, "utc_due_date"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    :cond_ab
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_19a

    .line 491
    const-string v11, "reminder_time"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    :goto_c2
    const-string v11, "reminder_set"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/wssnps/database/smlTaskItem;->rem_set:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v11, "reminder_type"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v11, "bodyType"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v11, "accountKey"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string v11, "_sync_dirty"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v11, "clientId"

    const-string v12, "new_task_13044200773"

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v11, "accountName"

    const-string v12, "My task"

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a6

    .line 508
    const-string v11, "content://com.android.calendar/syncTasks"

    sput-object v11, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    .line 512
    :goto_113
    sget-object v11, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 513
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {p0, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 515
    .local v7, newTaskUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 516
    .local v8, sid:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 518
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1ac

    .line 522
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .local v4, cv_imgae:Landroid/content/ContentValues;
    const-string v11, "content://com.android.calendar/images"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, Image_Uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    if-eqz v11, :cond_1ac

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1ac

    .line 526
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14f
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_1ac

    .line 529
    const-string v11, "event_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v12, "filepath"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    iget-object v11, v11, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v11, "event_type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 526
    add-int/lit8 v6, v6, 0x1

    goto :goto_14f

    .line 452
    .end local v1           #Image_Uri:Landroid/net/Uri;
    .end local v4           #cv_imgae:Landroid/content/ContentValues;
    .end local v6           #i:I
    .end local v7           #newTaskUri:Landroid/net/Uri;
    .end local v8           #sid:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_183
    const-string v11, "subject"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 463
    :cond_18c
    const-string v11, "body"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput v11, v0, Lcom/wssnps/database/smlTaskItem;->body_size:I

    goto/16 :goto_3c

    .line 495
    :cond_19a
    const-string v11, "reminder_time"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_c2

    .line 510
    :cond_1a6
    const-string v11, "content://tasks/syncTasks"

    sput-object v11, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    goto/16 :goto_113

    .line 544
    .restart local v7       #newTaskUri:Landroid/net/Uri;
    .restart local v8       #sid:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1ac
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_20c

    sget-boolean v11, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_20c

    .line 548
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .local v5, cv_smemo:Landroid/content/ContentValues;
    const-string v11, "content://com.android.calendar/memos"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 550
    .local v2, Smemo_Uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    if-eqz v11, :cond_20c

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_20c

    .line 552
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1d4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_20c

    .line 554
    const-string v11, "event_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v12, "memo_id"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    iget v11, v11, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v11, "event_type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    invoke-virtual {p0, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 552
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d4

    .line 562
    .end local v2           #Smemo_Uri:Landroid/net/Uri;
    .end local v5           #cv_smemo:Landroid/content/ContentValues;
    .end local v6           #i:I
    :cond_20c
    if-nez p2, :cond_224

    .line 563
    const-string v11, "6"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :goto_21f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 565
    :cond_224
    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21f
.end method

.method public static deleteTask(Landroid/content/ContentResolver;I)Z
    .registers 11
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 670
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v6

    if-ne v6, v5, :cond_7a

    .line 671
    const-string v6, "content://com.android.calendar/syncTasks"

    sput-object v6, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    .line 674
    :goto_c
    sget-object v6, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 675
    .local v3, uri:Landroid/net/Uri;
    int-to-long v6, p1

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 676
    .local v4, uri2:Landroid/net/Uri;
    invoke-virtual {p0, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7f

    .line 678
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v6

    if-ne v6, v5, :cond_49

    .line 682
    const-string v6, "content://com.android.calendar/images"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 683
    .local v0, Image_Uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 687
    .end local v0           #Image_Uri:Landroid/net/Uri;
    .end local v2           #selection:Ljava/lang/String;
    :cond_49
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v6

    if-ne v6, v5, :cond_79

    sget-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    if-ne v6, v5, :cond_79

    .line 691
    const-string v6, "content://com.android.calendar/memos"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, Smemo_Uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .restart local v2       #selection:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    .end local v1           #Smemo_Uri:Landroid/net/Uri;
    .end local v2           #selection:Ljava/lang/String;
    :cond_79
    :goto_79
    return v5

    .line 673
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uri2:Landroid/net/Uri;
    :cond_7a
    const-string v6, "content://tasks/syncTasks"

    sput-object v6, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    goto :goto_c

    .line 698
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #uri2:Landroid/net/Uri;
    :cond_7f
    const/4 v5, 0x0

    goto :goto_79
.end method

.method public static getTaskIndexArray(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 11
    .parameter "cResolver"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v7, idList:Ljava/lang/StringBuilder;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 308
    .local v2, select:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 309
    .local v9, nIndexId:I
    const/4 v8, 0x0

    .line 310
    .local v8, nCount:I
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v0

    if-ne v0, v5, :cond_66

    .line 311
    const-string v0, "content://com.android.calendar/syncTasks"

    sput-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    .line 314
    :goto_1a
    sget-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 316
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 318
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 322
    :cond_46
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_46

    .line 325
    :cond_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 326
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_66
    const-string v0, "content://tasks/tasks"

    sput-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    goto :goto_1a
.end method

.method public static getTaskItem(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 25
    .parameter "cResolver"
    .parameter "nLuid"

    .prologue
    .line 332
    const/16 v20, 0x0

    .line 333
    .local v20, stEncodeVtask:Ljava/lang/String;
    new-instance v22, Lcom/wssnps/database/smlTaskItem;

    invoke-direct/range {v22 .. v22}, Lcom/wssnps/database/smlTaskItem;-><init>()V

    .line 334
    .local v22, taskItem:Lcom/wssnps/database/smlTaskItem;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v21, strResult:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f8

    .line 336
    const-string v1, "content://com.android.calendar/syncTasks"

    sput-object v1, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    .line 339
    :goto_17
    sget-object v1, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 340
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, where:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 342
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 344
    const-string v1, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v22

    iput v1, v0, Lcom/wssnps/database/smlTaskItem;->_id:I

    .line 345
    const-string v1, "due_date"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v22

    iput-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    .line 346
    const-string v1, "importance"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v22

    iput v1, v0, Lcom/wssnps/database/smlTaskItem;->importance:I

    .line 347
    const-string v1, "complete"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v22

    iput v1, v0, Lcom/wssnps/database/smlTaskItem;->complete:I

    .line 348
    const-string v1, "start_date"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v22

    iput-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    .line 349
    const-string v1, "subject"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    iput-object v1, v0, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    .line 350
    const-string v1, "body"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    iput-object v1, v0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    .line 351
    const-string v1, "reminder_time"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v22

    iput-wide v11, v0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    .line 352
    const-string v1, "reminder_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v22

    iput v1, v0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    .line 354
    :cond_e3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 356
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15d

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    iget v3, v0, Lcom/wssnps/database/smlTaskItem;->_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, selection:Ljava/lang/String;
    const-string v1, "content://com.android.calendar/images"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 362
    .local v6, Image_Uri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 363
    .local v19, image_cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_158

    .line 365
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 370
    :cond_125
    const-string v1, "event_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_152

    .line 372
    new-instance v15, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    invoke-direct {v15}, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;-><init>()V

    .line 376
    .local v15, Image:Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;
    const-string v1, "filepath"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    .line 391
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v15           #Image:Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;
    :cond_152
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_125

    .line 396
    :cond_158
    if-eqz v19, :cond_15d

    .line 397
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 400
    .end local v6           #Image_Uri:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v19           #image_cursor:Landroid/database/Cursor;
    :cond_15d
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1de

    sget-boolean v1, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1de

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    iget v3, v0, Lcom/wssnps/database/smlTaskItem;->_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 405
    .restart local v8       #selection:Ljava/lang/String;
    const-string v1, "content://com.android.calendar/memos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 406
    .local v10, Smemo_Uri:Landroid/net/Uri;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v12, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 407
    .local v17, Smemo_cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_1d9

    .line 409
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1d9

    .line 413
    :cond_1a2
    const-string v1, "event_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d3

    .line 415
    new-instance v16, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    invoke-direct/range {v16 .. v16}, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;-><init>()V

    .line 416
    .local v16, Smemo:Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    const-string v1, "memo_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    .line 417
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v16           #Smemo:Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    :cond_1d3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 422
    :cond_1d9
    if-eqz v17, :cond_1de

    .line 423
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 426
    .end local v8           #selection:Ljava/lang/String;
    .end local v10           #Smemo_Uri:Landroid/net/Uri;
    .end local v17           #Smemo_cursor:Landroid/database/Cursor;
    :cond_1de
    if-nez v22, :cond_1fe

    .line 428
    const-string v1, "2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :goto_1f3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 338
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #where:Ljava/lang/String;
    .end local v18           #cursor:Landroid/database/Cursor;
    :cond_1f8
    const-string v1, "content://tasks/tasks"

    sput-object v1, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    goto/16 :goto_17

    .line 432
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v18       #cursor:Landroid/database/Cursor;
    :cond_1fe
    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/database/smlTaskItem;->EncodeVTask()Ljava/lang/String;

    move-result-object v20

    .line 434
    const-string v1, "0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f3
.end method

.method public static getTaskSize(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 10
    .parameter "cResolver"

    .prologue
    const/4 v2, 0x0

    .line 288
    const/4 v7, 0x0

    .line 289
    .local v7, nCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v8, sbCount:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    .line 291
    const-string v0, "content://com.android.calendar/syncTasks"

    sput-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    .line 295
    :goto_12
    sget-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 297
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 298
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_41
    const-string v0, "content://tasks/tasks"

    sput-object v0, Lcom/wssnps/database/smlTaskItem;->URI:Ljava/lang/String;

    goto :goto_12
.end method

.method public static replaceTask(Landroid/content/ContentResolver;Lcom/wssnps/database/smlTaskItem;I)I
    .registers 15
    .parameter "cResolver"
    .parameter "taskdb"
    .parameter "luid"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 572
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v0, cv:Landroid/content/ContentValues;
    iget v4, p1, Lcom/wssnps/database/smlTaskItem;->_id:I

    if-eqz v4, :cond_19

    .line 577
    const-string v4, "_id"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    :cond_19
    iget-object v4, p1, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_108

    .line 583
    const-string v4, "subject"

    iget-object v5, p1, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :goto_28
    iget-object v4, p1, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    .line 593
    const-string v4, "body"

    iget-object v5, p1, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v4, p1, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p1, Lcom/wssnps/database/smlTaskItem;->body_size:I

    .line 601
    :goto_3f
    const-string v4, "bodyType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v4, "body_size"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->body_size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v4, "importance"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->importance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v4, "complete"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->complete:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    iget-wide v4, p1, Lcom/wssnps/database/smlTaskItem;->start_date:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_11c

    .line 613
    const-string v4, "start_date"

    iget-wide v5, p1, Lcom/wssnps/database/smlTaskItem;->start_date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    const-string v4, "utc_start_date"

    iget-wide v5, p1, Lcom/wssnps/database/smlTaskItem;->start_date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    :goto_85
    iget-wide v4, p1, Lcom/wssnps/database/smlTaskItem;->end_date:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_128

    .line 625
    const-string v4, "due_date"

    iget-wide v5, p1, Lcom/wssnps/database/smlTaskItem;->end_date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 626
    const-string v4, "utc_due_date"

    iget-wide v5, p1, Lcom/wssnps/database/smlTaskItem;->end_date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 635
    :goto_a1
    iget-wide v4, p1, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_134

    .line 637
    const-string v4, "reminder_time"

    iget-wide v5, p1, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    :goto_b4
    const-string v4, "reminder_set"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->rem_set:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v4, "reminder_type"

    iget v5, p1, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v4, "accountKey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v4, "_sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string v4, "clientId"

    const-string v5, "new_task_13044200773"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v4, "accountName"

    const-string v5, "My task"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz v0, :cond_147

    .line 654
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v4

    if-ne v4, v8, :cond_140

    .line 655
    const-string v4, "content://com.android.calendar/syncTasks"

    sput-object v4, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    .line 658
    :goto_f6
    sget-object v4, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 659
    .local v1, uri:Landroid/net/Uri;
    int-to-long v4, p2

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 660
    .local v2, uri2:Landroid/net/Uri;
    invoke-virtual {p0, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_145

    .line 665
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #uri2:Landroid/net/Uri;
    .end local p2
    :goto_107
    return p2

    .line 587
    .restart local p2
    :cond_108
    const-string v4, "subject"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 598
    :cond_111
    const-string v4, "body"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iput v3, p1, Lcom/wssnps/database/smlTaskItem;->body_size:I

    goto/16 :goto_3f

    .line 618
    :cond_11c
    const-string v4, "start_date"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 619
    const-string v4, "utc_start_date"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_85

    .line 630
    :cond_128
    const-string v4, "due_date"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 631
    const-string v4, "utc_due_date"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 641
    :cond_134
    const-string v4, "reminder_time"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b4

    .line 657
    :cond_140
    const-string v4, "content://tasks/syncTasks"

    sput-object v4, Lcom/wssnps/database/smlTaskItem;->URI_SYNC:Ljava/lang/String;

    goto :goto_f6

    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #uri2:Landroid/net/Uri;
    :cond_145
    move p2, v3

    .line 663
    goto :goto_107

    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #uri2:Landroid/net/Uri;
    :cond_147
    move p2, v3

    .line 665
    goto :goto_107
.end method


# virtual methods
.method public EncodeVTask()Ljava/lang/String;
    .registers 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/wssnps/database/smlTaskItem;->ToSmlvCal_t()Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 273
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    invoke-static {v1}, Lcom/wssnps/base/smlvCal;->EncodeVCal(Lcom/wssnps/base/smlvCal$SmlvCal_t;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public ToSmlvCal_t()Lcom/wssnps/base/smlvCal$SmlvCal_t;
    .registers 12

    .prologue
    .line 180
    new-instance v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCal$SmlvCal_t;-><init>()V

    .line 181
    .local v3, smlvcal:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 182
    .local v4, time:Landroid/text/format/Time;
    iget-object v6, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 184
    .local v5, timezone:Ljava/util/TimeZone;
    const/4 v6, 0x2

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nDbType:I

    .line 185
    iget v6, p0, Lcom/wssnps/database/smlTaskItem;->_id:I

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->luid:I

    .line 186
    sget-object v6, Lcom/wssnps/base/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->VERSION:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    .line 187
    iget-object v6, p0, Lcom/wssnps/database/smlTaskItem;->description:Ljava/lang/String;

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    .line 188
    iget-object v6, p0, Lcom/wssnps/database/smlTaskItem;->title:Ljava/lang/String;

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    .line 189
    const/4 v6, 0x0

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    .line 192
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_93

    .line 194
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    .line 208
    :goto_31
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_ae

    .line 210
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    .line 224
    :goto_3c
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_66

    .line 226
    new-instance v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;-><init>()V

    .line 227
    .local v0, alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 229
    .local v1, alarm_time:Landroid/text/format/Time;
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 230
    .local v2, realOffset:I
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->rem_time:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 231
    iput-object v1, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    .line 232
    iget v6, p0, Lcom/wssnps/database/smlTaskItem;->rem_type:I

    iput v6, v0, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->nRepeatCount:I

    .line 233
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0           #alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    .end local v1           #alarm_time:Landroid/text/format/Time;
    .end local v2           #realOffset:I
    :cond_66
    iget v6, p0, Lcom/wssnps/database/smlTaskItem;->complete:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6f

    .line 239
    const/16 v6, 0x16

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nStatus:I

    .line 243
    :cond_6f
    iget v6, p0, Lcom/wssnps/database/smlTaskItem;->importance:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_ca

    .line 245
    const/4 v6, 0x1

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    .line 256
    :goto_77
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_82

    .line 258
    iget-object v6, p0, Lcom/wssnps/database/smlTaskItem;->AttachImage:Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    .line 262
    :cond_82
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_92

    sget-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_92

    .line 264
    iget-object v6, p0, Lcom/wssnps/database/smlTaskItem;->AttachSmemo:Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    .line 267
    :cond_92
    return-object v3

    .line 198
    :cond_93
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-nez v6, :cond_9e

    .line 199
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    .line 201
    :cond_9e
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 202
    .restart local v2       #realOffset:I
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget-wide v7, p0, Lcom/wssnps/database/smlTaskItem;->start_date:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto :goto_31

    .line 214
    .end local v2           #realOffset:I
    :cond_ae
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    if-nez v6, :cond_b9

    .line 215
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    .line 217
    :cond_b9
    iget-wide v6, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 218
    .restart local v2       #realOffset:I
    iget-object v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DueDate:Landroid/text/format/Time;

    iget-wide v7, p0, Lcom/wssnps/database/smlTaskItem;->end_date:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_3c

    .line 247
    .end local v2           #realOffset:I
    :cond_ca
    iget v6, p0, Lcom/wssnps/database/smlTaskItem;->importance:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d3

    .line 249
    const/4 v6, 0x2

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    goto :goto_77

    .line 253
    :cond_d3
    const/4 v6, 0x3

    iput v6, v3, Lcom/wssnps/base/smlvCal$SmlvCal_t;->nPriority:I

    goto :goto_77
.end method
