.class public Lcom/wssnps/database/smlCalendarItem;
.super Ljava/lang/Object;
.source "smlCalendarItem.java"


# static fields
.field public static ModelDefine:Lcom/wssnps/smlModelDefine;


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

.field public AttendeeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;",
            ">;"
        }
    .end annotation
.end field

.field public Lunar:I

.field public _id:I

.field public _sync_id:Ljava/lang/String;

.field public aAlarm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;",
            ">;"
        }
    .end annotation
.end field

.field public allday:I

.field public dAlarm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public dtend:J

.field public dtstart:J

.field public duration:Ljava/lang/String;

.field public eventStatus:I

.field public exdate:J

.field public hasalarm:I

.field public location:Ljava/lang/String;

.field public ori_id:I

.field public originalEvent:Ljava/lang/String;

.field public originalInstanceTime:J

.field public reminder:[J

.field public rrule:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlCalendarItem;->ModelDefine:Lcom/wssnps/smlModelDefine;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlCalendarItem;->aAlarm:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlCalendarItem;->dAlarm:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V
    .registers 15
    .parameter "smlvcal"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->aAlarm:Ljava/util/List;

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->dAlarm:Ljava/util/List;

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    .line 58
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    .line 188
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 189
    .local v8, temp:Landroid/text/format/Time;
    if-nez p1, :cond_2e

    .line 283
    :cond_2d
    :goto_2d
    return-void

    .line 192
    :cond_2e
    iget v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->luid:I

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    .line 194
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    invoke-static {v9}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 196
    const-string v9, ""

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    .line 203
    :goto_3e
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->description:Ljava/lang/String;

    .line 204
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->location:Ljava/lang/String;

    .line 205
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    .line 207
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-eqz v9, :cond_57

    .line 208
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    .line 210
    :cond_57
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    if-eqz v9, :cond_64

    .line 211
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 213
    :cond_64
    iget v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    .line 215
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_73

    .line 216
    iget v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->Lunar:I

    .line 218
    :cond_73
    iget v9, p0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_100

    .line 220
    const-string v9, "UTC"

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    .line 221
    iget-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    const-wide/32 v11, 0xea60

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 228
    :goto_84
    iget-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    invoke-static {v9}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 230
    iget-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    iget-wide v11, p0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v4, v9, v11

    .line 231
    .local v4, seconds:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    .line 234
    .end local v4           #seconds:J
    :cond_b0
    iget-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 235
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_108

    invoke-static {v8}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 237
    iget-wide v6, p0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    .line 238
    .local v6, startMill:J
    const/4 v9, 0x1

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    .line 239
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    .line 240
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_d3
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_10b

    .line 241
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    iget-object v9, v9, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 242
    .local v1, alarmMill:J
    const/4 v0, 0x0

    .line 244
    .local v0, alarm:I
    sub-long v9, v6, v1

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    long-to-int v0, v9

    .line 245
    iget-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    int-to-long v10, v0

    aput-wide v10, v9, v3

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    .line 200
    .end local v0           #alarm:I
    .end local v1           #alarmMill:J
    .end local v3           #idx:I
    .end local v6           #startMill:J
    :cond_fa
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    goto/16 :goto_3e

    .line 225
    :cond_100
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget-object v9, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    goto/16 :goto_84

    .line 250
    :cond_108
    const/4 v9, 0x0

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    .line 253
    :cond_10b
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Attendee:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_119

    .line 255
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Attendee:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    .line 258
    :cond_119
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    .line 260
    iget v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_150

    .line 261
    const/4 v9, 0x2

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    .line 265
    :cond_125
    :goto_125
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    if-eqz v9, :cond_159

    .line 267
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    .line 274
    :goto_132
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_140

    .line 276
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    .line 279
    :cond_140
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 281
    iget-object v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    goto/16 :goto_2d

    .line 262
    :cond_150
    iget v9, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_125

    .line 263
    const/4 v9, 0x0

    iput v9, p0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    goto :goto_125

    .line 271
    :cond_159
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    goto :goto_132
.end method

.method public static DecodeVCal(Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;
    .registers 3
    .parameter "vcal"

    .prologue
    .line 295
    invoke-static {p0}, Lcom/wssnps/base/smlvCal;->DecodeVCal(Ljava/lang/String;)Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 296
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    new-instance v0, Lcom/wssnps/database/smlCalendarItem;

    invoke-direct {v0, v1}, Lcom/wssnps/database/smlCalendarItem;-><init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V

    .line 297
    .local v0, calendar:Lcom/wssnps/database/smlCalendarItem;
    return-object v0
.end method

.method public static addCalendar(Landroid/content/ContentResolver;Lcom/wssnps/database/smlCalendarItem;I)I
    .registers 14
    .parameter "cResolver"
    .parameter "calendardb"
    .parameter "luid"

    .prologue
    const/4 v10, 0x1

    .line 699
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v2, cv:Landroid/content/ContentValues;
    invoke-virtual {p1, p0}, Lcom/wssnps/database/smlCalendarItem;->insertEventCV(Landroid/content/ContentResolver;)Landroid/content/ContentValues;

    move-result-object v8

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v8, v9}, Lcom/wssnps/database/smlCalendarItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 701
    .local v6, newCalendarUri:Landroid/net/Uri;
    if-nez v6, :cond_34

    .line 702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error add calendar. luid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 703
    const/4 v8, 0x0

    .line 780
    :goto_33
    return v8

    .line 706
    :cond_34
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 708
    .local v7, sid:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 709
    iput p2, p1, Lcom/wssnps/database/smlCalendarItem;->_id:I

    .line 712
    iget v8, p1, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    if-lez v8, :cond_5c

    .line 714
    const/4 v5, 0x0

    .local v5, i:I
    :goto_49
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    array-length v8, v8

    if-ge v5, v8, :cond_5c

    .line 716
    invoke-virtual {p1, v5}, Lcom/wssnps/database/smlCalendarItem;->insertRemindersCV(I)Landroid/content/ContentValues;

    move-result-object v2

    .line 717
    if-eqz v2, :cond_59

    .line 719
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v8}, Lcom/wssnps/database/smlCalendarItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    .line 714
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 724
    .end local v5           #i:I
    :cond_5c
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    if-eqz v8, :cond_87

    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_87

    .line 726
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_69
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_87

    .line 728
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;

    invoke-virtual {p1, v8, p2}, Lcom/wssnps/database/smlCalendarItem;->insertAttendeeCV(Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 730
    if-eqz v2, :cond_84

    .line 732
    sget-object v8, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v8}, Lcom/wssnps/database/smlCalendarItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    .line 726
    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 737
    .end local v5           #i:I
    :cond_87
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v8

    if-ne v8, v10, :cond_d6

    .line 741
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v3, cv_imgae:Landroid/content/ContentValues;
    const-string v8, "content://com.android.calendar/images"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 743
    .local v0, Image_Uri:Landroid/net/Uri;
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    if-eqz v8, :cond_d6

    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_d6

    .line 745
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_a5
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_d6

    .line 748
    const-string v8, "event_id"

    iget v9, p1, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v9, "filepath"

    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    iget-object v8, v8, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v8, "event_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    invoke-virtual {p0, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 745
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    .line 763
    .end local v0           #Image_Uri:Landroid/net/Uri;
    .end local v3           #cv_imgae:Landroid/content/ContentValues;
    .end local v5           #i:I
    :cond_d6
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v8

    if-ne v8, v10, :cond_12d

    sget-boolean v8, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    if-ne v8, v10, :cond_12d

    .line 767
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v4, cv_smemo:Landroid/content/ContentValues;
    const-string v8, "content://com.android.calendar/memos"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 769
    .local v1, Smemo_Uri:Landroid/net/Uri;
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    if-eqz v8, :cond_12d

    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_12d

    .line 771
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_f8
    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_12d

    .line 773
    const-string v8, "event_id"

    iget v9, p1, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v9, "memo_id"

    iget-object v8, p1, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    iget v8, v8, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v8, "event_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 771
    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    .end local v1           #Smemo_Uri:Landroid/net/Uri;
    .end local v4           #cv_smemo:Landroid/content/ContentValues;
    .end local v5           #i:I
    :cond_12d
    move v8, p2

    .line 780
    goto/16 :goto_33
