.class Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneCheckerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .registers 2
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 665
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 666
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider2;->doUpdateTimezoneDependentFields()V

    .line 667
    return-void
.end method
