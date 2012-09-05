.class public Lcom/android/task/TaskEditActivity;
.super Landroid/app/Activity;
.source "TaskEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskEditActivity$TaskInputFilter;
    }
.end annotation


# static fields
.field public static final CONTENT_URI1:Landroid/net/Uri;


# instance fields
.field private dateAlert:Landroid/app/DatePickerDialog;

.field private isStartDate:Z

.field private mAccountKey:I

.field private mAccountName:Ljava/lang/String;

.field mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/task/TaskAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mBSaveExitFlg:Z

.field private mCompleted:I

.field private mContext:Landroid/content/Context;

.field private mDateButton:Landroid/widget/TextView;

.field private mDueDateButton:Landroid/widget/Button;

.field private mDueDateButtonMillis:J

.field private mDueMillis:Ljava/lang/Long;

.field private mMenu:Landroid/view/Menu;

.field private mMode:I

.field private mNote:Ljava/lang/String;

.field private mNoteEditText:Landroid/widget/EditText;

.field private mPriority:I

.field private mPriorityContainer:Landroid/view/View;

.field private mPriorityDialogEnable:Z

.field private mPriorityDialogItems:[Ljava/lang/CharSequence;

.field private mPriorityIconSet:Landroid/widget/ImageView;

.field private mPriorityTextSet:Landroid/widget/TextView;

.field private mPriority_drawables:[I

.field private mPriority_items:[Ljava/lang/CharSequence;

.field private mReminderContainer:Landroid/view/View;

.field private mReminderLineView:Landroid/view/View;

.field private mReminderMillis:J

.field private mReminderTimeButton:Landroid/widget/Button;

.field private mReminderType:I

.field private mReminderTypeTextView:Landroid/widget/TextView;

.field private mReminder_items:[Ljava/lang/CharSequence;

.field private mSelectedId:J

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartDateButtonMillis:J

.field private mStartDateContainer:Landroid/view/View;

.field private mStartDateLineView:Landroid/view/View;

.field private mStartMillis:Ljava/lang/Long;

.field private mSubject:Ljava/lang/String;

.field private mSubjectEditText:Landroid/widget/EditText;

.field private mTaskAccountCount:I

.field private mTaskAccountIconSet:Landroid/widget/ImageView;

.field private mTaskAccountTypeTextSet:Landroid/widget/TextView;

.field private mTaskContainer:Landroid/view/View;

.field private mTask_account_items:[Ljava/lang/String;

.field private mTimeButton:Landroid/widget/TextView;

.field private priorityDialog:Landroid/app/AlertDialog;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reminderDialog:Landroid/app/AlertDialog;

.field private reminderSetOnDueDate:Z

.field private reminderSetOnStartDate:Z

.field private taskDialog:Landroid/app/AlertDialog;

.field private timeAlert:Landroid/app/TimePickerDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "content://tasks/tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskEditActivity;->CONTENT_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogEnable:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/task/TaskEditActivity;->isStartDate:Z

    .line 97
    iput v2, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    .line 101
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    .line 102
    iput v2, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 104
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    .line 105
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    .line 106
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    .line 107
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    .line 108
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    .line 109
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    .line 110
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderLineView:Landroid/view/View;

    .line 111
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    .line 112
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderContainer:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriorityContainer:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mTaskContainer:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriorityTextSet:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    .line 120
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;

    .line 121
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogItems:[Ljava/lang/CharSequence;

    .line 122
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriority_drawables:[I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    .line 127
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    .line 129
    iput v2, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountTypeTextSet:Landroid/widget/TextView;

    .line 133
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountIconSet:Landroid/widget/ImageView;

    .line 134
    iput v2, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountCount:I

    .line 136
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 138
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 140
    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    .line 141
    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    .line 142
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 143
    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mSelectedId:J

    .line 145
    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 148
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    .line 149
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mTimeButton:Landroid/widget/TextView;

    .line 151
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    .line 152
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mMenu:Landroid/view/Menu;

    .line 153
    iput-boolean v2, p0, Lcom/android/task/TaskEditActivity;->mBSaveExitFlg:Z

    .line 155
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    .line 156
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->timeAlert:Landroid/app/TimePickerDialog;

    .line 157
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->reminderDialog:Landroid/app/AlertDialog;

    .line 158
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->taskDialog:Landroid/app/AlertDialog;

    .line 159
    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    .line 162
    iput v2, p0, Lcom/android/task/TaskEditActivity;->mCompleted:I

    .line 1427
    return-void
.end method

.method private ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    .registers 7
    .parameter "time"
    .parameter "Millis"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 1466
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1467
    iput p3, p1, Landroid/text/format/Time;->hour:I

    .line 1468
    iput p4, p1, Landroid/text/format/Time;->minute:I

    .line 1469
    const/4 v0, 0x0

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 1470
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1471
    return-void
.end method

.method private ReminderSetTimeMillis(JLjava/lang/Long;)V
    .registers 8
    .parameter "ReminderMillis"
    .parameter "Millis"

    .prologue
    .line 1474
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1475
    .local v0, reminderTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1477
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1479
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1480
    iget v2, v0, Landroid/text/format/Time;->hour:I

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 1481
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iput v2, v1, Landroid/text/format/Time;->minute:I

    .line 1482
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->second:I

    .line 1483
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1484
    return-void
.end method

.method private ReminderTypeSetItem(I)V
    .registers 6
    .parameter "mReminderType"

    .prologue
    const/4 v1, 0x0

    .line 1487
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 1488
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    .line 1489
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->dialogDatePicker(J)V

    .line 1531
    :cond_d
    :goto_d
    return-void

    .line 1491
    :cond_e
    packed-switch p1, :pswitch_data_a0

    .line 1527
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1493
    :pswitch_1d
    iget-boolean v0, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z

    if-eqz v0, :cond_3b

    .line 1494
    iput-boolean v1, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z

    .line 1495
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    if-eqz v0, :cond_2f

    .line 1496
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1498
    :cond_2f
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1500
    :cond_3b
    iget-boolean v0, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z

    if-eqz v0, :cond_d

    .line 1501
    iput-boolean v1, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z

    .line 1502
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-eqz v0, :cond_4d

    .line 1503
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1505
    :cond_4d
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1511
    :pswitch_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1512
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroSec(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1514
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/task/Utils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto :goto_d

    .line 1519
    :pswitch_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1520
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroSec(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 1522
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/task/Utils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/task/TaskEditActivity;->ReminderSetTimeMillis(JLjava/lang/Long;)V

    goto/16 :goto_d

    .line 1491
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_59
        :pswitch_7c
    .end packed-switch
.end method

.method private ZeroHMS(J)J
    .registers 7
    .parameter "millisec"

    .prologue
    const/4 v3, 0x0

    .line 881
    const-wide/16 v0, 0x0

    .line 883
    .local v0, rtsec:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 884
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 885
    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 886
    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 887
    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 888
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 890
    return-wide v0
.end method

.method private ZeroSec(J)J
    .registers 7
    .parameter "millisec"

    .prologue
    const/4 v3, 0x0

    .line 868
    const-wide/16 v0, 0x0

    .line 870
    .local v0, rtsec:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 871
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 872
    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 873
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 875
    return-wide v0
.end method

.method static synthetic access$000(Lcom/android/task/TaskEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initReminderView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/task/TaskEditActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/task/TaskEditActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/task/TaskEditActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/task/TaskEditActivity;)Landroid/app/DatePickerDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/task/TaskEditActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/task/TaskEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/task/TaskEditActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/task/TaskEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTimeButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/task/TaskEditActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskEditActivity;->dialogDatePicker(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/task/TaskEditActivity;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/task/TaskEditActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/task/TaskEditActivity;->ReminderTypeSetItem(I)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/task/TaskEditActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/task/TaskEditActivity;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/task/TaskEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->setPriorityView()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/task/TaskEditActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/task/TaskEditActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/task/TaskEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/task/TaskEditActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/task/TaskEditActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountIconSet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/task/TaskEditActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/task/TaskEditActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountTypeTextSet:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/task/TaskEditActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/task/TaskEditActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/task/TaskEditActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/task/TaskEditActivity;->updateNoDueDateStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/task/TaskEditActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/task/TaskEditActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/task/TaskEditActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/task/TaskEditActivity;->mBSaveExitFlg:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/task/TaskEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/task/TaskEditActivity;->mBSaveExitFlg:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/task/TaskEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->saveTask()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/task/TaskEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->hideSoftInput()V

    return-void
.end method

.method private dialogDatePicker(J)V
    .registers 5
    .parameter "timeMillis"

    .prologue
    .line 1068
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1069
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1071
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1074
    :goto_14
    return-void

    .line 1073
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/task/TaskEditActivity;->dialogDatePicker(Landroid/text/format/Time;)V

    goto :goto_14
.end method

.method private dialogDatePicker(Landroid/text/format/Time;)V
    .registers 9
    .parameter "time"

    .prologue
    .line 1078
    new-instance v2, Lcom/android/task/TaskEditActivity$11;

    invoke-direct {v2, p0}, Lcom/android/task/TaskEditActivity$11;-><init>(Lcom/android/task/TaskEditActivity;)V

    .line 1174
    .local v2, mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v6, Lcom/android/task/TaskEditActivity$12;

    invoke-direct {v6, p0}, Lcom/android/task/TaskEditActivity$12;-><init>(Lcom/android/task/TaskEditActivity;)V

    .line 1183
    .local v6, mDateChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;
    new-instance v0, Lcom/android/task/TwDatePickerDialog;

    iget v3, p1, Landroid/text/format/Time;->year:I

    iget v4, p1, Landroid/text/format/Time;->month:I

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/task/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    .line 1184
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v3, p1, Landroid/text/format/Time;->month:I

    iget v4, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1186
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/task/Utils;->getDateStringForDatePickerHeader(Landroid/text/format/Time;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->dateAlert:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 1189
    :cond_3d
    return-void
.end method

.method private dialogPrioritySelectOption()V
    .registers 5

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1370
    :cond_c
    :goto_c
    return-void

    .line 1347
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1349
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1350
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    sub-int/2addr v2, v3

    new-instance v3, Lcom/android/task/TaskEditActivity$16;

    invoke-direct {v3, p0}, Lcom/android/task/TaskEditActivity$16;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1359
    const v1, 0x7f0a0011

    new-instance v2, Lcom/android/task/TaskEditActivity$17;

    invoke-direct {v2, p0}, Lcom/android/task/TaskEditActivity$17;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1367
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    goto :goto_c
.end method

.method private dialogReminderTypeSelectOption()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1250
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->reminderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->reminderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1340
    :cond_10
    :goto_10
    return-void

    .line 1252
    :cond_11
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1253
    const v0, 0x7f0a0008

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1257
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    if-nez v0, :cond_7d

    .line 1258
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-eqz v0, :cond_63

    .line 1259
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 1260
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    aput-object v0, v1, v4

    .line 1261
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v5

    aput-object v0, v1, v6

    .line 1262
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v3

    aput-object v0, v1, v5

    .line 1263
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 1282
    :goto_3e
    new-instance v3, Lcom/android/task/TaskEditActivity$14;

    invoke-direct {v3, p0}, Lcom/android/task/TaskEditActivity$14;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1330
    const v0, 0x7f0a0011

    new-instance v1, Lcom/android/task/TaskEditActivity$15;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$15;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1337
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1338
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->reminderDialog:Landroid/app/AlertDialog;

    goto :goto_10

    .line 1263
    :cond_5e
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 1265
    :cond_63
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 1266
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    aput-object v0, v1, v4

    .line 1267
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v3

    aput-object v0, v1, v6

    .line 1268
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-ne v0, v3, :cond_7a

    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    add-int/lit8 v0, v0, -0x2

    goto :goto_3e

    :cond_7a
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    goto :goto_3e

    .line 1271
    :cond_7d
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-eqz v0, :cond_86

    .line 1272
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    .line 1273
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    goto :goto_3e

    .line 1275
    :cond_86
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 1276
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    aput-object v0, v1, v4

    .line 1277
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v6

    aput-object v0, v1, v6

    .line 1278
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    aget-object v0, v0, v3

    aput-object v0, v1, v5

    .line 1279
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-eq v0, v3, :cond_a2

    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-ne v0, v5, :cond_a7

    :cond_a2
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    :cond_a7
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    goto :goto_3e
.end method

.method private dialogTaskAccount()V
    .registers 5

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->taskDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->taskDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1408
    :cond_c
    :goto_c
    return-void

    .line 1377
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1378
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1379
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    invoke-direct {p0, v2}, Lcom/android/task/TaskEditActivity;->getAccountIndex(I)I

    move-result v2

    new-instance v3, Lcom/android/task/TaskEditActivity$18;

    invoke-direct {v3, p0}, Lcom/android/task/TaskEditActivity$18;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    const v1, 0x7f0a0011

    new-instance v2, Lcom/android/task/TaskEditActivity$19;

    invoke-direct {v2, p0}, Lcom/android/task/TaskEditActivity$19;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1400
    :try_start_33
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->taskDialog:Landroid/app/AlertDialog;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_40

    goto :goto_c

    .line 1403
    :catch_40
    move-exception v0

    .line 1404
    const-string v1, "TaskEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Thrown :::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->finish()V

    goto :goto_c
.end method

.method private dialogTimePicker(Ljava/lang/Long;)V
    .registers 10
    .parameter "millis"

    .prologue
    .line 1192
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1193
    .local v6, time:Landroid/text/format/Time;
    move-object v7, p1

    .line 1194
    .local v7, timeMillis:Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1196
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->timeAlert:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->timeAlert:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1245
    :goto_19
    return-void

    .line 1198
    :cond_1a
    new-instance v2, Lcom/android/task/TaskEditActivity$13;

    invoke-direct {v2, p0, v6, v7}, Lcom/android/task/TaskEditActivity$13;-><init>(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;)V

    .line 1241
    .local v2, mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, v6, Landroid/text/format/Time;->hour:I

    iget v4, v6, Landroid/text/format/Time;->minute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->timeAlert:Landroid/app/TimePickerDialog;

    .line 1243
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->timeAlert:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_19
.end method

.method private findViews()V
    .registers 2

    .prologue
    .line 466
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    .line 469
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    .line 470
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    .line 471
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    .line 474
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    .line 477
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskContainer:Landroid/view/View;

    .line 478
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountTypeTextSet:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountIconSet:Landroid/widget/ImageView;

    .line 482
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityContainer:Landroid/view/View;

    .line 483
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityTextSet:Landroid/widget/TextView;

    .line 484
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    .line 487
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    .line 488
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderContainer:Landroid/view/View;

    .line 490
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderLineView:Landroid/view/View;

    .line 492
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    .line 493
    return-void
.end method

.method private getAccountIndex(I)I
    .registers 4
    .parameter "accountKey"

    .prologue
    .line 1411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1412
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/TaskAccount;

    iget v1, v1, Lcom/android/task/TaskAccount;->key:I

    if-ne v1, p1, :cond_16

    .line 1416
    .end local v0           #i:I
    :goto_15
    return v0

    .line 1411
    .restart local v0       #i:I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1416
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getReminderData()Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 905
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 907
    sget-object v1, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    .line 908
    const-string v2, " _id desc"

    .line 909
    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/task/TaskEditActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 911
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 912
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 913
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 916
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 917
    iget-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 918
    iput v5, v2, Landroid/text/format/Time;->second:I

    .line 919
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 921
    const-string v2, "task_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v1, "reminder_time"

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 923
    const-string v1, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    const-string v1, "start_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 925
    const-string v1, "due_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 926
    const-string v1, "accountkey"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v1, "reminder_type"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    return-object v0
.end method

.method private getTaskData()Landroid/content/ContentValues;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 799
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 802
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 804
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 807
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 808
    :cond_31
    const-string v1, ""

    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 811
    :cond_35
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 812
    :cond_47
    const-string v1, ""

    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 814
    :cond_4b
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, "body"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    if-eqz v1, :cond_e0

    .line 819
    const-string v1, "body_size"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v1, "bodyType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    :goto_75
    const-string v1, "start_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 827
    const-string v1, "utc_start_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    const-string v1, "due_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 831
    const-string v1, "utc_due_date"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 834
    const-string v1, "accountKey"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    if-nez v1, :cond_ea

    .line 837
    const-string v1, "accountName"

    const-string v2, "My task"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_a7
    const-string v1, "importance"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v1, "reminder_type"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-nez v1, :cond_f2

    .line 848
    const-string v1, "reminder_set"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v1, "reminder_time"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    :goto_d4
    const-string v1, "complete"

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mCompleted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    return-object v0

    .line 822
    :cond_e0
    const-string v1, "body_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_75

    .line 839
    :cond_ea
    const-string v1, "accountName"

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 851
    :cond_f2
    const-string v1, "reminder_set"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v1, "reminder_time"

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_d4
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 1534
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1535
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_16

    .line 1536
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1538
    :cond_16
    return-void
.end method

.method private initDueDateView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 532
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/task/TaskEditActivity$3;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$3;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-nez v0, :cond_29

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    .line 542
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroHMS(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    .line 546
    :goto_1d
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    invoke-static {v1, v2, v3, v3, p0}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void

    .line 544
    :cond_29
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    goto :goto_1d
.end method

.method private initNoDueDateView()V
    .registers 3

    .prologue
    .line 550
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, noDueDateContainer:Landroid/view/View;
    new-instance v1, Lcom/android/task/TaskEditActivity$4;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$4;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_14
    invoke-direct {p0, v1}, Lcom/android/task/TaskEditActivity;->updateNoDueDateStatus(Z)V

    .line 567
    return-void

    .line 566
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private initNoteView()V
    .registers 6

    .prologue
    .line 661
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 663
    .local v1, noteLen:I
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 666
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 668
    new-instance v0, Lcom/android/task/TaskEditActivity$TaskInputFilter;

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v2}, Lcom/android/task/TaskEditActivity$TaskInputFilter;-><init>(Lcom/android/task/TaskEditActivity;I)V

    .line 669
    .local v0, filter:Lcom/android/task/TaskEditActivity$TaskInputFilter;
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 670
    return-void
.end method

.method private initPriorityView()V
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityContainer:Landroid/view/View;

    new-instance v1, Lcom/android/task/TaskEditActivity$6;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$6;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->setPriorityView()V

    .line 623
    return-void
.end method

.method private initReminderView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 627
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/task/Utils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/task/TaskEditActivity$7;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$7;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-nez v0, :cond_46

    .line 636
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 644
    :goto_29
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 645
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v4, v4, v3}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :goto_3b
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderContainer:Landroid/view/View;

    new-instance v1, Lcom/android/task/TaskEditActivity$8;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$8;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    return-void

    .line 640
    :cond_46
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_29

    .line 647
    :cond_51
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b
.end method

.method private initStartDateView()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 508
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/task/TaskEditActivity$2;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$2;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    if-nez v0, :cond_2b

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    .line 518
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroHMS(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    .line 520
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :goto_2a
    return-void

    .line 523
    :cond_2b
    iput-boolean v3, p0, Lcom/android/task/TaskEditActivity;->isStartDate:Z

    .line 524
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    .line 525
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    invoke-static {v1, v2, v3, v3, p0}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a
.end method

.method private initSubjectView()V
    .registers 6

    .prologue
    .line 496
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 498
    .local v1, subjectLen:I
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 501
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 503
    new-instance v0, Lcom/android/task/TaskEditActivity$TaskInputFilter;

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v2}, Lcom/android/task/TaskEditActivity$TaskInputFilter;-><init>(Lcom/android/task/TaskEditActivity;I)V

    .line 504
    .local v0, filter:Lcom/android/task/TaskEditActivity$TaskInputFilter;
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 505
    return-void
.end method

.method private initTaskAccountView()V
    .registers 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskContainer:Landroid/view/View;

    new-instance v1, Lcom/android/task/TaskEditActivity$5;

    invoke-direct {v1, p0}, Lcom/android/task/TaskEditActivity$5;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    if-nez v0, :cond_1b

    .line 605
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 609
    :cond_1b
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountTypeTextSet:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountIconSet:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    invoke-static {v1, v2}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 611
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initSubjectView()V

    .line 690
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initStartDateView()V

    .line 693
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initDueDateView()V

    .line 696
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initNoDueDateView()V

    .line 699
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initTaskAccountView()V

    .line 702
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initPriorityView()V

    .line 705
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initReminderView()V

    .line 708
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initNoteView()V

    .line 711
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 712
    .local v1, saveButton:Landroid/widget/Button;
    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 713
    new-instance v2, Lcom/android/task/TaskEditActivity$9;

    invoke-direct {v2, p0}, Lcom/android/task/TaskEditActivity$9;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 726
    .local v0, cancelButton:Landroid/widget/Button;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 727
    new-instance v2, Lcom/android/task/TaskEditActivity$10;

    invoke-direct {v2, p0}, Lcom/android/task/TaskEditActivity$10;-><init>(Lcom/android/task/TaskEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-boolean v2, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogEnable:Z

    if-eqz v2, :cond_4d

    .line 737
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->dialogPrioritySelectOption()V

    .line 740
    :cond_4d
    return-void
.end method

.method private isEmpty()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 769
    :cond_11
    :goto_11
    return v2

    .line 764
    :cond_12
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, location:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_11

    .line 769
    const/4 v2, 0x1

    goto :goto_11
.end method

.method private reloadAccounts()V
    .registers 8

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/task/TaskAccount;->getAccounts(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    .line 238
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    if-nez v3, :cond_f

    .line 255
    :cond_e
    return-void

    .line 241
    :cond_f
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountCount:I

    .line 242
    iget v3, p0, Lcom/android/task/TaskEditActivity;->mTaskAccountCount:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, i:I
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskAccount;

    .line 247
    .local v0, account:Lcom/android/task/TaskAccount;
    if-nez v1, :cond_45

    .line 249
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 253
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 251
    :cond_45
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    iget-object v4, v0, Lcom/android/task/TaskAccount;->syncAccount:Ljava/lang/String;

    aput-object v4, v3, v1

    goto :goto_42
.end method

.method private saveTask()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 775
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->hideSoftInput()V

    .line 776
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->getTaskData()Landroid/content/ContentValues;

    move-result-object v0

    .line 777
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    if-nez v1, :cond_66

    .line 778
    const-string v1, "_sync_dirty"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 781
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-eqz v1, :cond_31

    .line 782
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->getReminderData()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 784
    :cond_31
    if-eqz v0, :cond_57

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 786
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>TASK_CREATED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_57
    :goto_57
    const v0, 0x7f0a000e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 795
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->finish()V

    .line 796
    return-void

    .line 789
    :cond_66
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    if-ne v1, v2, :cond_57

    .line 790
    sget-object v1, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mSelectedId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 791
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_57
.end method

.method private setPriorityView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityTextSet:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 676
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityTextSet:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 678
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mPriority_drawables:[I

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 683
    :goto_26
    return-void

    .line 680
    :cond_27
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityIconSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityTextSet:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_26
.end method

.method private setValueDefault()V
    .registers 9

    .prologue
    const/16 v7, 0x7f4

    const/16 v6, 0x76e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    iput v4, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    .line 345
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/task/TaskEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    const-string v2, ""

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 348
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 352
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 353
    .local v0, dueTime:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 354
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 356
    iget v2, v0, Landroid/text/format/Time;->year:I

    if-le v2, v7, :cond_7f

    .line 357
    const/16 v2, 0x1f

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3, v7}, Landroid/text/format/Time;->set(III)V

    .line 361
    :cond_43
    :goto_43
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 364
    iput v4, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    .line 366
    iput v4, p0, Lcom/android/task/TaskEditActivity;->mCompleted:I

    .line 368
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/task/TaskEditActivity;->ZeroHMS(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 372
    :try_start_61
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_87

    .line 377
    :goto_68
    iput v5, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    .line 378
    iput v4, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 382
    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v2, v3}, Lcom/android/task/TaskEditActivity;->ZeroSec(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 384
    const-string v2, ""

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 385
    return-void

    .line 358
    :cond_7f
    iget v2, v0, Landroid/text/format/Time;->year:I

    if-ge v2, v6, :cond_43

    .line 359
    invoke-virtual {v0, v5, v4, v6}, Landroid/text/format/Time;->set(III)V

    goto :goto_43

    .line 373
    :catch_87
    move-exception v1

    .line 374
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    goto :goto_68
.end method

.method private setValueFormCursor(Landroid/os/Bundle;)V
    .registers 9
    .parameter "extra"

    .prologue
    const/4 v6, 0x0

    .line 268
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    .line 269
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/task/TaskEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    const-string v3, "selected"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mSelectedId:J

    .line 273
    sget-object v3, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/task/TaskEditActivity;->mSelectedId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 274
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2, v6, v6, v6}, Lcom/android/task/TaskEditActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 275
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 340
    :goto_2c
    return-void

    .line 279
    :cond_2d
    const/4 v0, 0x0

    .line 282
    .local v0, colIndex:I
    const-string v3, "subject"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 283
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 286
    const-string v3, "start_date"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 287
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 288
    iput-object v6, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 294
    :goto_48
    const-string v3, "due_date"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 295
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 296
    iput-object v6, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 302
    :goto_56
    const-string v3, "accountKey"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 303
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    .line 304
    const-string v3, "accountName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 305
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 306
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7e

    .line 307
    :cond_7a
    const-string v3, "My task"

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 309
    :cond_7e
    iget v3, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    if-nez v3, :cond_8f

    .line 311
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 315
    :cond_8f
    const-string v3, "importance"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 316
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    .line 319
    const-string v3, "reminder_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 320
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 321
    const-string v3, "reminder_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 322
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 324
    iget-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_c9

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 328
    iget-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v3, v4}, Lcom/android/task/TaskEditActivity;->ZeroSec(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 333
    :cond_c9
    const-string v3, "body"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 338
    const-string v3, "complete"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 339
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/task/TaskEditActivity;->mCompleted:I

    goto/16 :goto_2c

    .line 290
    :cond_e3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    goto/16 :goto_48

    .line 298
    :cond_ef
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    goto/16 :goto_56
.end method

.method private setValueOfArrays()V
    .registers 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    .line 225
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogItems:[Ljava/lang/CharSequence;

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriority_drawables:[I

    .line 228
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriority_drawables:[I

    const/4 v1, 0x0

    const v2, 0x7f020028

    aput v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mPriority_drawables:[I

    const/4 v1, 0x2

    const v2, 0x7f020027

    aput v2, v0, v1

    .line 232
    return-void
.end method

.method private setValues(Landroid/os/Bundle;)V
    .registers 2
    .parameter "extra"

    .prologue
    .line 258
    if-eqz p1, :cond_6

    .line 260
    invoke-direct {p0, p1}, Lcom/android/task/TaskEditActivity;->setValueFormCursor(Landroid/os/Bundle;)V

    .line 265
    :goto_5
    return-void

    .line 263
    :cond_6
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->setValueDefault()V

    goto :goto_5
.end method

.method private updateNoDueDateStatus(Z)V
    .registers 6
    .parameter "isNoDueDate"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 570
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 572
    .local v0, noDueDateCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 573
    if-eqz p1, :cond_46

    .line 574
    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 575
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 576
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 577
    iget v1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-eq v1, v2, :cond_29

    iget v1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    .line 578
    :cond_29
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    iput v3, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 581
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->invalidateOptionsMenu()V

    .line 592
    return-void

    .line 584
    :cond_46
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 585
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 586
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 587
    iget-boolean v1, p0, Lcom/android/task/TaskEditActivity;->isStartDate:Z

    if-nez v1, :cond_42

    .line 588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    goto :goto_42
.end method


# virtual methods
.method public getReminderWhichEvents()I
    .registers 2

    .prologue
    .line 1424
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 748
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 749
    :cond_b
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->saveTask()V

    .line 756
    :goto_e
    return-void

    .line 755
    :cond_f
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->finish()V

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 169
    const-string v3, "TaskEditActivity"

    const-string v4, "======== onCreate ========"

    invoke-static {v3, v4}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iput-object p0, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    .line 178
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/android/task/TaskEditActivity;->setContentView(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/task/TaskEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, extra:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->setValueOfArrays()V

    .line 184
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->reloadAccounts()V

    .line 185
    invoke-direct {p0, v0}, Lcom/android/task/TaskEditActivity;->setValues(Landroid/os/Bundle;)V

    .line 186
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->findViews()V

    .line 187
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initViews()V

    .line 189
    new-instance v3, Lcom/android/task/TaskEditActivity$1;

    invoke-direct {v3, p0}, Lcom/android/task/TaskEditActivity$1;-><init>(Lcom/android/task/TaskEditActivity;)V

    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 198
    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/task/TaskEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 1032
    packed-switch p1, :pswitch_data_3c

    .line 1064
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 1034
    :pswitch_5
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    .line 1035
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->dialogDatePicker(J)V

    goto :goto_3

    .line 1039
    :pswitch_13
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;

    .line 1040
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->dialogDatePicker(J)V

    goto :goto_3

    .line 1044
    :pswitch_21
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mTimeButton:Landroid/widget/TextView;

    .line 1045
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/task/TaskEditActivity;->dialogTimePicker(Ljava/lang/Long;)V

    goto :goto_3

    .line 1049
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->dialogReminderTypeSelectOption()V

    goto :goto_3

    .line 1053
    :pswitch_33
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->dialogPrioritySelectOption()V

    goto :goto_3

    .line 1057
    :pswitch_37
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->dialogTaskAccount()V

    goto :goto_3

    .line 1032
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_21
        :pswitch_2f
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0a0021

    const v1, 0x7f0a0020

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 948
    iput-object p1, p0, Lcom/android/task/TaskEditActivity;->mMenu:Landroid/view/Menu;

    .line 949
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 950
    invoke-interface {p1, v2, v3, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020007

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 951
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1543
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1544
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    const-string v0, "TaskEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_ca

    .line 1005
    :cond_27
    :goto_27
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1006
    if-eqz v0, :cond_34

    .line 1007
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1010
    :cond_34
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 960
    :pswitch_39
    iput-boolean v5, p0, Lcom/android/task/TaskEditActivity;->isStartDate:Z

    .line 961
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    if-nez v0, :cond_47

    .line 962
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 964
    :cond_47
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J

    iget-object v3, p0, Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v5, v5, v3}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 967
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 968
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 969
    iget-object v2, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 970
    iget-wide v2, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 971
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 972
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    .line 973
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J

    invoke-static {v1, v2, v5, v5, p0}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    goto :goto_27

    .line 980
    :pswitch_94
    iput-boolean v4, p0, Lcom/android/task/TaskEditActivity;->isStartDate:Z

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 982
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    if-ne v0, v5, :cond_27

    .line 990
    const-string v0, "---"

    const-string v1, "TaskEditActivity:onOptionsItemSelected() REMINDER_ON_START_DATE --> OFF  ------- "

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput v4, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 993
    invoke-direct {p0, v4}, Lcom/android/task/TaskEditActivity;->ReminderTypeSetItem(I)V

    .line 995
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_27

    .line 958
    :pswitch_data_ca
    .packed-switch 0x7f0a0020
        :pswitch_39
        :pswitch_94
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 213
    const-string v0, "TaskEditActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 215
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 217
    :cond_17
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_27

    .line 218
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 220
    :cond_27
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1015
    const-string v0, "TaskEditActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/task/TaskEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1019
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0a0020

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4c

    move v1, v2

    :goto_2a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1022
    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0a0021

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartDateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4e

    :goto_44
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_4c
    move v1, v3

    .line 1019
    goto :goto_2a

    :cond_4e
    move v2, v3

    .line 1022
    goto :goto_44
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 427
    const-string v0, "task_subj"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubject:Ljava/lang/String;

    .line 428
    const-string v0, "task_note"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mNote:Ljava/lang/String;

    .line 429
    const-string v0, "dd_mili"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 432
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroHMS(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 434
    const-string v0, "start_mili"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 437
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroHMS(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 439
    const-string v0, "acc_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    .line 440
    const-string v0, "acc_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    .line 441
    const-string v0, "reminder_mili"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 444
    iget-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskEditActivity;->ZeroSec(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    .line 446
    const-string v0, "reminder_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    .line 447
    const-string v0, "prior"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    .line 448
    const-string v0, "no_due_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_87

    .line 449
    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    .line 451
    :cond_87
    const-string v0, "no_start_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_91

    .line 452
    iput-object v3, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    .line 456
    :cond_91
    const-string v0, "priority_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/task/TaskEditActivity;->mPriorityDialogEnable:Z

    .line 459
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initViews()V

    .line 460
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 205
    const-string v0, "TaskEditActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initDueDateView()V

    .line 207
    invoke-direct {p0}, Lcom/android/task/TaskEditActivity;->initStartDateView()V

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    .line 390
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 392
    const-string v0, "task_subj"

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mSubjectEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_17
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 395
    const-string v0, "task_note"

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mNoteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2a
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    if-eqz v0, :cond_89

    .line 398
    const-string v0, "dd_mili"

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 402
    :goto_39
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    if-eqz v0, :cond_8f

    .line 403
    const-string v0, "start_mili"

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    :goto_48
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 408
    const-string v0, "acc_name"

    iget-object v1, p0, Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_53
    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/task/TaskEditActivity;->priorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 413
    const-string v0, "priority_dialog"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    :cond_6c
    const-string v0, "acc_key"

    iget v1, p0, Lcom/android/task/TaskEditActivity;->mAccountKey:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v0, "reminder_mili"

    iget-wide v1, p0, Lcom/android/task/TaskEditActivity;->mReminderMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 419
    const-string v0, "reminder_type"

    iget v1, p0, Lcom/android/task/TaskEditActivity;->mReminderType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v0, "prior"

    iget v1, p0, Lcom/android/task/TaskEditActivity;->mPriority:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    return-void

    .line 400
    :cond_89
    const-string v0, "no_due_date"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_39

    .line 405
    :cond_8f
    const-string v0, "no_start_date"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_48
.end method
