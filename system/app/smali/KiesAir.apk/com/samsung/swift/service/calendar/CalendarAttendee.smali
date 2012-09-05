.class public Lcom/samsung/swift/service/calendar/CalendarAttendee;
.super Ljava/lang/Object;
.source "CalendarAttendee.java"


# static fields
.field public static final ATTENDEE_NONE:I = 0x0

.field public static final ATTENDEE_OPTIONAL:I = 0x2

.field public static final ATTENDEE_REQUIRED:I = 0x1

.field public static final RELATIONSHIP_ATTENDEE:I = 0x1

.field public static final RELATIONSHIP_NONE:I = 0x0

.field public static final RELATIONSHIP_ORGANIZER:I = 0x2

.field public static final RELATIONSHIP_PERFORMER:I = 0x3

.field public static final RELATIONSHIP_SPEAKER:I = 0x4

.field public static final STATUS_ACCEPTED:I = 0x1

.field public static final STATUS_DECLINED:I = 0x2

.field public static final STATUS_INVITED:I = 0x3

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_TENTATIVE:I = 0x4


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
    invoke-direct {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/calendar/CalendarAttendee;->peer:J

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
    iput-wide p1, p0, Lcom/samsung/swift/service/calendar/CalendarAttendee;->peer:J

    .line 12
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native email()Ljava/lang/String;
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
    iget-wide v0, p0, Lcom/samsung/swift/service/calendar/CalendarAttendee;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->destroy(J)V

    .line 27
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    return-void
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native name()Ljava/lang/String;
.end method

.method public native relationship()I
.end method

.method public native setEmail(Ljava/lang/String;)V
.end method

.method public native setEventId(Ljava/lang/String;)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setRelationship(I)V
.end method

.method public native setStatus(I)V
.end method

.method public native setType(I)V
.end method

.method public native status()I
.end method

.method public native type()I
.end method
