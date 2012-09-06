.class Lcom/android/calendar/agenda/AgendaFragment$1;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaFragment;
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
    .line 77
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v1}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #getter for: Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaFragment;->access$100(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #getter for: Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaFragment;->access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 82
    return-void
.end method
