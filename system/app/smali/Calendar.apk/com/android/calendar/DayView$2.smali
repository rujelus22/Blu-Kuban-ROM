.class Lcom/android/calendar/DayView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$402(Lcom/android/calendar/DayView;Z)Z

    .line 253
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$402(Lcom/android/calendar/DayView;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->resetSelectedHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)V

    .line 259
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 260
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$402(Lcom/android/calendar/DayView;Z)Z

    .line 248
    return-void
.end method
