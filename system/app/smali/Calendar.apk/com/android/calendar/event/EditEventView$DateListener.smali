.class Lcom/android/calendar/event/EditEventView$DateListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    .line 278
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 18
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 282
    const-string v10, "EditEvent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDateSet: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;
    invoke-static {v10}, Lcom/android/calendar/event/EditEventView;->access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v8

    .line 285
    .local v8, startTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;
    invoke-static {v10}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v3

    .line 292
    .local v3, endTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, v11, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    if-ne v10, v11, :cond_9c

    .line 294
    iget v10, v3, Landroid/text/format/Time;->year:I

    iget v11, v8, Landroid/text/format/Time;->year:I

    sub-int v9, v10, v11

    .line 295
    .local v9, yearDuration:I
    iget v10, v3, Landroid/text/format/Time;->month:I

    iget v11, v8, Landroid/text/format/Time;->month:I

    sub-int v5, v10, v11

    .line 296
    .local v5, monthDuration:I
    iget v10, v3, Landroid/text/format/Time;->monthDay:I

    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    sub-int v4, v10, v11

    .line 298
    .local v4, monthDayDuration:I
    iput p2, v8, Landroid/text/format/Time;->year:I

    .line 299
    move/from16 v0, p3

    iput v0, v8, Landroid/text/format/Time;->month:I

    .line 300
    move/from16 v0, p4

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 301
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 304
    .local v6, startMillis:J
    add-int v10, p2, v9

    iput v10, v3, Landroid/text/format/Time;->year:I

    .line 305
    add-int v10, p3, v5

    iput v10, v3, Landroid/text/format/Time;->month:I

    .line 306
    add-int v10, p4, v4

    iput v10, v3, Landroid/text/format/Time;->monthDay:I

    .line 307
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 310
    .local v1, endMillis:J
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->populateRepeats()V
    invoke-static {v10}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;)V

    .line 327
    .end local v4           #monthDayDuration:I
    .end local v5           #monthDuration:I
    .end local v9           #yearDuration:I
    :cond_7b
    :goto_7b
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, v11, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v10, v11, v6, v7}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 328
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, v11, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v10, v11, v1, v2}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 329
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v11, v11, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v10, v11, v1, v2}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 331
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->updateHomeTime()V
    invoke-static {v10}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;)V

    .line 332
    return-void

    .line 313
    .end local v1           #endMillis:J
    .end local v6           #startMillis:J
    :cond_9c
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 314
    .restart local v6       #startMillis:J
    iput p2, v3, Landroid/text/format/Time;->year:I

    .line 315
    move/from16 v0, p3

    iput v0, v3, Landroid/text/format/Time;->month:I

    .line 316
    move/from16 v0, p4

    iput v0, v3, Landroid/text/format/Time;->monthDay:I

    .line 317
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 321
    .restart local v1       #endMillis:J
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 322
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 323
    move-wide v1, v6

    goto :goto_7b
.end method
