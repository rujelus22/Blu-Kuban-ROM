.class Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/month/MonthWeekEventsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_d

    .line 177
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 178
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 179
    monitor-exit p0

    .line 202
    :goto_c
    return-void

    .line 181
    :cond_d
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_6b

    .line 182
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 183
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 184
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_2b
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_8c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    .line 190
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 201
    :goto_66
    monitor-exit p0

    goto :goto_c

    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw v0

    .line 194
    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$102(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$202(Lcom/android/calendar/month/MonthWeekEventsView;I)I

    .line 196
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 198
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->invalidate()V
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_68

    goto :goto_66

    .line 186
    nop

    :array_8c
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 206
    return-void
.end method

.method public setFadingIn(Z)V
    .registers 2
    .parameter "fadingIn"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    .line 210
    return-void
.end method
