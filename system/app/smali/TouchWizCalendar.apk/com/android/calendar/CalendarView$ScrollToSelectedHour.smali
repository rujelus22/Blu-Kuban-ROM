.class Lcom/android/calendar/CalendarView$ScrollToSelectedHour;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollToSelectedHour"
.end annotation


# instance fields
.field mDeltaY:I

.field mDestY:I

.field mEventHour:I

.field mIsInit:Z

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 3
    .parameter

    .prologue
    .line 5369
    iput-object p1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5369
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5379
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z
    invoke-static {v1, v4}, Lcom/android/calendar/CalendarView;->access$2102(Lcom/android/calendar/CalendarView;Z)Z

    .line 5380
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    if-eqz v1, :cond_35

    .line 5381
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->getEventHour()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    .line 5382
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mFirstHour:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2200(Lcom/android/calendar/CalendarView;)I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 5425
    :goto_1d
    return-void

    .line 5385
    :cond_1e
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_57

    .line 5386
    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    .line 5391
    :goto_25
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v1, v2, :cond_73

    .line 5392
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    .line 5396
    :goto_33
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    .line 5398
    :cond_35
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    add-int v0, v1, v2

    .line 5401
    .local v0, viewStartY:I
    if-gez v0, :cond_78

    .line 5402
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v1, v3}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    .line 5403
    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    .line 5416
    :goto_48
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-eqz v1, :cond_a7

    .line 5417
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1, p0}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 5424
    :goto_51
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_1d

    .line 5388
    .end local v0           #viewStartY:I
    :cond_57
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mEventHour:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mCellHeight:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mFirstHourOffset:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2400(Lcom/android/calendar/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2500(Lcom/android/calendar/CalendarView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    goto :goto_25

    .line 5394
    :cond_73
    const/16 v1, -0xd

    iput v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_33

    .line 5404
    .restart local v0       #viewStartY:I
    :cond_78
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v1

    if-le v0, v1, :cond_8e

    .line 5405
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v2, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)I

    move-result v2

    #setter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v1, v2}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    .line 5406
    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_48

    .line 5407
    :cond_8e
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-lez v1, :cond_96

    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_9e

    :cond_96
    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    if-gez v1, :cond_a1

    iget v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_a1

    .line 5409
    :cond_9e
    iput v3, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_48

    .line 5411
    :cond_a1
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v1, v0}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;I)I

    goto :goto_48

    .line 5419
    :cond_a7
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->computeFirstHour()V
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$1800(Lcom/android/calendar/CalendarView;)V

    .line 5420
    iget-object v1, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v1, v4}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Z)Z

    .line 5421
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;->mIsInit:Z

    goto :goto_51
.end method
