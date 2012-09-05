.class public Lcom/android/task/TaskViewActivity;
.super Landroid/app/Activity;
.source "TaskViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskViewActivity$AnimListener;
    }
.end annotation


# instance fields
.field final HORIZONTAL_FLING_THRESHOLD:I

.field final REMINDER_CUSTOMIZE:I

.field final REMINDER_OFF:I

.field final REMINDER_ON_DUE_DATE:I

.field final REMINDER_ON_START_DATE:I

.field private mAccountColor:Landroid/widget/ImageView;

.field private mAccountTextView:Landroid/widget/TextView;

.field private mAnimFrame:Landroid/widget/LinearLayout;

.field private mBackgroundFrame:Landroid/widget/LinearLayout;

.field private mCompleteCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/Long;

.field private mDetailInfoContainer:Landroid/view/View;

.field private mDueDate:Ljava/lang/Long;

.field private mDueDateView:Landroid/widget/TextView;

.field private mDueMillis:Ljava/lang/Long;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mIdIndex:I

.field private mIsAnimating:Z

.field private mNoteTextView:Landroid/widget/TextView;

.field private mPriorityIconSet:Landroid/widget/ImageView;

.field private mPriority_drawables:[I

.field private mReminderItems:[Ljava/lang/CharSequence;

.field private mReminderMillis:J

.field private mReminderTimeTextView:Landroid/widget/TextView;

.field private mReminderType:I

.field private mReminderTypeTextView:Landroid/widget/TextView;

.field private mSelectedId:J

.field private mSortedTaskIds:[I

.field private mStartDateTextView:Landroid/widget/TextView;

.field private mStartMillis:Ljava/lang/Long;

.field private mSubject:Ljava/lang/String;

.field private mSubjectTextView:Landroid/widget/TextView;

.field private mTaskListCompleteImage:Landroid/view/View;

.field private mViewContainer:Landroid/view/View;

.field private mViewTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput v2, p0, Lcom/android/task/TaskViewActivity;->REMINDER_OFF:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/task/TaskViewActivity;->REMINDER_ON_START_DATE:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/task/TaskViewActivity;->REMINDER_ON_DUE_DATE:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/task/TaskViewActivity;->REMINDER_CUSTOMIZE:I

    .line 65
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/task/TaskViewActivity;->HORIZONTAL_FLING_THRESHOLD:I

    .line 68
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mDate:Ljava/lang/Long;

    .line 70
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mDueDate:Ljava/lang/Long;

    .line 71
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mStartMillis:Ljava/lang/Long;

    .line 72
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    .line 73
    iput-wide v3, p0, Lcom/android/task/TaskViewActivity;->mReminderMillis:J

    .line 74
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    .line 75
    iput v2, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    .line 76
    iput-wide v3, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    .line 77
    iput v2, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    .line 78
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    .line 79
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mReminderItems:[Ljava/lang/CharSequence;

    .line 80
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mPriority_drawables:[I

    .line 82
    iput-boolean v2, p0, Lcom/android/task/TaskViewActivity;->mIsAnimating:Z

    .line 85
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    .line 86
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mDetailInfoContainer:Landroid/view/View;

    .line 87
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    .line 88
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    .line 89
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    .line 90
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mAccountColor:Landroid/widget/ImageView;

    .line 91
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mAccountTextView:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mStartDateTextView:Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mDueDateView:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mReminderTimeTextView:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;

    .line 98
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    .line 99
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mAnimFrame:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    .line 641
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/task/TaskViewActivity$4;

    invoke-direct {v2, p0}, Lcom/android/task/TaskViewActivity$4;-><init>(Lcom/android/task/TaskViewActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->editTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/task/TaskViewActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/task/TaskViewActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/task/TaskViewActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/task/TaskViewActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/task/TaskViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->initDdayView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/task/TaskViewActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/task/TaskViewActivity;->saveCompleteState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/task/TaskViewActivity;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskViewActivity;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/task/TaskViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/task/TaskViewActivity;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/task/TaskViewActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private deleteTask()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 566
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 567
    .local v0, extra:Landroid/os/Bundle;
    const-string v5, "selected"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 568
    .local v2, selectedId:J
    sget-object v5, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 569
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 571
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 573
    const-string v5, "GATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<GATE-M>TASK_DELETED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " </GATE-M>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_40
    return-void
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 649
    const-string v1, "TaskViewActivity"

    const-string v3, "doFling"

    invoke-static {v1, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p1, :cond_e

    if-nez p2, :cond_6f

    .line 652
    :cond_e
    const-string v1, "TaskViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e1= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v1, "TaskViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v1, "TaskViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocityX= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v1, "TaskViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocityY= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_6e
    :goto_6e
    return v0

    .line 660
    :cond_6f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 661
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 662
    const/16 v4, 0x32

    if-lt v1, v4, :cond_6e

    if-lt v1, v3, :cond_6e

    .line 666
    iget-boolean v1, p0, Lcom/android/task/TaskViewActivity;->mIsAnimating:Z

    if-nez v1, :cond_6e

    .line 670
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    if-eqz v1, :cond_6e

    .line 674
    cmpg-float v1, p3, v6

    if-gez v1, :cond_a8

    iget v1, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6e

    .line 676
    :cond_a8
    cmpl-float v1, p3, v6

    if-lez v1, :cond_b0

    iget v1, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    if-lez v1, :cond_6e

    .line 680
    :cond_b0
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 685
    new-instance v3, Lcom/android/task/TaskViewActivity$AnimListener;

    invoke-direct {v3, p0}, Lcom/android/task/TaskViewActivity$AnimListener;-><init>(Lcom/android/task/TaskViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 686
    new-instance v3, Lcom/android/task/TaskViewActivity$AnimListener;

    invoke-direct {v3, p0}, Lcom/android/task/TaskViewActivity$AnimListener;-><init>(Lcom/android/task/TaskViewActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 689
    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 690
    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 691
    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 692
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 693
    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    cmpg-float v3, p3, v6

    if-gez v3, :cond_107

    .line 696
    iget v1, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    .line 703
    :goto_f9
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->getNextId()V

    .line 704
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->reloadTask()V

    .line 705
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mAnimFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v2

    .line 706
    goto/16 :goto_6e

    .line 699
    :cond_107
    iget v0, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    move-object v0, v1

    .line 700
    goto :goto_f9
.end method

.method private editTask()V
    .registers 5

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/task/TaskEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const-string v1, "selected"

    iget-wide v2, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method

.method private findViews()V
    .registers 2

    .prologue
    .line 235
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    .line 238
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mDetailInfoContainer:Landroid/view/View;

    .line 241
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    .line 247
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    .line 250
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mAccountColor:Landroid/widget/ImageView;

    .line 251
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mAccountTextView:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mStartDateTextView:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mDueDateView:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTimeTextView:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;

    .line 268
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    .line 271
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mAnimFrame:Landroid/widget/LinearLayout;

    .line 272
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mBackgroundFrame:Landroid/widget/LinearLayout;

    .line 273
    return-void
.end method

.method private getAccountTranslatedName(ILandroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    if-eqz p2, :cond_19

    if-lez p1, :cond_19

    .line 741
    const-string v0, "accountName"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 742
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_19
    return-object v0
.end method

.method private getNextId()V
    .registers 4

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    iget v2, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    aget v1, v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 537
    :goto_9
    return-void

    .line 534
    :catch_a
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_9
.end method

.method private getNote()Ljava/lang/String;
    .registers 4

    .prologue
    .line 610
    const-string v0, "TaskViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubject()Ljava/lang/String;
    .registers 4

    .prologue
    .line 605
    const-string v0, "TaskViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDdayView()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const v12, 0x7f0c0032

    .line 418
    iget-object v8, p0, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    if-eqz v8, :cond_60

    .line 420
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 421
    .local v6, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 422
    .local v4, now:J
    invoke-virtual {v6, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 423
    iget-wide v8, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v7

    .line 424
    .local v7, today:I
    iget-object v8, p0, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 425
    iget-object v8, p0, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v3

    .line 427
    .local v3, dueDay:I
    if-lt v3, v7, :cond_5c

    .line 428
    sub-int v1, v3, v7

    .line 429
    .local v1, dday:I
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, dMinusString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, ddayStr:Ljava/lang/String;
    invoke-direct {p0, v12, v2}, Lcom/android/task/TaskViewActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 435
    const/4 v8, 0x0

    invoke-direct {p0, v12, v8}, Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V

    .line 443
    .end local v0           #dMinusString:Ljava/lang/String;
    .end local v1           #dday:I
    .end local v2           #ddayStr:Ljava/lang/String;
    .end local v3           #dueDay:I
    .end local v4           #now:J
    .end local v6           #tempTime:Landroid/text/format/Time;
    .end local v7           #today:I
    :goto_5b
    return-void

    .line 437
    .restart local v3       #dueDay:I
    .restart local v4       #now:J
    .restart local v6       #tempTime:Landroid/text/format/Time;
    .restart local v7       #today:I
    :cond_5c
    invoke-direct {p0, v12, v13}, Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V

    goto :goto_5b

    .line 441
    .end local v3           #dueDay:I
    .end local v4           #now:J
    .end local v6           #tempTime:Landroid/text/format/Time;
    .end local v7           #today:I
    :cond_60
    invoke-direct {p0, v12, v13}, Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V

    goto :goto_5b
.end method

.method private initIdIndex()V
    .registers 6

    .prologue
    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 226
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    aget v1, v1, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    .line 227
    iput v0, p0, Lcom/android/task/TaskViewActivity;->mIdIndex:I

    .line 231
    :cond_13
    return-void

    .line 225
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initReminderView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 397
    iget-wide v0, p0, Lcom/android/task/TaskViewActivity;->mReminderMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 398
    iput v5, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    .line 401
    :cond_b
    iget v0, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    if-nez v0, :cond_2a

    .line 402
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTimeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    :goto_16
    iget v0, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 409
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/task/TaskViewActivity;->mReminderMillis:J

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_29
    return-void

    .line 404
    :cond_2a
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTimeTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/task/TaskViewActivity;->mReminderMillis:J

    iget-object v3, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/task/Utils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 410
    :cond_3d
    iget v0, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    if-nez v0, :cond_4d

    .line 411
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mReminderItems:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 413
    :cond_4d
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/task/TaskViewActivity;->mReminderItems:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/task/TaskViewActivity;->mReminderType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method private initSubjectView()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 391
    :cond_12
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    .line 393
    :cond_21
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 616
    new-instance v1, Lcom/android/task/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/task/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 618
    invoke-virtual {v1}, Lcom/android/task/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    .line 638
    :cond_12
    :goto_12
    return-object v0

    .line 624
    :cond_13
    const-string v2, "Task.vts"

    .line 625
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 628
    const/4 v3, 0x1

    :try_start_1a
    invoke-virtual {p0, v2, v3}, Lcom/android/task/TaskViewActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 629
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 630
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 632
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_12

    .line 634
    :catch_32
    move-exception v1

    .line 635
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private printTask()V
    .registers 4

    .prologue
    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "android.intent.extra.TEXT"

    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 602
    return-void
.end method

.method private reloadTask()V
    .registers 26

    .prologue
    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 279
    .local v14, r:Landroid/content/res/Resources;
    sget-object v18, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 280
    .local v17, uri:Landroid/net/Uri;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/task/TaskViewActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-nez v18, :cond_2b

    .line 387
    :goto_2a
    return-void

    .line 284
    :cond_2b
    const/4 v5, 0x0

    .line 287
    .local v5, colIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDetailInfoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/task/TaskViewActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/task/TaskViewActivity$1;-><init>(Lcom/android/task/TaskViewActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const-string v18, "subject"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 297
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mSubject:Ljava/lang/String;

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/task/TaskViewActivity;->initSubjectView()V

    .line 302
    const-string v18, "importance"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 303
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 304
    .local v13, priority:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mPriority_drawables:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 307
    const-string v18, "accountKey"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 308
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 309
    .local v16, taskIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mAccountColor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mAccountTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/android/task/TaskViewActivity;->getAccountTranslatedName(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v18, 0x7f0a0003

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, start:Ljava/lang/String;
    const-string v18, "start_date"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 315
    invoke-interface {v8, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1d2

    .line 316
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mStartMillis:Ljava/lang/Long;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mStartDateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mAccountColor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x9

    const/16 v21, 0x58

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :goto_e0
    const v18, 0x7f0a0004

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, due:Ljava/lang/String;
    const-string v18, "due_date"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 335
    invoke-interface {v8, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    .line 336
    .local v6, colIndexDueDateNull:Z
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mDueDate:Ljava/lang/Long;

    .line 338
    invoke-interface {v8, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_264

    .line 339
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDueDateView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_12b
    invoke-direct/range {p0 .. p0}, Lcom/android/task/TaskViewActivity;->initDdayView()V

    .line 352
    const-string v18, "reminder_type"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 353
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/task/TaskViewActivity;->mReminderType:I

    .line 355
    const-string v18, "reminder_time"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 356
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/task/TaskViewActivity;->mReminderMillis:J

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/task/TaskViewActivity;->initReminderView()V

    .line 361
    const-string v18, "body"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 362
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    check-cast v10, Lcom/android/task/TaskTextView;

    .line 364
    .local v10, mTextView:Lcom/android/task/TaskTextView;
    if-eqz v6, :cond_2ae

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mDate:Ljava/lang/Long;

    .line 366
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDate:Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/android/task/TaskTextView;->setTextEX(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    .line 373
    :goto_184
    const-string v18, "complete"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 374
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2cd

    const/4 v7, 0x1

    .line 376
    .local v7, complete:Z
    :goto_199
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/task/TaskViewActivity;->setCompleteTitleView(Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 379
    .local v11, newConfig:Landroid/content/res/Configuration;
    iget v0, v11, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f02001b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f020036

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2a

    .line 321
    .end local v6           #colIndexDueDateNull:Z
    .end local v7           #complete:Z
    .end local v9           #due:Ljava/lang/String;
    .end local v10           #mTextView:Lcom/android/task/TaskTextView;
    .end local v11           #newConfig:Landroid/content/res/Configuration;
    :cond_1d2
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mStartMillis:Ljava/lang/Long;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mStartDateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mStartMillis:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v24}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mStartDateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mAccountColor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x9

    const/16 v21, 0x74

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v12, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x14

    const/16 v19, 0x1a

    const/16 v20, 0x7

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mNoteTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e0

    .line 342
    .end local v12           #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6       #colIndexDueDateNull:Z
    .restart local v9       #due:Ljava/lang/String;
    :cond_264
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDueDateView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDueMillis:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v24}, Lcom/android/task/Utils;->getDateString(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12b

    .line 368
    .restart local v10       #mTextView:Lcom/android/task/TaskTextView;
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDueDate:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskViewActivity;->mDate:Ljava/lang/Long;

    .line 369
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mDate:Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/android/task/TaskTextView;->setTextEX(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    goto/16 :goto_184

    .line 374
    :cond_2cd
    const/4 v7, 0x0

    goto/16 :goto_199

    .line 383
    .restart local v7       #complete:Z
    .restart local v11       #newConfig:Landroid/content/res/Configuration;
    :cond_2d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f02001e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f020037

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2a
.end method

.method private saveCompleteState(I)V
    .registers 8
    .parameter "checked"

    .prologue
    const/4 v5, 0x0

    .line 520
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v0, taskData:Landroid/content/ContentValues;
    const-string v2, "complete"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    const-string v2, "date_completed"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 527
    sget-object v2, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 528
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method private setArrays()V
    .registers 5

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mReminderItems:[Ljava/lang/CharSequence;

    .line 217
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/task/TaskViewActivity;->mPriority_drawables:[I

    .line 218
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mPriority_drawables:[I

    const/4 v2, 0x0

    const v3, 0x7f020028

    aput v3, v1, v2

    .line 220
    iget-object v1, p0, Lcom/android/task/TaskViewActivity;->mPriority_drawables:[I

    const/4 v2, 0x2

    const v3, 0x7f020027

    aput v3, v1, v2

    .line 222
    return-void
.end method

.method private setCompleteTitleView(Z)V
    .registers 10
    .parameter "complete"

    .prologue
    const/16 v7, 0x8

    .line 446
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 448
    .local v2, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 451
    .local v1, p:Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 454
    .local v3, subjectText:Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 457
    .local v4, textWidth:I
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 458
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 468
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    if-eqz p1, :cond_71

    .line 472
    const v5, 0x7f0c0032

    invoke-direct {p0, v5, v7}, Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V

    .line 473
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    const v6, 0x7f07000c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :goto_5c
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/task/TaskViewActivity$2;

    invoke-direct {v6, p0, v2}, Lcom/android/task/TaskViewActivity$2;-><init>(Lcom/android/task/TaskViewActivity;Landroid/content/res/Resources;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 508
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    new-instance v6, Lcom/android/task/TaskViewActivity$3;

    invoke-direct {v6, p0}, Lcom/android/task/TaskViewActivity$3;-><init>(Lcom/android/task/TaskViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    return-void

    .line 478
    :cond_71
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->initDdayView()V

    .line 479
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;

    const v6, 0x7f070008

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v5, p0, Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5c
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "id"
    .parameter "text"

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 540
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 544
    :goto_8
    return-void

    .line 543
    :cond_9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setVisibilityCommon(II)V
    .registers 4
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/android/task/TaskViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 549
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_9
    return-void
.end method

.method private shareTask()V
    .registers 10

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 580
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 581
    .local v1, extra:Landroid/os/Bundle;
    const-string v8, "selected"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 583
    .local v3, mTaskID:J
    sget-object v8, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 584
    .local v6, uri:Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcom/android/task/TaskViewActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 585
    .local v7, vcal:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v5, sendIntent:Landroid/content/Intent;
    const-string v8, "text/x-vtodo"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.TASK_SEND_CHOOSER"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, chooserIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/task/TaskViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 594
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 152
    const-string v0, "TaskViewActivity"

    const-string v1, "======== onConfigurationChanged(Configuration newConfig) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 154
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    :goto_1c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    return-void

    .line 158
    :cond_20
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewContainer:Landroid/view/View;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mViewTitleView:Landroid/view/View;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const-string v2, "TaskViewActivity"

    const-string v3, "======== onCreate ========"

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iput-object p0, p0, Lcom/android/task/TaskViewActivity;->mContext:Landroid/content/Context;

    .line 111
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/android/task/TaskViewActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, extra:Landroid/os/Bundle;
    const-string v2, "sortedIds"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    .line 117
    const-string v2, "selected"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/task/TaskViewActivity;->mSelectedId:J

    .line 119
    iget-object v2, p0, Lcom/android/task/TaskViewActivity;->mSortedTaskIds:[I

    if-nez v2, :cond_39

    .line 120
    const-string v2, "TaskViewActivity"

    const-string v3, "mSortedTaskIds is null, finish"

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->finish()V

    .line 128
    :goto_38
    return-void

    .line 125
    :cond_39
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->setArrays()V

    .line 126
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->initIdIndex()V

    .line 127
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->findViews()V

    goto :goto_38
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 169
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 208
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 186
    :pswitch_d
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->editTask()V

    goto :goto_c

    .line 195
    :pswitch_11
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->deleteTask()V

    .line 196
    invoke-virtual {p0}, Lcom/android/task/TaskViewActivity;->finish()V

    goto :goto_c

    .line 199
    :pswitch_18
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->shareTask()V

    goto :goto_c

    .line 202
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->printTask()V

    goto :goto_c

    .line 184
    :pswitch_data_20
    .packed-switch 0x7f0c0055
        :pswitch_11
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_d
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 140
    const-string v0, "TaskViewActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 132
    const-string v0, "TaskViewActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/android/task/TaskViewActivity;->reloadTask()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/task/TaskViewActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 713
    const/4 v0, 0x1

    return v0
.end method
