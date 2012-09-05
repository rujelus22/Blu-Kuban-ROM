.class Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1305
    return-void
.end method
