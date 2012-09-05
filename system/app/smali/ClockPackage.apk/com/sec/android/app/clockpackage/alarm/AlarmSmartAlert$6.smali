.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;
.super Ljava/lang/Object;
.source "AlarmSmartAlert.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 343
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 346
    const/4 v0, 0x1

    if-ne v0, p2, :cond_9

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 354
    :cond_8
    :goto_8
    return-void

    .line 349
    :cond_9
    const/4 v0, 0x2

    if-ne v0, p2, :cond_8

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_8

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto :goto_8
.end method
