.class Lcom/android/calendar/DayActivity$6;
.super Ljava/lang/Object;
.source "DayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/calendar/DayActivity$6;->this$0:Lcom/android/calendar/DayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/calendar/DayActivity$6;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v1}, Lcom/android/calendar/DayActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 219
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarView;->checkSwitchView(I)Z

    .line 226
    iget-object v1, p0, Lcom/android/calendar/DayActivity$6;->this$0:Lcom/android/calendar/DayActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/calendar/DayActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 227
    return-void
.end method
