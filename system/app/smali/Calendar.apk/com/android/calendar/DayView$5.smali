.class Lcom/android/calendar/DayView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;
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
    .line 3671
    iput-object p1, p0, Lcom/android/calendar/DayView$5;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3674
    iget-object v2, p0, Lcom/android/calendar/DayView$5;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mCancellingAnimations:Z
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1900(Lcom/android/calendar/DayView;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 3676
    iget-object v2, p0, Lcom/android/calendar/DayView$5;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mAnimateDayHeight:I
    invoke-static {v2, v0}, Lcom/android/calendar/DayView;->access$2002(Lcom/android/calendar/DayView;I)I

    .line 3677
    invoke-static {}, Lcom/android/calendar/DayView;->access$2200()Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2102(Z)Z

    .line 3679
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/DayView$5;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mRemeasure:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$1602(Lcom/android/calendar/DayView;Z)Z

    .line 3680
    iget-object v0, p0, Lcom/android/calendar/DayView$5;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3681
    return-void
.end method
