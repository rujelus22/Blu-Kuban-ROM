.class Lcom/android/calendar/agenda/AgendaFragment$2;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/agenda/AgendaFragment;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 417
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #getter for: Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaFragment;->access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 418
    .local v4, t:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 419
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #getter for: Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaFragment;->access$200(Lcom/android/calendar/agenda/AgendaFragment;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 421
    return-void
.end method
