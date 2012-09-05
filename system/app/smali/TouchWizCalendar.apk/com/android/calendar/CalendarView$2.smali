.class Lcom/android/calendar/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarView;->reloadEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iput-object p2, p0, Lcom/android/calendar/CalendarView$2;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1821
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, p0, Lcom/android/calendar/CalendarView$2;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$602(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1822
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRemeasure:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$702(Lcom/android/calendar/CalendarView;Z)Z

    .line 1823
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Z)Z

    .line 1824
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$902(Lcom/android/calendar/CalendarView;Z)Z

    .line 1825
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/CalendarView;->access$600(Lcom/android/calendar/CalendarView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mFirstJulianDay:I
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1000(Lcom/android/calendar/CalendarView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mLastJulianDay:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1100(Lcom/android/calendar/CalendarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, v3, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    .line 1826
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1828
    return-void
.end method
