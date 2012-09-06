.class Lcom/android/calendar/CalendarController$1;
.super Ljava/lang/Object;
.source "CalendarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarController;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarController;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    #getter for: Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;
    invoke-static {v0}, Lcom/android/calendar/CalendarController;->access$100(Lcom/android/calendar/CalendarController;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    #getter for: Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/CalendarController;->access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 102
    return-void
.end method
