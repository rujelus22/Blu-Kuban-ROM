.class public Lcom/samsung/swift/service/calendar/CalendarEventInstance;
.super Ljava/lang/Object;
.source "CalendarEventInstance.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 17
    invoke-direct {p0}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->peer:J

    .line 18
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 11
    iput-wide p1, p0, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->peer:J

    .line 12
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native allday()Z
.end method

.method public native begin()J
.end method

.method public native calendarId()Ljava/lang/String;
.end method

.method public native description()Ljava/lang/String;
.end method

.method public native end()J
.end method

.method public native eventId()Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->destroy(J)V

    .line 27
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    return-void
.end method

.method public native hasAttendees()Z
.end method

.method public native hasReminder()Z
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native location()Ljava/lang/String;
.end method

.method public native privacy()I
.end method

.method public native repeating()Z
.end method

.method public native setAllday(Z)V
.end method

.method public native setBegin(J)V
.end method

.method public native setCalendarId(Ljava/lang/String;)V
.end method

.method public native setDescription(Ljava/lang/String;)V
.end method

.method public native setEnd(J)V
.end method

.method public native setEventId(Ljava/lang/String;)V
.end method

.method public native setHasAttendees(Z)V
.end method

.method public native setHasReminder(Z)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setLocation(Ljava/lang/String;)V
.end method

.method public native setPrivacy(I)V
.end method

.method public native setRepeating(Z)V
.end method

.method public native setTimeShownAs(I)V
.end method

.method public native setTimezone(Ljava/lang/String;)V
.end method

.method public native setTimezoneOffset(I)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method

.method public native timeShownAs()I
.end method

.method public native timezone()Ljava/lang/String;
.end method

.method public native timezoneOffset()I
.end method

.method public native title()Ljava/lang/String;
.end method
