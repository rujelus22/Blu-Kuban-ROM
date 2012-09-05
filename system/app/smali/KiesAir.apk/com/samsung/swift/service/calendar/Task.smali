.class public Lcom/samsung/swift/service/calendar/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MEDIUM:I = 0x1


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
    invoke-direct {p0}, Lcom/samsung/swift/service/calendar/Task;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/calendar/Task;->peer:J

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
    iput-wide p1, p0, Lcom/samsung/swift/service/calendar/Task;->peer:J

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

.method public native body()Ljava/lang/String;
.end method

.method public native complete()Z
.end method

.method public native dueDate()J
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/samsung/swift/service/calendar/Task;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/calendar/Task;->destroy(J)V

    .line 31
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    return-void
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native priority()I
.end method

.method public native reminderTime()J
.end method

.method public native reminderType()I
.end method

.method public native setAccount(Ljava/lang/String;)V
.end method

.method public native setBody(Ljava/lang/String;)V
.end method

.method public native setComplete(Z)V
.end method

.method public native setDueDate(J)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setPriority(I)V
.end method

.method public native setReminderTime(J)V
.end method

.method public native setReminderType(I)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method

.method public native title()Ljava/lang/String;
.end method
