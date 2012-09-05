.class Lcom/android/calendar/CalendarActivity$4;
.super Landroid/database/ContentObserver;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$4;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$4;->this$0:Lcom/android/calendar/CalendarActivity;

    #calls: Lcom/android/calendar/CalendarActivity;->loadCalendarTypeIcon()V
    invoke-static {v0}, Lcom/android/calendar/CalendarActivity;->access$000(Lcom/android/calendar/CalendarActivity;)V

    .line 176
    return-void
.end method
