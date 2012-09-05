.class public Lcom/samsung/swift/service/calendar/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


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
    invoke-direct {p0}, Lcom/samsung/swift/service/calendar/Calendar;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/calendar/Calendar;->peer:J

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
    iput-wide p1, p0, Lcom/samsung/swift/service/calendar/Calendar;->peer:J

    .line 12
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native account()Ljava/lang/String;
.end method

.method public native colour()Ljava/lang/String;
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
    iget-wide v0, p0, Lcom/samsung/swift/service/calendar/Calendar;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/calendar/Calendar;->destroy(J)V

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

.method public native readOnly()Z
.end method

.method public native selected()Z
.end method

.method public native setAccount(Ljava/lang/String;)V
.end method

.method public native setColour(Ljava/lang/String;)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setReadOnly(Z)V
.end method

.method public native setSelected(Z)V
.end method
