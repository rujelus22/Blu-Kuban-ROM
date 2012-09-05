.class Lcom/android/calendar/EditEvent$TimeListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    .line 709
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 15
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v10, 0x1

    .line 713
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    .line 714
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    .line 721
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    if-ne v8, v9, :cond_9d

    .line 723
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 724
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 726
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 727
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 728
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 731
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 732
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 733
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 735
    .local v0, endMillis:J
    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 736
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 737
    move-wide v0, v5

    .line 740
    :cond_41
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->hour:I

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 741
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->minute:I

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 742
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->second:I

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 743
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->populateRepeats()V
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)V

    .line 766
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    :cond_64
    :goto_64
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V
    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/calendar/EditEvent;->access$900(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    .line 767
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V
    invoke-static {v8, v9, v5, v6, v10}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    .line 768
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V
    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    .line 769
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$1200(Lcom/android/calendar/EditEvent;)V

    .line 770
    return-void

    .line 746
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_9d
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 747
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 748
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 749
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 751
    .restart local v0       #endMillis:J
    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v8

    if-nez v8, :cond_bb

    .line 752
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 753
    move-wide v0, v5

    .line 754
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    const v9, 0x7f0a00a1

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 759
    :cond_bb
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 760
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 761
    move-wide v0, v5

    .line 762
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    const v9, 0x7f0a00a2

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_64
.end method
