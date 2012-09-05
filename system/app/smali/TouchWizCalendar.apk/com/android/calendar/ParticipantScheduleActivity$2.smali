.class Lcom/android/calendar/ParticipantScheduleActivity$2;
.super Ljava/lang/Object;
.source "ParticipantScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ParticipantScheduleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    #setter for: Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z
    invoke-static {v0, v2}, Lcom/android/calendar/ParticipantScheduleActivity;->access$002(Lcom/android/calendar/ParticipantScheduleActivity;Z)Z

    .line 429
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/ParticipantScheduleView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/ParticipantScheduleActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 435
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z
    invoke-static {v0, v1}, Lcom/android/calendar/ParticipantScheduleActivity;->access$002(Lcom/android/calendar/ParticipantScheduleActivity;Z)Z

    .line 438
    return-void
.end method
