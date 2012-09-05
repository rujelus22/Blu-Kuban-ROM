.class Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostInitializeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .registers 2
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 638
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 640
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->verifyAccounts()V
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider2;->access$300(Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 642
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider2;->doUpdateTimezoneDependentFields()V

    .line 643
    return-void
.end method
