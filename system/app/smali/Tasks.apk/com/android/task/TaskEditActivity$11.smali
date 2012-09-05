.class Lcom/android/task/TaskEditActivity$11;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogDatePicker(Landroid/text/format/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 20
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1081
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 1082
    .local v11, setTime:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1100(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_43

    .line 1083
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1084
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1093
    :cond_28
    :goto_28
    move/from16 v0, p2

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 1094
    move/from16 v0, p3

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 1095
    move/from16 v0, p4

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 1097
    invoke-static {v11}, Lcom/android/task/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1098
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const v2, 0x7f0a002d

    invoke-static {v1, v2}, Lcom/android/task/Utils;->showToast(Landroid/app/Activity;I)V

    .line 1171
    :goto_42
    return-void

    .line 1086
    :cond_43
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1200(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_67

    .line 1087
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1088
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_28

    .line 1090
    :cond_67
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_28

    .line 1091
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_28

    .line 1102
    :cond_7f
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1100(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_15f

    .line 1103
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_ef

    .line 1104
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1105
    .local v7, dueTime:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1106
    iget v1, v11, Landroid/text/format/Time;->hour:I

    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 1107
    iget v1, v11, Landroid/text/format/Time;->minute:I

    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 1108
    invoke-virtual {v7, v11}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 1109
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #setter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v1, v2}, Lcom/android/task/TaskEditActivity;->access$202(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1110
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v3

    #setter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v2, v3}, Lcom/android/task/TaskEditActivity;->access$102(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$402(Lcom/android/task/TaskEditActivity;J)J

    .line 1111
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1200(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    .end local v7           #dueTime:Landroid/text/format/Time;
    :cond_ef
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v2, v3}, Lcom/android/task/TaskEditActivity;->access$202(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$302(Lcom/android/task/TaskEditActivity;J)J

    .line 1118
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_142

    .line 1120
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v8

    .line 1121
    .local v8, milli:J
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1122
    .local v13, time:Landroid/text/format/Time;
    invoke-virtual {v13, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1123
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1124
    .local v10, newtime:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$300(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1125
    iget v1, v13, Landroid/text/format/Time;->hour:I

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1126
    iget v1, v13, Landroid/text/format/Time;->minute:I

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1127
    iget v1, v13, Landroid/text/format/Time;->second:I

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1128
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$1402(Lcom/android/task/TaskEditActivity;J)J

    .line 1170
    .end local v8           #milli:J
    .end local v10           #newtime:Landroid/text/format/Time;
    .end local v13           #time:Landroid/text/format/Time;
    :cond_142
    :goto_142
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v14

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;

    move-result-object v6

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/task/Utils;->getDateString(IIIZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 1131
    :cond_15f
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1200(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_20e

    .line 1132
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1b9

    .line 1133
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 1134
    .local v12, startTime:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1135
    iget v1, v11, Landroid/text/format/Time;->hour:I

    iput v1, v12, Landroid/text/format/Time;->hour:I

    .line 1136
    iget v1, v11, Landroid/text/format/Time;->minute:I

    iput v1, v12, Landroid/text/format/Time;->minute:I

    .line 1137
    const/4 v1, 0x0

    iput v1, v12, Landroid/text/format/Time;->second:I

    .line 1138
    invoke-virtual {v11, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    iget v1, v11, Landroid/text/format/Time;->year:I

    iget v2, v12, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_1aa

    iget v1, v11, Landroid/text/format/Time;->month:I

    iget v2, v12, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_1aa

    iget v1, v11, Landroid/text/format/Time;->monthDay:I

    iget v2, v12, Landroid/text/format/Time;->monthDay:I

    if-eq v1, v2, :cond_1b9

    .line 1141
    :cond_1aa
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const v2, 0x7f0a002c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_42

    .line 1145
    .end local v12           #startTime:Landroid/text/format/Time;
    :cond_1b9
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v2, v3}, Lcom/android/task/TaskEditActivity;->access$102(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$402(Lcom/android/task/TaskEditActivity;J)J

    .line 1149
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_142

    .line 1151
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v8

    .line 1152
    .restart local v8       #milli:J
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1153
    .restart local v13       #time:Landroid/text/format/Time;
    invoke-virtual {v13, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1154
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1155
    .restart local v10       #newtime:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1156
    iget v1, v13, Landroid/text/format/Time;->hour:I

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1157
    iget v1, v13, Landroid/text/format/Time;->minute:I

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1158
    iget v1, v13, Landroid/text/format/Time;->second:I

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1159
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$1402(Lcom/android/task/TaskEditActivity;J)J

    goto/16 :goto_142

    .line 1163
    .end local v8           #milli:J
    .end local v10           #newtime:Landroid/text/format/Time;
    .end local v13           #time:Landroid/text/format/Time;
    :cond_20e
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1000(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_142

    .line 1164
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1, v2, v3}, Lcom/android/task/TaskEditActivity;->access$1402(Lcom/android/task/TaskEditActivity;J)J

    .line 1165
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v2, 0x3

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v1, v2}, Lcom/android/task/TaskEditActivity;->access$602(Lcom/android/task/TaskEditActivity;I)I

    .line 1166
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1167
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1168
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/task/TaskEditActivity$11;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/task/TaskEditActivity;->access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/task/Utils;->getDateStringSlashFormat(JZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_142
.end method
