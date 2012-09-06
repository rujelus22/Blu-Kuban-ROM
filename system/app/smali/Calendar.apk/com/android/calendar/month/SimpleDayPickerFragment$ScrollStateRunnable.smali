.class public Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/SimpleDayPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .registers 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iput p2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    .line 598
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    .line 603
    const-string v0, "MonthFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 604
    const-string v0, "MonthFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new scroll state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v2, v2, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_37
    iget v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    if-eqz v0, :cond_53

    .line 610
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 635
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateFocusMonth(I)V

    .line 639
    :goto_52
    return-void

    .line 637
    :cond_53
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    goto :goto_52
.end method
