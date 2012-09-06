.class Lcom/android/calendar/event/EditEventFragment$Done;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Done"
.end annotation


# instance fields
.field private mCode:I

.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v9, 0x0

    #setter for: Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z
    invoke-static {v7, v9}, Lcom/android/calendar/event/EditEventFragment;->access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z

    .line 651
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v7, :cond_17

    .line 654
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v9, 0x3

    iput v9, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 657
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1d9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_1d9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-nez v7, :cond_3f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-eqz v7, :cond_1d9

    :cond_3f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v7

    if-eqz v7, :cond_1d9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventFragment;->isEmptyNewEvent()Z

    move-result v7

    if-nez v7, :cond_1d9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    move-result v7

    if-eqz v7, :cond_1d9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v10, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v11, v11, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/calendar/event/EditEventHelper;->saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z

    move-result v7

    if-eqz v7, :cond_1d9

    .line 665
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c5

    .line 666
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v7, :cond_1c0

    .line 667
    const v18, 0x7f0c0027

    .line 678
    .local v18, stringResource:I
    :goto_9a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    move/from16 v0, v18

    invoke-static {v7, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 683
    .end local v18           #stringResource:I
    :cond_ac
    :goto_ac
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_10b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_10b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 685
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 686
    .local v3, begin:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v5, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 687
    .local v5, end:J
    const/4 v8, -0x1

    .line 688
    .local v8, which:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    packed-switch v7, :pswitch_data_214

    .line 699
    :goto_e2
    new-instance v2, Lcom/android/calendar/DeleteEventHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$800(Lcom/android/calendar/event/EditEventFragment;)Z

    move-result v7

    if-nez v7, :cond_211

    const/4 v7, 0x1

    :goto_ff
    invoke-direct {v2, v9, v10, v7}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 701
    .local v2, deleteHelper:Lcom/android/calendar/DeleteEventHelper;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/CalendarEventModel;I)V

    .line 704
    .end local v2           #deleteHelper:Lcom/android/calendar/DeleteEventHelper;
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v8           #which:I
    :cond_10b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_19e

    .line 707
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_191

    .line 708
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_191

    .line 709
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v12, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 710
    .local v12, start:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v5, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 711
    .restart local v5       #end:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v7, :cond_17f

    .line 714
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    .line 715
    .local v20, tz:Ljava/lang/String;
    new-instance v19, Landroid/text/format/Time;

    const-string v7, "UTC"

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 716
    .local v19, t:Landroid/text/format/Time;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 717
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 718
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 720
    const-string v7, "UTC"

    move-object/from16 v0, v19

    iput-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 721
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 722
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 723
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 725
    .end local v19           #t:Landroid/text/format/Time;
    .end local v20           #tz:Ljava/lang/String;
    :cond_17f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v9

    const-wide/16 v10, -0x1

    move-wide v14, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJ)V

    .line 728
    .end local v5           #end:J
    .end local v12           #start:J
    :cond_191
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    .line 729
    .local v16, a:Landroid/app/Activity;
    if-eqz v16, :cond_19e

    .line 730
    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->finish()V

    .line 736
    .end local v16           #a:Landroid/app/Activity;
    :cond_19e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v17

    .line 737
    .local v17, focusedView:Landroid/view/View;
    if-eqz v17, :cond_1bf

    .line 738
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 739
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearFocus()V

    .line 741
    :cond_1bf
    return-void

    .line 669
    .end local v17           #focusedView:Landroid/view/View;
    :cond_1c0
    const v18, 0x7f0c0026

    .restart local v18       #stringResource:I
    goto/16 :goto_9a

    .line 672
    .end local v18           #stringResource:I
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v7, :cond_1d4

    .line 673
    const v18, 0x7f0c0024

    .restart local v18       #stringResource:I
    goto/16 :goto_9a

    .line 675
    .end local v18           #stringResource:I
    :cond_1d4
    const v18, 0x7f0c0023

    .restart local v18       #stringResource:I
    goto/16 :goto_9a

    .line 679
    .end local v18           #stringResource:I
    :cond_1d9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_ac

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_ac

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventFragment;->isEmptyNewEvent()Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 680
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f0c0025

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_ac

    .line 690
    .restart local v3       #begin:J
    .restart local v5       #end:J
    .restart local v8       #which:I
    :pswitch_208
    const/4 v8, 0x0

    .line 691
    goto/16 :goto_e2

    .line 693
    :pswitch_20b
    const/4 v8, 0x1

    .line 694
    goto/16 :goto_e2

    .line 696
    :pswitch_20e
    const/4 v8, 0x2

    goto/16 :goto_e2

    .line 699
    :cond_211
    const/4 v7, 0x0

    goto/16 :goto_ff

    .line 688
    :pswitch_data_214
    .packed-switch 0x1
        :pswitch_208
        :pswitch_20b
        :pswitch_20e
    .end packed-switch
.end method

.method public setDoneCode(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 644
    iput p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    .line 645
    return-void
.end method
