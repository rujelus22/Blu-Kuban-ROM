.class Lcom/android/calendar/CalendarView$LaunchToCreateEvent;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchToCreateEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 5428
    iput-object p1, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5428
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5431
    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mSelectionMode:I
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$2602(Lcom/android/calendar/CalendarView;I)I

    .line 5432
    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$1302(Lcom/android/calendar/CalendarView;I)I

    .line 5433
    iget-object v0, p0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->switchViews(Z)V
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$2700(Lcom/android/calendar/CalendarView;Z)V

    .line 5434
    return-void
.end method
