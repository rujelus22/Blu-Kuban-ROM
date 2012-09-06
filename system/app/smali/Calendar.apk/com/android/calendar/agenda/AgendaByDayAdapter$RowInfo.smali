.class Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mDay:I

.field final mEventEndTimeMilli:J

.field final mEventId:J

.field final mEventStartTimeMilli:J

.field mFirstDayAfterYesterday:Z

.field final mInstanceId:J

.field final mPosition:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .registers 6
    .parameter "type"
    .parameter "julianDay"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 447
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 448
    iput v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 449
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 450
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 451
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 452
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 454
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 455
    return-void
.end method

.method constructor <init>(IIIJJJJZ)V
    .registers 14
    .parameter "type"
    .parameter "julianDay"
    .parameter "position"
    .parameter "id"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "instanceId"
    .parameter "allDay"

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 435
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 436
    iput p3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 437
    iput-wide p4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 438
    iput-wide p6, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 439
    iput-wide p8, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 441
    iput-wide p10, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 442
    iput-boolean p12, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 443
    return-void
.end method