.end method

.method public static deleteCalendar(Landroid/content/ContentResolver;I)Z
    .registers 11
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 920
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 922
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6c

    .line 924
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v5

    if-ne v5, v4, :cond_3b

    .line 928
    const-string v5, "content://com.android.calendar/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 929
    .local v0, Image_Uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 933
    .end local v0           #Image_Uri:Landroid/net/Uri;
    .end local v2           #selection:Ljava/lang/String;
    :cond_3b
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v5

    if-ne v5, v4, :cond_6b

    sget-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    if-ne v5, v4, :cond_6b

    .line 937
    const-string v5, "content://com.android.calendar/memos"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 938
    .local v1, Smemo_Uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 939
    .restart local v2       #selection:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 944
    .end local v1           #Smemo_Uri:Landroid/net/Uri;
    .end local v2           #selection:Ljava/lang/String;
    :cond_6b
    :goto_6b
    return v4

    :cond_6c
    const/4 v4, 0x0

    goto :goto_6b
.end method

.method public static deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 4
    .parameter "cResolver"
    .parameter "where"

    .prologue
    .line 913
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method public static getCalItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;
    .registers 28
    .parameter "resolver"
    .parameter "id"

    .prologue
    .line 302
    new-instance v23, Lcom/wssnps/database/smlCalendarItem;

    invoke-direct/range {v23 .. v23}, Lcom/wssnps/database/smlCalendarItem;-><init>()V

    .line 303
    .local v23, smlCal:Lcom/wssnps/database/smlCalendarItem;
    const/4 v15, 0x0

    .line 304
    .local v15, Events_id:Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 306
    .local v25, version:F
    const v1, 0x400ccccd

    cmpg-float v1, v25, v1

    if-gez v1, :cond_2cb

    .line 308
    const-string v15, "Events._id"

    .line 315
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 318
    .local v19, c:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 320
    const-string v1, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v23

    iput v1, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    .line 321
    const-string v1, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    .line 322
    const-string v1, "eventLocation"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->location:Ljava/lang/String;

    .line 323
    const-string v1, "description"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->description:Ljava/lang/String;

    .line 324
    const-string v1, "dtstart"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, v23

    iput-wide v1, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    .line 325
    const-string v1, "dtend"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, v23

    iput-wide v1, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 326
    const-string v1, "duration"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    .line 327
    const-string v1, "allDay"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v23

    iput v1, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    .line 328
    const-string v1, "hasAlarm"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v23

    iput v1, v0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    .line 329
    const-string v1, "rrule"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    .line 330
    const-string v1, "eventTimezone"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_128

    .line 332
    const-string v1, "setLunar"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v23

    iput v1, v0, Lcom/wssnps/database/smlCalendarItem;->Lunar:I

    .line 333
    :cond_128
    const-string v1, "_sync_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->_sync_id:Ljava/lang/String;

    .line 334
    const-string v1, "eventStatus"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v23

    iput v1, v0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    .line 335
    const-string v1, "original_sync_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->originalEvent:Ljava/lang/String;

    .line 336
    const-string v1, "originalInstanceTime"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, v23

    iput-wide v1, v0, Lcom/wssnps/database/smlCalendarItem;->originalInstanceTime:J

    .line 338
    :cond_170
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 340
    move-object/from16 v0, v23

    iget v1, v0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ce

    .line 342
    const/16 v21, 0x0

    .line 343
    .local v21, i:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 345
    .local v20, c1:Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    .line 346
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 349
    :cond_1ac
    const-string v1, "minutes"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 350
    .local v24, temp:I
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    move/from16 v0, v24

    int-to-long v2, v0

    aput-wide v2, v1, v21

    .line 351
    add-int/lit8 v21, v21, 0x1

    .line 352
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1ac

    .line 354
    .end local v24           #temp:I
    :cond_1cb
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 357
    .end local v20           #c1:Landroid/database/Cursor;
    .end local v21           #i:I
    :cond_1ce
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_249

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v23

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, selection:Ljava/lang/String;
    const-string v1, "content://com.android.calendar/images"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 363
    .local v6, Image_Uri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 364
    .local v22, image_cursor:Landroid/database/Cursor;
    if-eqz v22, :cond_244

    .line 366
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_244

    .line 371
    :cond_20d
    const-string v1, "event_type"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23e

    .line 373
    new-instance v16, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;

    invoke-direct/range {v16 .. v16}, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;-><init>()V

    .line 377
    .local v16, Image:Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;
    const-string v1, "filepath"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;->Path:Ljava/lang/String;

    .line 391
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v16           #Image:Lcom/wssnps/base/smlvCal$SmlvCalAttachImage_t;
    :cond_23e
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_20d

    .line 396
    :cond_244
    if-eqz v22, :cond_249

    .line 397
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 400
    .end local v6           #Image_Uri:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v22           #image_cursor:Landroid/database/Cursor;
    :cond_249
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2ca

    sget-boolean v1, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2ca

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v23

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v18

    .line 407
    .local v18, Smemo_cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_2c5

    .line 409
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 413
    :cond_28e
    const-string v1, "event_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2bf

    .line 415
    new-instance v17, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;

    invoke-direct/range {v17 .. v17}, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;-><init>()V

    .line 416
    .local v17, Smemo:Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    const-string v1, "memo_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;->id:I

    .line 417
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v17           #Smemo:Lcom/wssnps/base/smlvCal$SmlvCalAttachSmemo_t;
    :cond_2bf
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_28e

    .line 422
    :cond_2c5
    if-eqz v18, :cond_2ca

    .line 423
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 426
    .end local v8           #selection:Ljava/lang/String;
    .end local v10           #Smemo_Uri:Landroid/net/Uri;
    .end local v18           #Smemo_cursor:Landroid/database/Cursor;
    :cond_2ca
    return-object v23

    .line 312
    .end local v4           #where:Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_2cb
    const-string v15, "_id"

    goto/16 :goto_1f
