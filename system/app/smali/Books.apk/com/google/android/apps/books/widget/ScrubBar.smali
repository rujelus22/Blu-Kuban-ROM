.class public Lcom/google/android/apps/books/widget/ScrubBar;
.super Landroid/widget/FrameLayout;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;,
        Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;,
        Lcom/google/android/apps/books/widget/ScrubBar$Resources;
    }
.end annotation


# instance fields
.field private final mAccessibilityEnabled:Z

.field private final mDisplayDensity:F

.field private mFreezePositionInProgress:Z

.field private mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;"
        }
    .end annotation
.end field

.field private mIsTrackingEvent:Z

.field private mItemPosition:I

.field private mLastEventTime:J

.field private mLastEventX:F

.field private mLastReadChapterLabel:Ljava/lang/CharSequence;

.field private mLastReadPageLabel:Ljava/lang/CharSequence;

.field private mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

.field private mPositionUpdateSequenceId:I

.field private final mPostPositionUpdateHandler:Landroid/os/Handler;

.field private mQueuedPosition:Ljava/lang/Integer;

.field private mRect:Landroid/graphics/Rect;

.field private mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

.field private mTabletMode:Z

.field private final mUndoClick:Landroid/view/View$OnClickListener;

.field private mUndoItem:I

.field private final mVelocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 177
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    .line 128
    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 139
    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    .line 154
    iput v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mRect:Landroid/graphics/Rect;

    .line 164
    const-string v0, "BooksScrubberVelocity"

    const/high16 v1, 0x41a0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrubBar"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mVelocityThreshold:F

    .line 323
    new-instance v0, Lcom/google/android/apps/books/widget/ScrubBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/ScrubBar$1;-><init>(Lcom/google/android/apps/books/widget/ScrubBar;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPostPositionUpdateHandler:Landroid/os/Handler;

    .line 658
    new-instance v0, Lcom/google/android/apps/books/widget/ScrubBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/ScrubBar$2;-><init>(Lcom/google/android/apps/books/widget/ScrubBar;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoClick:Landroid/view/View$OnClickListener;

    .line 186
    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mAccessibilityEnabled:Z

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mDisplayDensity:F

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/ScrubBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/books/widget/ScrubBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/widget/ScrubBar;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/widget/ScrubBar;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPositionAndPause(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    return-object v0
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 656
    return-void
.end method

.method private dispatchScrubFinished(I)V
    .registers 3
    .parameter "itemPosition"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    if-eqz v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;->onScrubFinished(I)V

    .line 385
    :cond_9
    return-void
.end method

.method private dispatchScrubStarted()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    if-eqz v0, :cond_9

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;->onScrubStarted()V

    .line 379
    :cond_9
    return-void
.end method

.method private finishTrackingTouchEvent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPostPositionUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIsTrackingEvent:Z

    .line 595
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPressed(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 597
    return-void
.end method

.method private incPositionUpdateSequenceId()V
    .registers 3

    .prologue
    .line 298
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_b

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    .line 303
    :goto_a
    return-void

    .line 301
    :cond_b
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    goto :goto_a
.end method

.method private layoutChild(Landroid/view/View;II)V
    .registers 8
    .parameter "child"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 516
    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 517
    .local v0, height:I
    add-int v2, p2, v1

    add-int v3, p3, v0

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 518
    return-void
.end method

.method private maybeSetPositionDelayed(I)V
    .registers 5
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x3

    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    if-eqz v0, :cond_2c

    .line 283
    const-string v0, "ScrubBar"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 284
    const-string v0, "ScrubBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queuing up position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    .line 293
    :goto_2b
    return-void

    .line 288
    :cond_2c
    const-string v0, "ScrubBar"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 289
    const-string v0, "ScrubBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without queueing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_52
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPositionAndPause(I)V

    goto :goto_2b
.end method

.method private readAloudCurrentPositionIfAccessibilityEnabled()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-boolean v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mAccessibilityEnabled:Z

    if-nez v3, :cond_6

    .line 371
    :cond_5
    :goto_5
    return v2

    .line 356
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getChapterLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    .local v0, chapterLabel:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getPageLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    .local v1, pageLabel:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadChapterLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->sendAccessibilityEventWithText(Ljava/lang/CharSequence;)V

    .line 361
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadChapterLabel:Ljava/lang/CharSequence;

    .line 362
    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadPageLabel:Ljava/lang/CharSequence;

    .line 363
    const/16 v2, 0x1770

    goto :goto_5

    .line 364
    :cond_3f
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadPageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 366
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    iget v4, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    invoke-interface {v3, v4, v2}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getCalloutPageLabelShort(IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->sendAccessibilityEventWithText(Ljava/lang/CharSequence;)V

    .line 368
    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadPageLabel:Ljava/lang/CharSequence;

    .line 369
    const/16 v2, 0xbb8

    goto :goto_5
.end method

.method private setPositionAndPause(I)V
    .registers 7
    .parameter "itemIndex"

    .prologue
    .line 306
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    .line 307
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->readAloudCurrentPositionIfAccessibilityEnabled()I

    move-result v1

    .line 311
    .local v1, pauseLength:I
    if-nez v1, :cond_11

    .line 313
    const/16 v1, 0x3e8

    .line 316
    :cond_11
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 317
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 318
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->incPositionUpdateSequenceId()V

    .line 319
    iget v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mPostPositionUpdateHandler:Landroid/os/Handler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    return-void
.end method

.method private startTrackingTouchEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    .line 546
    iput-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadChapterLabel:Ljava/lang/CharSequence;

    .line 547
    iput-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastReadPageLabel:Ljava/lang/CharSequence;

    .line 548
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventTime:J

    .line 549
    iput-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    .line 550
    iput-boolean v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIsTrackingEvent:Z

    .line 551
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->incPositionUpdateSequenceId()V

    .line 552
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->dispatchScrubStarted()V

    .line 553
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->setPressed(Z)V

    .line 554
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 555
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 15
    .parameter "event"

    .prologue
    .line 600
    iget-object v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v9, v9, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v9}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getWidth()I

    move-result v7

    .line 602
    .local v7, width:I
    iget-object v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v9, :cond_7e

    const/4 v5, 0x1

    .line 605
    .local v5, totalItems:I
    :goto_d
    iget-object v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v9, v9, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v9}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    .local v6, trackParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    int-to-float v10, v7

    div-float/2addr v9, v10

    float-to-int v4, v9

    .line 609
    .local v4, itemPosition:I
    const-string v9, "ScrubBar"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 610
    const-string v9, "ScrubBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "itemPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_85

    const/4 v0, 0x1

    .line 616
    .local v0, activeScrub:Z
    :goto_4d
    iget-wide v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_87

    .line 619
    const/4 v3, 0x0

    .line 636
    .local v3, isFastMovement:Z
    :goto_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventX:F

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventTime:J

    .line 639
    if-eqz v3, :cond_e7

    .line 640
    const-string v9, "ScrubBar"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 641
    const-string v9, "ScrubBar"

    const-string v10, "fast movement"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_74
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V

    .line 644
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;

    .line 645
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z

    .line 652
    :goto_7d
    return-void

    .line 602
    .end local v0           #activeScrub:Z
    .end local v3           #isFastMovement:Z
    .end local v4           #itemPosition:I
    .end local v5           #totalItems:I
    .end local v6           #trackParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7e
    iget-object v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v9}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v5

    goto :goto_d

    .line 612
    .restart local v4       #itemPosition:I
    .restart local v5       #totalItems:I
    .restart local v6       #trackParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_85
    const/4 v0, 0x0

    goto :goto_4d

    .line 621
    .restart local v0       #activeScrub:Z
    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventTime:J

    sub-long v1, v9, v11

    .line 622
    .local v1, deltaTime:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_a7

    .line 623
    const-string v9, "ScrubBar"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 624
    const-string v9, "ScrubBar"

    const-string v10, "maybe a duplicate event? count as slow..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_a5
    const/4 v3, 0x0

    .restart local v3       #isFastMovement:Z
    goto :goto_56

    .line 628
    .end local v3           #isFastMovement:Z
    :cond_a7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastEventX:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x447a

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    long-to-float v10, v1

    div-float/2addr v9, v10

    iget v10, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mDisplayDensity:F

    div-float v8, v9, v10

    .line 630
    .local v8, xVelocity:F
    const-string v9, "ScrubBar"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 631
    const-string v9, "ScrubBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x velocity is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_dc
    iget v9, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mVelocityThreshold:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_e5

    const/4 v3, 0x1

    .restart local v3       #isFastMovement:Z
    :goto_e3
    goto/16 :goto_56

    .end local v3           #isFastMovement:Z
    :cond_e5
    const/4 v3, 0x0

    goto :goto_e3

    .line 647
    .end local v1           #deltaTime:J
    .end local v8           #xVelocity:F
    .restart local v3       #isFastMovement:Z
    :cond_e7
    const-string v9, "ScrubBar"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 648
    const-string v9, "ScrubBar"

    const-string v10, "slow movement"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_f7
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/widget/ScrubBar;->maybeSetPositionDelayed(I)V

    goto :goto_7d
.end method


# virtual methods
.method public clearUndoPosition()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 239
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 677
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 681
    const/4 v0, 0x1

    .line 683
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public getChapterLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->chapterTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->pageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 527
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v1, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    .line 528
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_26

    .line 529
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 530
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_26

    .line 531
    const/4 v1, 0x1

    .line 535
    .end local v0           #target:Landroid/view/View;
    :goto_25
    return v1

    :cond_26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_25
.end method

.method protected onLayout(ZIIII)V
    .registers 51
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getMeasuredWidth()I

    move-result v41

    .line 408
    .local v41, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getMeasuredHeight()I

    move-result v15

    .line 410
    .local v15, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 414
    .local v30, trackParams:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    .line 415
    .local v29, trackLeft:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v42, v0

    sub-int v31, v41, v42

    .line 416
    .local v31, trackRight:I
    sub-int v34, v31, v29

    .line 417
    .local v34, trackWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getMeasuredHeight()I

    move-result v28

    .line 418
    .local v28, trackHeight:I
    move/from16 v26, v15

    .line 419
    .local v26, trackBottom:I
    sub-int v32, v26, v28

    .line 420
    .local v32, trackTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    move/from16 v2, v32

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/google/android/apps/books/widget/ScrubTrackView;->layout(IIII)V

    .line 422
    add-int v42, v32, v15

    div-int/lit8 v33, v42, 0x2

    .line 425
    .local v33, trackVerticalCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->maskView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 426
    .local v21, maskView:Landroid/view/View;
    if-eqz v21, :cond_82

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->maskView:Landroid/view/View;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v32

    move/from16 v3, v41

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 430
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    move-object/from16 v42, v0

    if-nez v42, :cond_285

    const/16 v25, 0x1

    .line 433
    .local v25, totalItems:I
    :goto_8c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    move/from16 v43, v0

    mul-int v43, v43, v34

    div-int v43, v43, v25

    add-int v16, v42, v43

    .line 437
    .local v16, knobHorizontalCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->knobView:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v18, v33, v42

    .line 438
    .local v18, knobTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->knobView:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v17, v16, v42

    .line 440
    .local v17, knobLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->knobView:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutArrow:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 446
    .local v5, arrowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mDisplayDensity:F

    move/from16 v42, v0

    const/high16 v43, 0x4000

    mul-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v23, v0

    .line 447
    .local v23, overlapPixels:I
    add-int v42, v18, v23

    sub-int v7, v42, v5

    .line 448
    .local v7, arrowTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutArrow:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v6, v16, v42

    .line 449
    .local v6, arrowLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutArrow:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 452
    add-int v10, v7, v5

    .line 454
    .local v10, calloutBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredHeight()I

    move-result v42

    sub-int v13, v10, v42

    .line 455
    .local v13, calloutTop:I
    const/high16 v42, 0x4040

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mDisplayDensity:F

    move/from16 v43, v0

    mul-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v20, v0

    .line 456
    .local v20, marginPixels:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mTabletMode:Z

    move/from16 v42, v0

    if-eqz v42, :cond_291

    .line 461
    mul-int/lit8 v42, v20, 0x2

    sub-int v22, v41, v42

    .line 462
    .local v22, maxCalloutWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    move-object/from16 v42, v0

    const/high16 v43, -0x8000

    move/from16 v0, v43

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    const/high16 v44, -0x8000

    move/from16 v0, v44

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->measureChild(Landroid/view/View;II)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    div-int/lit8 v14, v42, 0x2

    .line 469
    .local v14, halfCallout:I
    add-int v19, v14, v20

    .line 470
    .local v19, leftBound:I
    sub-int v42, v41, v14

    sub-int v24, v42, v20

    .line 472
    .local v24, rightBound:I
    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(III)I

    move-result v11

    .line 474
    .local v11, calloutCenter:I
    sub-int v12, v11, v14

    .line 476
    .local v12, calloutLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 488
    .end local v11           #calloutCenter:I
    .end local v12           #calloutLeft:I
    .end local v14           #halfCallout:I
    .end local v19           #leftBound:I
    .end local v22           #maxCalloutWidth:I
    .end local v24           #rightBound:I
    :goto_1b6
    div-int/lit8 v42, v28, 0x2

    add-int v27, v32, v42

    .line 489
    .local v27, trackCenterTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    move/from16 v42, v0

    mul-int v42, v42, v34

    div-int v42, v42, v25

    add-int v35, v29, v42

    .line 491
    .local v35, undoExactLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    move/from16 v42, v0

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2a8

    const/16 v40, 0x0

    .line 493
    .local v40, undoVisible:I
    :goto_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_224

    .line 495
    move/from16 v39, v27

    .line 496
    .local v39, undoTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v36, v35, v42

    .line 497
    .local v36, undoLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v36

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 502
    .end local v36           #undoLeft:I
    .end local v39           #undoTop:I
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_284

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredHeight()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v38, v27, v42

    .line 506
    .local v38, undoTargetTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v37, v35, v42

    .line 508
    .local v37, undoTargetLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    .end local v37           #undoTargetLeft:I
    .end local v38           #undoTargetTop:I
    :cond_284
    return-void

    .line 430
    .end local v5           #arrowHeight:I
    .end local v6           #arrowLeft:I
    .end local v7           #arrowTop:I
    .end local v10           #calloutBottom:I
    .end local v13           #calloutTop:I
    .end local v16           #knobHorizontalCenter:I
    .end local v17           #knobLeft:I
    .end local v18           #knobTop:I
    .end local v20           #marginPixels:I
    .end local v23           #overlapPixels:I
    .end local v25           #totalItems:I
    .end local v27           #trackCenterTop:I
    .end local v35           #undoExactLeft:I
    .end local v40           #undoVisible:I
    :cond_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v25

    goto/16 :goto_8c

    .line 479
    .restart local v5       #arrowHeight:I
    .restart local v6       #arrowLeft:I
    .restart local v7       #arrowTop:I
    .restart local v10       #calloutBottom:I
    .restart local v13       #calloutTop:I
    .restart local v16       #knobHorizontalCenter:I
    .restart local v17       #knobLeft:I
    .restart local v18       #knobTop:I
    .restart local v20       #marginPixels:I
    .restart local v23       #overlapPixels:I
    .restart local v25       #totalItems:I
    :cond_291
    move/from16 v8, v20

    .line 480
    .local v8, bubbleLeft:I
    sub-int v9, v41, v20

    .line 484
    .local v9, bubbleRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v13, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1b6

    .line 491
    .end local v8           #bubbleLeft:I
    .end local v9           #bubbleRight:I
    .restart local v27       #trackCenterTop:I
    .restart local v35       #undoExactLeft:I
    :cond_2a8
    const/16 v40, 0x8

    goto/16 :goto_1d6
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 390
    .local v3, parent:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 391
    .local v2, idealWidth:I
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScrubBar;->measureChildren(II)V

    .line 396
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v5, v5, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v6, v6, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->knobView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v6, v6, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 399
    .local v1, idealHeight:I
    invoke-static {v2, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->resolveSize(II)I

    move-result v4

    .line 400
    .local v4, width:I
    invoke-static {v1, p2}, Lcom/google/android/apps/books/widget/ScrubBar;->resolveSize(II)I

    move-result v0

    .line 401
    .local v0, height:I
    invoke-virtual {p0, v4, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setMeasuredDimension(II)V

    .line 402
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v0, :cond_6

    .line 562
    const/4 v0, 0x0

    .line 586
    :goto_5
    return v0

    .line 564
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 586
    :goto_d
    const/4 v0, 0x1

    goto :goto_5

    .line 566
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->startTrackingTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 569
    :pswitch_13
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIsTrackingEvent:Z

    if-nez v0, :cond_1e

    .line 571
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->startTrackingTouchEvent(Landroid/view/MotionEvent;)V

    .line 575
    :goto_1a
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->attemptClaimDrag()V

    goto :goto_d

    .line 573
    :cond_1e
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1a

    .line 578
    :pswitch_22
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->dispatchScrubFinished(I)V

    .line 579
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->readAloudCurrentPositionIfAccessibilityEnabled()I

    .line 580
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->finishTrackingTouchEvent()V

    goto :goto_d

    .line 583
    :pswitch_2e
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->finishTrackingTouchEvent()V

    goto :goto_d

    .line 564
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_f
        :pswitch_22
        :pswitch_13
        :pswitch_2e
    .end packed-switch
.end method

.method public sendAccessibilityEventWithText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "textToAnnounce"

    .prologue
    .line 668
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 670
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 673
    return-void
.end method

.method public setOnScrubListener(Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    .line 225
    return-void
.end method

.method public setPosition(I)V
    .registers 5
    .parameter "itemIndex"

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 257
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    if-ne v0, p1, :cond_16

    .line 272
    :goto_15
    return-void

    .line 262
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iput p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->chapterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v1, p1, v2}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getCalloutChapterLabel(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->pageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v1, p1, v2}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getCalloutPageLabelLong(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    goto :goto_15
.end method

.method public setResources(Lcom/google/android/apps/books/widget/ScrubBar$Resources;)V
    .registers 6
    .parameter "resources"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    .line 193
    iget-object v1, p1, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->maskView:Landroid/view/View;

    .line 194
    .local v1, maskView:Landroid/view/View;
    if-eqz v1, :cond_e

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 199
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_e
    iget-object v2, p1, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 200
    iget-object v2, p1, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_19
    return-void
.end method

.method public setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, index:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;,"Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex<**>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScrubTrackView;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->requestLayout()V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mResources:Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->invalidate()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 221
    return-void
.end method

.method public setTabletMode(Z)V
    .registers 2
    .parameter "tabletMode"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTabletMode:Z

    .line 210
    return-void
.end method

.method public setUndoPosition(I)V
    .registers 2
    .parameter "itemIndex"

    .prologue
    .line 232
    iput p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 234
    return-void
.end method
