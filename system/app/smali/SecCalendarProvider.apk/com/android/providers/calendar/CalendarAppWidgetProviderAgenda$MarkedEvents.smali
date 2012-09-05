.class Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
.super Ljava/lang/Object;
.source "CalendarAppWidgetProviderAgenda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkedEvents"
.end annotation


# instance fields
.field realCount:I

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;)V
    .registers 3
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;)V

    return-void
.end method
