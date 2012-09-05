.class public Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TodoStruct"
.end annotation


# instance fields
.field public complete:Z

.field public dtstart:Ljava/lang/String;

.field public due:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public priority:I

.field public reminderMillis:Ljava/lang/Long;

.field public reminderSet:Z

.field public subject:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->uid:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->complete:Z

    .line 63
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->subject:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->dtstart:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->due:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->priority:I

    .line 67
    iput-boolean v1, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderSet:Z

    .line 68
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderMillis:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->note:Ljava/lang/String;

    return-void
.end method
