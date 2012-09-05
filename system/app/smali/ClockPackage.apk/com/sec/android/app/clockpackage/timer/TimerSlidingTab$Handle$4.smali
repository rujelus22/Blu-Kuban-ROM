.class Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$4;
.super Ljava/lang/Object;
.source "TimerSlidingTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$1000(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;)Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setState(I)V

    .line 1260
    return-void
.end method
