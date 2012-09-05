.class public Lcom/syncmldstmo/base/vitem/smlTaskAdapter;
.super Ljava/lang/Object;
.source "smlTaskAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field public m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;)V
    .registers 2
    .parameter "task"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)V
    .registers 5
    .parameter "smlvtask"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_7

    .line 84
    :cond_6
    :goto_6
    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->luid:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    .line 32
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 34
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "NOTITLE"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    .line 41
    :goto_1b
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 43
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    .line 46
    :cond_29
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-eqz v0, :cond_33

    .line 48
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "09 Jan.2010"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    .line 51
    :cond_33
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    if-eqz v0, :cond_3d

    .line 53
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "09 Jan.2010"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    .line 56
    :cond_3d
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-eqz v0, :cond_83

    .line 58
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "On"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "AM"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    .line 61
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    .line 62
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    .line 63
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    .line 64
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    .line 65
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    .line 79
    :goto_67
    iget v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    if-ltz v0, :cond_71

    .line 80
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    .line 82
    :cond_71
    iget v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    if-ltz v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    goto :goto_6

    .line 38
    :cond_7c
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    goto :goto_1b

    .line 69
    :cond_83
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, "Off"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    .line 72
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    .line 73
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    .line 74
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    .line 75
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    .line 76
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    goto :goto_67
.end method

.method public static DecodeVTask(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlTaskAdapter;
    .registers 3
    .parameter "DecodeStr"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCal;->DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 89
    .local v1, vTask:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;

    invoke-direct {v0, v1}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)V

    .line 91
    .local v0, taskItem:Lcom/syncmldstmo/base/vitem/smlTaskAdapter;
    return-object v0
.end method

.method public static EncodeVTask(Lcom/syncmldstmo/base/vitem/smlTaskAdapter;)Ljava/lang/String;
    .registers 3
    .parameter "TaskItem"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->ToSmlvTask_t(Lcom/syncmldstmo/base/vitem/smlTaskAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 138
    .local v1, vTask:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvCal;->EncodeVCal(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, szEncoded:Ljava/lang/String;
    return-object v0
.end method

.method public static ToSmlvTask_t(Lcom/syncmldstmo/base/vitem/smlTaskAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    .registers 3
    .parameter "TaskItem"

    .prologue
    .line 97
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;-><init>()V

    .line 99
    .local v0, vTask:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->luid:I

    .line 100
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->VERSION:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    .line 101
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nPRIORITY:I

    .line 105
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nSTATUS:I

    .line 107
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-eqz v1, :cond_36

    .line 109
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-nez v1, :cond_36

    .line 110
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    .line 115
    :cond_36
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    if-eqz v1, :cond_45

    .line 117
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    if-nez v1, :cond_45

    .line 118
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DUEDATE:Landroid/text/format/Time;

    .line 123
    :cond_45
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-eqz v1, :cond_54

    .line 125
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-nez v1, :cond_54

    .line 126
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v1}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    .line 132
    :cond_54
    return-object v0
.end method

.method public static deleteAllTask(Landroid/content/ContentResolver;)Z
    .registers 5
    .parameter "cResolver"

    .prologue
    .line 240
    const-string v2, "content://com.sec.android/task"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_18

    .line 245
    const/4 v2, 0x1

    .line 252
    :goto_f
    return v2

    .line 247
    :catch_10
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 252
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static deleteTask(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 6
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 223
    const-string v2, "content://com.sec.android/task"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    .local v1, uri:Landroid/net/Uri;
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_22

    move-result v2

    if-lez v2, :cond_2a

    .line 228
    const/4 v2, 0x1

    .line 235
    :goto_21
    return v2

    .line 230
    :catch_22
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public addTask(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 9
    .parameter "cResolver"

    .prologue
    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 148
    .local v2, newUri:Landroid/net/Uri;
    const-string v5, "content://com.sec.android/task"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 149
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "title"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "priority"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v5, "startdate"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v5, "duedate"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "details"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "alarm"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v5, "alarmampm"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v5, "alarmyear"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v5, "alarmmonth"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v5, "alarmday"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v5, "alarmday"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v5, "alarmday"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v5, "alarmday"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "alarmday"

    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    :try_start_a6
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_ae

    move-result-object v2

    .line 173
    :goto_aa
    if-nez v2, :cond_b7

    .line 175
    const/4 v3, 0x0

    .line 180
    :goto_ad
    return-object v3

    .line 168
    :catch_ae
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_aa

    .line 178
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b7
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    .local v3, sid:Ljava/lang/String;
    goto :goto_ad
.end method

.method public replaceTask(Landroid/content/ContentResolver;I)I
    .registers 9
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "content://com.sec.android/task"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 189
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "title"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v4, "priority"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v4, "startdate"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "duedate"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "details"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "alarm"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "alarmampm"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "alarmyear"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v4, "alarmmonth"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v4, "alarmday"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v4, "alarmday"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v4, "alarmday"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v4, "alarmday"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "alarmday"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    if-eqz v0, :cond_ca

    .line 208
    :try_start_a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, selection:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_be} :catch_c2

    move-result v4

    if-lez v4, :cond_ca

    .line 218
    .end local v2           #selection:Ljava/lang/String;
    .end local p2
    :goto_c1
    return p2

    .line 213
    .restart local p2
    :catch_c2
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 218
    .end local v1           #e:Ljava/lang/Exception;
    :cond_ca
    const/4 p2, 0x0

    goto :goto_c1
.end method