.end method

.method public static getCalendarCount(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cResolver"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 888
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 889
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, nCount:I
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 891
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 892
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 895
    return v7
.end method

.method public static getCalendarIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "cResolver"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 835
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .local v12, sbRet:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 837
    .local v7, count:I
    const/4 v6, 0x0

    .line 838
    .local v6, Ret:Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 839
    .local v1, uri:Landroid/net/Uri;
    const/4 v11, 0x0

    .local v11, nIdIndex:I
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 841
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 842
    .local v8, cursor_ori:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 843
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 846
    :cond_1f
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v7, v7, 0x1

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar_id=\"1\" AND original_sync_id=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_sync_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, where_sub:Ljava/lang/String;
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 852
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 853
    .local v9, cursor_sub:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 854
    .local v10, id_index_sub:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 857
    :cond_85
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    add-int/lit8 v7, v7, 0x1

    .line 859
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_85

    .line 861
    :cond_9a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 862
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 864
    .end local v3           #where_sub:Ljava/lang/String;
    .end local v9           #cursor_sub:Landroid/database/Cursor;
    .end local v10           #id_index_sub:I
    :cond_a3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 866
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 869
    return-object v6
.end method

.method public static getCalendarTypeId(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cResolver"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 874
    const/4 v7, 0x0

    .line 875
    .local v7, nTypeId:I
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 876
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 878
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 879
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 881
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 883
    return v7
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 127
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 128
    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    .line 130
    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 131
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 132
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method private static insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "cResolver"
    .parameter "cv"
    .parameter "uri"

    .prologue
    .line 950
    if-eqz p1, :cond_7

    .line 951
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 953
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isValidRange(Landroid/text/format/Time;)Z
    .registers 6
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 137
    .local v0, millis:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_21

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x24dc86

    if-lt v3, v4, :cond_21

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x259e91

    if-le v3, v4, :cond_22

    .line 139
    :cond_21
    const/4 v2, 0x0

    .line 140
    :cond_22
    return v2
.end method

.method public static replaceCalendar(Landroid/content/ContentResolver;Lcom/wssnps/database/smlCalendarItem;I)I
    .registers 11
    .parameter "cResolver"
    .parameter "calendardb"
    .parameter "luid"

    .prologue
    const/4 v7, 0x0

    .line 786
    const/4 v3, 0x0

    .line 787
    .local v3, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v1, cv:Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 789
    .local v0, EventUri:Landroid/net/Uri;
    invoke-virtual {p1, p0}, Lcom/wssnps/database/smlCalendarItem;->insertEventCV(Landroid/content/ContentResolver;)Landroid/content/ContentValues;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_17

    .line 792
    invoke-static {p0, v1, v0}, Lcom/wssnps/database/smlCalendarItem;->updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)I

    .line 795
    :cond_17
    iput p2, p1, Lcom/wssnps/database/smlCalendarItem;->_id:I

    .line 798
    iget v4, p1, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    if-lez v4, :cond_4f

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3c
    iget-object v4, p1, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    array-length v4, v4

    if-ge v2, v4, :cond_4f

    .line 805
    invoke-virtual {p1, v2}, Lcom/wssnps/database/smlCalendarItem;->insertRemindersCV(I)Landroid/content/ContentValues;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_4c

    .line 809
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v4}, Lcom/wssnps/database/smlCalendarItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    .line 803
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 814
    .end local v2           #i:I
    :cond_4f
    iget-object v4, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    if-eqz v4, :cond_98

    iget-object v4, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_98

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 819
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7a
    iget-object v4, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_98

    .line 821
    iget-object v4, p1, Lcom/wssnps/database/smlCalendarItem;->AttendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;

    invoke-virtual {p1, v4, p2}, Lcom/wssnps/database/smlCalendarItem;->insertAttendeeCV(Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 823
    if-eqz v1, :cond_95

    .line 825
    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v4}, Lcom/wssnps/database/smlCalendarItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    .line 819
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 829
    .end local v2           #i:I
    :cond_98
    return p2
