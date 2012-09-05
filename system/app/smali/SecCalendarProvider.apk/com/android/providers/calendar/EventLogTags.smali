.class public Lcom/android/providers/calendar/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeCalendarUpgradeReceiver(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 17
    const/16 v0, 0xfa0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 18
    return-void
.end method
