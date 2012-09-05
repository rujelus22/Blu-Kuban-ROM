.class public Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStruct"
.end annotation


# instance fields
.field public allday:Z

.field public description:Ljava/lang/String;

.field public dtend:Ljava/lang/String;

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public endday:Ljava/lang/String;

.field public event_location:Ljava/lang/String;

.field public has_alarm:Ljava/lang/String;

.field public last_date:Ljava/lang/String;

.field public reminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public startday:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
