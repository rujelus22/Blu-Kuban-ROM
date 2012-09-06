.class Lcom/android/calendar/event/EditEventView$TimeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    .line 210
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

    .line 215
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v7

    .line 216
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v2

    .line 223
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    if-ne v8, v9, :cond_56

    .line 225
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 226
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 228
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 229
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 230
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 233
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 234
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 248
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    :cond_31
    :goto_31
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 250
    .local v0, endMillis:J
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 251
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v5, v6}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 252
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 253
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->updateHomeTime()V
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;)V

    .line 254
    return-void

    .line 237
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_56
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 238
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 239
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 243
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 244
    iget v8, v7, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/text/format/Time;->monthDay:I

    goto :goto_31
.end method
