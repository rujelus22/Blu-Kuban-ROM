.class Lcom/android/task/TaskEditActivity$13;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogTimePicker(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;

.field final synthetic val$time:Landroid/text/format/Time;

.field final synthetic val$timeMillis:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iput-object p2, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iput-object p3, p0, Lcom/android/task/TaskEditActivity$13;->val$timeMillis:Ljava/lang/Long;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 8
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v1, 0x0

    .line 1203
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    .line 1235
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->val$timeMillis:Ljava/lang/Long;

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    .line 1238
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mTimeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$2100(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/task/Utils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    return-void

    .line 1205
    :pswitch_2d
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$1800(Lcom/android/task/TaskEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1206
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$1802(Lcom/android/task/TaskEditActivity;Z)Z

    .line 1207
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1209
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto :goto_13

    .line 1211
    :cond_50
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->val$timeMillis:Ljava/lang/Long;

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto :goto_13

    .line 1213
    :cond_5a
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$2000(Lcom/android/task/TaskEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1214
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$2002(Lcom/android/task/TaskEditActivity;Z)Z

    .line 1215
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1216
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto :goto_13

    .line 1218
    :cond_7d
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->val$timeMillis:Ljava/lang/Long;

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto :goto_13

    .line 1224
    :pswitch_87
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto/16 :goto_13

    .line 1228
    :pswitch_96
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto/16 :goto_13

    .line 1232
    :pswitch_a5
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$13;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$13;->val$time:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$13;->val$timeMillis:Ljava/lang/Long;

    #calls: Lcom/android/task/TaskEditActivity;->ReminderOnTimeSetMillis(Landroid/text/format/Time;Ljava/lang/Long;II)V
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/task/TaskEditActivity;->access$1900(Lcom/android/task/TaskEditActivity;Landroid/text/format/Time;Ljava/lang/Long;II)V

    goto/16 :goto_13

    .line 1203
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_87
        :pswitch_96
        :pswitch_a5
    .end packed-switch
.end method
