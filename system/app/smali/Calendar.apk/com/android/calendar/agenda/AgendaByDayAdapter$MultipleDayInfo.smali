.class Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mEndDay:I

.field mEventEndTimeMilli:J

.field final mEventId:J

.field mEventStartTimeMilli:J

.field final mInstanceId:J

.field final mPosition:I


# direct methods
.method constructor <init>(IIJJJJZ)V
    .registers 12
    .parameter "position"
    .parameter "endDay"
    .parameter "id"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "instanceId"
    .parameter "allDay"

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 470
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 471
    iput-wide p3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    .line 472
    iput-wide p5, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    .line 473
    iput-wide p7, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 474
    iput-wide p9, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    .line 475
    iput-boolean p11, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    .line 476
    return-void
.end method
