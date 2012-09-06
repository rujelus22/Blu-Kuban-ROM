.class Lcom/android/calendar/DayView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 3
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_d

    .line 207
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 208
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 209
    monitor-exit p0

    .line 232
    :goto_c
    return-void

    .line 211
    :cond_d
    iget-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_5c

    .line 212
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_25

    .line 213
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 214
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 216
    :cond_25
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_7c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 218
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 220
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 222
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 231
    :goto_57
    monitor-exit p0

    goto :goto_c

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v0

    .line 224
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mAnimateToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Z)Z

    .line 225
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$302(Lcom/android/calendar/DayView;I)I

    .line 226
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 228
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V
    :try_end_7a
    .catchall {:try_start_5c .. :try_end_7a} :catchall_59

    goto :goto_57

    .line 216
    nop

    :array_7c
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 236
    return-void
.end method

.method public setFadingIn(Z)V
    .registers 2
    .parameter "fadingIn"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 240
    return-void
.end method
