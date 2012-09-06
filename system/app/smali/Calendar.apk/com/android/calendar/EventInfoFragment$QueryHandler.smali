.class Lcom/android/calendar/EventInfoFragment$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 343
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 344
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 18
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 350
    .local v8, activity:Landroid/app/Activity;
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 351
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 435
    :goto_11
    return-void

    .line 355
    :cond_12
    sparse-switch p1, :sswitch_data_17e

    .line 433
    :cond_15
    :goto_15
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 434
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v0, p1}, Lcom/android/calendar/EventInfoFragment;->access$1100(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_11

    .line 357
    :sswitch_1e
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 358
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 362
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_11

    .line 365
    :cond_33
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->prepareReminders()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$400(Lcom/android/calendar/EventInfoFragment;)V

    .line 369
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 370
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 372
    .local v6, args:[Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 376
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #args:[Ljava/lang/String;
    :sswitch_66
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$502(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 377
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$700(Lcom/android/calendar/EventInfoFragment;)V

    .line 381
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$800(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 382
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 385
    .restart local v6       #args:[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 386
    .restart local v3       #uri:Landroid/net/Uri;
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1000()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_id=?"

    const-string v7, "attendeeName ASC, attendeeEmail ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #args:[Ljava/lang/String;
    :goto_a7
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1200(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 393
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 394
    .restart local v6       #args:[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 395
    .restart local v3       #uri:Landroid/net/Uri;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1300()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_id=?"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 389
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #args:[Ljava/lang/String;
    :cond_d1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x4

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1100(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_a7

    .line 398
    :cond_d8
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v1, 0x10

    #calls: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1100(Lcom/android/calendar/EventInfoFragment;I)V

    goto/16 :goto_15

    .line 402
    :sswitch_e1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 403
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment;->updateResponse(Landroid/view/View;)V

    goto/16 :goto_15

    .line 407
    :sswitch_102
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1602(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 408
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventInfoFragment;->initReminders(Landroid/view/View;Landroid/database/Cursor;)V

    goto/16 :goto_15

    .line 411
    :sswitch_11e
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 412
    .local v12, res:Landroid/content/res/Resources;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 415
    .local v13, sb:Landroid/text/SpannableStringBuilder;
    const v0, 0x7f0c0038

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, label:Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 417
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v13, v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 421
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, calendarName:Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 426
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, email:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 428
    const-string v0, " ("

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_15

    .line 355
    :sswitch_data_17e
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_66
        0x4 -> :sswitch_e1
        0x8 -> :sswitch_11e
        0x10 -> :sswitch_102
    .end sparse-switch
.end method
