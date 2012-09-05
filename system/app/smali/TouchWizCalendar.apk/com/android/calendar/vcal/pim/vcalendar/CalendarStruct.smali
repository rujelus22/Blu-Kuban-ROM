.class public Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;
    }
.end annotation


# instance fields
.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;",
            ">;"
        }
    .end annotation
.end field

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public addEventList(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;)V
    .registers 3
    .parameter "stru"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    .line 72
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method