.end method

.method public static updateCalendar(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 5
    .parameter "cResolver"
    .parameter "cv"
    .parameter "where"

    .prologue
    .line 903
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x1

    return v0
.end method

.method private static updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)I
    .registers 4
    .parameter "cResolver"
    .parameter "cv"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 958
    if-eqz p1, :cond_8

    .line 959
    invoke-virtual {p0, p2, p1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 961
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public EncodeVCal(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .parameter "cResolver"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/wssnps/database/smlCalendarItem;->ToSmlvCal_t(Landroid/content/ContentResolver;)Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 289
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    invoke-static {v1}, Lcom/wssnps/base/smlvCal;->EncodeVCal(Lcom/wssnps/base/smlvCal$SmlvCal_t;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public ToSmlvCal_t(Landroid/content/ContentResolver;)Lcom/wssnps/base/smlvCal$SmlvCal_t;
    .registers 32
    .parameter "cResolver"

    .prologue
    .line 431
    new-instance v26, Lcom/wssnps/base/smlvCal$SmlvCal_t;

    invoke-direct/range {v26 .. v26}, Lcom/wssnps/base/smlvCal$SmlvCal_t;-><init>()V

    .line 432
    .local v26, vCalendar:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    move-object/from16 v0, v26

    iput v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->luid:I

    .line 433
    sget-object v2, Lcom/wssnps/base/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->VERSION:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->originalEvent:Ljava/lang/String;

    if-eqz v2, :cond_22f

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_225

    .line 438
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    .line 447
    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->description:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->location:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    move-object/from16 v0, v26

    iput v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    .line 451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->Lunar:I

    move-object/from16 v0, v26

    iput v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->Lunar:I

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->dbtimezone:Ljava/lang/String;

    .line 454
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_70

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->AttachImage:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachImage:Ljava/util/List;

    .line 460
    :cond_70
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_84

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_84

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->AttachSmemo:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AttachSmemo:Ljava/util/List;

    .line 465
    :cond_84
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 466
    .local v24, time:Landroid/text/format/Time;
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 468
    .local v25, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->originalEvent:Ljava/lang/String;

    if-eqz v2, :cond_2ed

    .line 470
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .line 471
    .local v27, version:F
    const/16 v19, 0x0

    .line 472
    .local v19, original_sync_id:Ljava/lang/String;
    const/16 v18, 0x0

    .line 474
    .local v18, original_id:I
    const v2, 0x400ccccd

    cmpg-float v2, v27, v2

    if-gez v2, :cond_239

    .line 476
    const-string v19, "Events._sync_id"

    .line 483
    :goto_b4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wssnps/database/smlCalendarItem;->originalEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 486
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 488
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 490
    :cond_f2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 492
    const-string v2, "%048d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 493
    .local v23, tempUID:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    .line 495
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23d

    .line 496
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    .line 500
    :goto_117
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_152

    .line 502
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-nez v2, :cond_137

    .line 503
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    .line 505
    :cond_137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_244

    .line 507
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 520
    :cond_152
    :goto_152
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_199

    .line 522
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    if-nez v2, :cond_172

    .line 523
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    .line 525
    :cond_172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25f

    .line 527
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 529
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 541
    :cond_199
    :goto_199
    move-object/from16 v0, v26

    iget v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_295

    .line 543
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->originalInstanceTime:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_1db

    .line 545
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    if-nez v2, :cond_1c0

    .line 546
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    .line 547
    :cond_1c0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27a

    .line 549
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->originalInstanceTime:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 669
    .end local v5           #where:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v18           #original_id:I
    .end local v19           #original_sync_id:Ljava/lang/String;
    .end local v27           #version:F
    :cond_1db
    :goto_1db
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    if-lez v2, :cond_490

    .line 673
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_490

    .line 675
    new-instance v8, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v8}, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;-><init>()V

    .line 676
    .local v8, alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 677
    .local v9, alarm_time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    aget-wide v6, v4, v16

    const-wide/16 v28, 0x3c

    mul-long v6, v6, v28

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    sub-long v12, v2, v6

    .line 678
    .local v12, dtAlarm:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_480

    .line 680
    const-string v2, "GMT"

    invoke-virtual {v9, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 689
    :goto_219
    iput-object v9, v8, Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    .line 690
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AudioAlarm:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v16, v16, 0x1

    goto :goto_1e3

    .line 440
    .end local v8           #alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    .end local v9           #alarm_time:Landroid/text/format/Time;
    .end local v12           #dtAlarm:J
    .end local v16           #i:I
    .end local v23           #tempUID:Ljava/lang/String;
    .end local v24           #time:Landroid/text/format/Time;
    .end local v25           #timezone:Ljava/util/TimeZone;
    :cond_225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    goto/16 :goto_31

    .line 444
    :cond_22f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    goto/16 :goto_31

    .line 480
    .restart local v18       #original_id:I
    .restart local v19       #original_sync_id:Ljava/lang/String;
    .restart local v24       #time:Landroid/text/format/Time;
    .restart local v25       #timezone:Ljava/util/TimeZone;
    .restart local v27       #version:F
    :cond_239
    const-string v19, "_sync_id"

    goto/16 :goto_b4

    .line 498
    .restart local v5       #where:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v23       #tempUID:Ljava/lang/String;
    :cond_23d
    const/4 v2, 0x2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->XEXTYPE:I

    goto/16 :goto_117

    .line 512
    :cond_244
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 513
    .local v20, realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_152

    .line 533
    .end local v20           #realOffset:I
    :cond_25f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 534
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_199

    .line 554
    .end local v20           #realOffset:I
    :cond_27a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->originalInstanceTime:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 555
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->originalInstanceTime:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 564
    .end local v20           #realOffset:I
    :cond_295
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_1db

    .line 566
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    if-nez v2, :cond_2b5

    .line 567
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    .line 568
    :cond_2b5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d2

    .line 570
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 575
    :cond_2d2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 576
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EXDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 586
    .end local v5           #where:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v18           #original_id:I
    .end local v19           #original_sync_id:Ljava/lang/String;
    .end local v20           #realOffset:I
    .end local v23           #tempUID:Ljava/lang/String;
    .end local v27           #version:F
    :cond_2ed
    const-string v2, "%048d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 587
    .restart local v23       #tempUID:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->UID:Ljava/lang/String;

    .line 589
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_342

    .line 591
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    if-nez v2, :cond_327

    .line 592
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    .line 593
    :cond_327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39b

    .line 595
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 608
    :cond_342
    :goto_342
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/wssnps/database/smlCalendarItem;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x24dc86

    if-lt v2, v3, :cond_3d0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_363

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    if-nez v2, :cond_3d0

    .line 610
    :cond_363
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    if-nez v2, :cond_372

    .line 611
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    .line 612
    :cond_372
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b5

    .line 614
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 616
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 600
    :cond_39b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 601
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto :goto_342

    .line 620
    .end local v20           #realOffset:I
    :cond_3b5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 621
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 626
    .end local v20           #realOffset:I
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    if-eqz v2, :cond_1db

    .line 628
    const/16 v17, 0x0

    .line 629
    .local v17, nIndex:I
    const-wide/16 v14, 0x0

    .line 630
    .local v14, duration_t:J
    const-string v22, ""

    .line 631
    .local v22, szValue:Ljava/lang/String;
    const/4 v10, 0x0

    .line 632
    .local v10, bflag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 634
    .local v21, szTmp:Ljava/lang/String;
    const/16 v2, 0x53

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_44c

    .line 636
    const/4 v10, 0x1

    .line 643
    :cond_3ee
    :goto_3ee
    if-lez v17, :cond_1db

    .line 645
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 646
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 648
    if-eqz v10, :cond_458

    .line 650
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v14

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_422

    .line 652
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 660
    :cond_422
    :goto_422
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    if-nez v2, :cond_431

    .line 661
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    .line 662
    :cond_431
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 663
    .restart local v20       #realOffset:I
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/wssnps/base/smlvCal$SmlvCal_t;->EndDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move/from16 v0, v20

    int-to-long v6, v0

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1db

    .line 638
    .end local v20           #realOffset:I
    :cond_44c
    const/16 v2, 0x44

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_3ee

    .line 640
    const/4 v10, 0x0

    goto :goto_3ee

    .line 656
    :cond_458
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    const-wide/16 v6, 0x18

    mul-long/2addr v6, v14

    const-wide/16 v28, 0xe10

    mul-long v6, v6, v28

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    .line 657
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_422

    .line 658
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    goto :goto_422

    .line 685
    .end local v10           #bflag:Z
    .end local v14           #duration_t:J
    .end local v17           #nIndex:I
    .end local v21           #szTmp:Ljava/lang/String;
    .end local v22           #szValue:Ljava/lang/String;
    .restart local v8       #alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    .restart local v9       #alarm_time:Landroid/text/format/Time;
    .restart local v12       #dtAlarm:J
    .restart local v16       #i:I
    :cond_480
    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v20

    .line 686
    .restart local v20       #realOffset:I
    move/from16 v0, v20

    int-to-long v2, v0

    sub-long v2, v12, v2

    invoke-virtual {v9, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_219

    .line 694
    .end local v8           #alarm:Lcom/wssnps/base/smlvCal$SmlvCalAlarm_t;
    .end local v9           #alarm_time:Landroid/text/format/Time;
    .end local v12           #dtAlarm:J
    .end local v16           #i:I
    .end local v20           #realOffset:I
    :cond_490
    return-object v26
.end method

.method public insertAttendeeCV(Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;I)Landroid/content/ContentValues;
    .registers 6
    .parameter "attendee"
    .parameter "luid"

    .prologue
    .line 1203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1204
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeEmail:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1208
    const-string v1, "attendeeEmail"

    iget-object v2, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_19
    iget-object v1, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeName:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 1213
    const-string v1, "attendeeName"

    iget-object v2, p1, Lcom/wssnps/base/smlvCal$SmlvCalAttendee_t;->AttendeeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_24
    return-object v0
.end method

.method public insertEventCV(Landroid/content/ContentResolver;)Landroid/content/ContentValues;
    .registers 24
    .parameter "cResolver"

    .prologue
    .line 965
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 966
    .local v14, temp:Landroid/text/format/Time;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v3, cv:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 972
    .local v8, nExDateStatus:I
    new-instance v10, Lcom/wssnps/database/smlCalendarItem;

    invoke-direct {v10}, Lcom/wssnps/database/smlCalendarItem;-><init>()V

    .line 975
    .local v10, oriCal:Lcom/wssnps/database/smlCalendarItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_259

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_259

    .line 978
    const/4 v8, 0x1

    .line 997
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_291

    .line 998
    const-string v16, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :goto_44
    const-string v16, "calendar_id"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_75

    .line 1011
    const/16 v16, 0x1

    const-string v17, "Event id is not used"

    invoke-static/range {v16 .. v17}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1012
    const-string v16, "_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2b0

    .line 1016
    const-string v16, "description"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->description:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :goto_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->location:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2bd

    .line 1021
    const-string v16, "eventLocation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->location:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :goto_ab
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v8, v0, :cond_3d3

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_326

    .line 1030
    iget-object v0, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 1031
    .local v15, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1032
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_fe

    .line 1034
    const-string v16, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    const-string v16, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1038
    :cond_fe
    iget-object v0, v10, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_174

    .line 1040
    const/4 v9, 0x0

    .line 1041
    .local v9, nIndex:I
    const-wide/16 v4, 0x0

    .line 1042
    .local v4, duration_t:J
    const-string v13, ""

    .line 1043
    .local v13, szValue:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1044
    .local v2, bflag:Z
    iget-object v12, v10, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    .line 1045
    .local v12, szTmp:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1047
    .local v6, exdate_dtend:J
    const/16 v16, 0x53

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_2ca

    .line 1049
    const/4 v2, 0x1

    .line 1056
    :cond_119
    :goto_119
    if-lez v9, :cond_174

    .line 1058
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1059
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1061
    if-eqz v2, :cond_2d7

    .line 1063
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v4

    add-long v6, v16, v18

    .line 1064
    iget v0, v10, Lcom/wssnps/database/smlCalendarItem;->allday:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14a

    .line 1065
    const-wide/32 v16, 0xea60

    sub-long v6, v6, v16

    .line 1074
    :cond_14a
    :goto_14a
    invoke-virtual {v14, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1075
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_2fe

    .line 1077
    invoke-virtual {v15, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    .line 1078
    .local v11, realOffset:I
    const-string v16, "dtend"

    int-to-long v0, v11

    move-wide/from16 v17, v0

    sub-long v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1079
    const-string v16, "duration"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    .end local v2           #bflag:Z
    .end local v4           #duration_t:J
    .end local v6           #exdate_dtend:J
    .end local v9           #nIndex:I
    .end local v11           #realOffset:I
    .end local v12           #szTmp:Ljava/lang/String;
    .end local v13           #szValue:Ljava/lang/String;
    .end local v15           #timezone:Ljava/util/TimeZone;
    :cond_174
    :goto_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_18f

    .line 1143
    const-string v16, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->timezone:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_18f
    const-string v16, "allDay"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    const-string v16, "hasAlarm"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->hasalarm:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_46d

    .line 1156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->allday:I

    move/from16 v16, v0

    if-lez v16, :cond_45c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "UNTIL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_45c

    .line 1157
    const-string v16, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UNTIL="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0xe

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :goto_1fa
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_219

    .line 1168
    const-string v16, "setLunar"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->Lunar:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    :cond_219
    const-string v16, "hasAttendeeData"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v8, v0, :cond_258

    .line 1174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->eventStatus:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_477

    .line 1175
    const-string v16, "eventStatus"

    const-string v17, "2"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :goto_247
    const-string v16, "original_id"

    iget v0, v10, Lcom/wssnps/database/smlCalendarItem;->_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1182
    :cond_258
    return-object v3

    .line 980
    :cond_259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_286

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_286

    .line 983
    const/4 v8, 0x2

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/wssnps/database/smlCalendarItem;->getCalItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v10

    goto/16 :goto_29

    .line 989
    :cond_286
    const/4 v8, 0x0

    .line 990
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    goto/16 :goto_29

    .line 1001
    :cond_291
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v8, v0, :cond_2a3

    .line 1002
    iget-object v0, v10, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlCalendarItem;->summary:Ljava/lang/String;

    goto/16 :goto_44

    .line 1004
    :cond_2a3
    const-string v16, "title"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1018
    :cond_2b0
    const-string v16, "description"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    .line 1023
    :cond_2bd
    const-string v16, "eventLocation"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 1051
    .restart local v2       #bflag:Z
    .restart local v4       #duration_t:J
    .restart local v6       #exdate_dtend:J
    .restart local v9       #nIndex:I
    .restart local v12       #szTmp:Ljava/lang/String;
    .restart local v13       #szValue:Ljava/lang/String;
    .restart local v15       #timezone:Ljava/util/TimeZone;
    :cond_2ca
    const/16 v16, 0x44

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_119

    .line 1053
    const/4 v2, 0x0

    goto/16 :goto_119

    .line 1069
    :cond_2d7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x18

    mul-long v18, v18, v4

    const-wide/16 v20, 0xe10

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    add-long v6, v16, v18

    .line 1070
    iget v0, v10, Lcom/wssnps/database/smlCalendarItem;->allday:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14a

    .line 1071
    const-wide/32 v16, 0xea60

    sub-long v6, v6, v16

    goto/16 :goto_14a

    .line 1083
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_174

    .line 1085
    const-string v16, "duration"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v16, "dtend"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 1094
    .end local v2           #bflag:Z
    .end local v4           #duration_t:J
    .end local v6           #exdate_dtend:J
    .end local v9           #nIndex:I
    .end local v12           #szTmp:Ljava/lang/String;
    .end local v13           #szValue:Ljava/lang/String;
    .end local v15           #timezone:Ljava/util/TimeZone;
    :cond_326
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1095
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_34a

    .line 1097
    const-string v16, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    :cond_34a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1101
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_36e

    .line 1103
    const-string v16, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1106
    :cond_36e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1107
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3ab

    .line 1108
    const-string v16, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    const-string v16, "duration"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 1113
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_174

    .line 1115
    const-string v16, "duration"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v16, "dtend"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 1123
    :cond_3d3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1124
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_3f7

    .line 1125
    const-string v16, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtstart:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    :cond_3f7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1128
    invoke-static {v14}, Lcom/wssnps/database/smlCalendarItem;->isValidRange(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_434

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_434

    .line 1129
    const-string v16, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wssnps/database/smlCalendarItem;->dtend:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1130
    const-string v16, "duration"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 1134
    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_174

    .line 1136
    const-string v16, "duration"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->duration:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v16, "dtend"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 1159
    :cond_45c
    const-string v16, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->rrule:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 1163
    :cond_46d
    const/4 v12, 0x0

    .line 1164
    .restart local v12       #szTmp:Ljava/lang/String;
    const-string v16, "rrule"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 1177
    .end local v12           #szTmp:Ljava/lang/String;
    :cond_477
    const-string v16, "eventStatus"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_247
.end method

.method public insertRemindersCV(I)Landroid/content/ContentValues;
    .registers 7
    .parameter "index"

    .prologue
    .line 1187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    aget-wide v1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_11

    .line 1191
    const/4 v0, 0x0

    .line 1198
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_10
    return-object v0

    .line 1194
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_11
    const-string v1, "event_id"

    iget v2, p0, Lcom/wssnps/database/smlCalendarItem;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string v1, "minutes"

    iget-object v2, p0, Lcom/wssnps/database/smlCalendarItem;->reminder:[J

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1196
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10
.end method

.method public toString(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .parameter "cResolver"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/wssnps/database/smlCalendarItem;->EncodeVCal(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
