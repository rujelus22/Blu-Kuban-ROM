.class Lcom/android/calendar/month/MonthByWeekFragment$3;
.super Ljava/lang/Object;
.source "MonthByWeekFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/month/MonthByWeekFragment;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v0, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/month/MonthByWeekAdapter;->animateToday()V

    .line 412
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 413
    return-void
.end method
