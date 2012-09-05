.class Lcom/android/calendar/WeekActivity$3;
.super Ljava/lang/Object;
.source "WeekActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/WeekActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/WeekActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/WeekActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/calendar/WeekActivity$3;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 122
    iget-object v1, p0, Lcom/android/calendar/WeekActivity$3;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v1}, Lcom/android/calendar/WeekActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 123
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->checkSwitchView(I)Z

    .line 130
    iget-object v1, p0, Lcom/android/calendar/WeekActivity$3;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0, v4}, Lcom/android/calendar/CalendarView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/calendar/WeekActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 131
    return-void
.end method
