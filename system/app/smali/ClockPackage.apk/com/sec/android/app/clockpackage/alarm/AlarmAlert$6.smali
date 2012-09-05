.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 866
    if-nez p2, :cond_a

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->ChangeTextColor(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)V

    .line 874
    :cond_9
    :goto_9
    return-void

    .line 870
    :cond_a
    if-eq p2, v1, :cond_f

    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 872
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->ChangeTextColor(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)V

    goto :goto_9
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 877
    if-ne v1, p2, :cond_e

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mUserStop:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Z)Z

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 886
    :cond_d
    :goto_d
    return-void

    .line 880
    :cond_e
    const/4 v0, 0x2

    if-ne v0, p2, :cond_d

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_d

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    goto :goto_d
.end method
