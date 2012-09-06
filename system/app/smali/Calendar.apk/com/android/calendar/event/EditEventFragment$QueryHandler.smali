.class Lcom/android/calendar/event/EditEventFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    .line 135
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 42
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 141
    if-nez p3, :cond_3

    .line 314
    :goto_2
    return-void

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    .line 148
    .local v25, activity:Landroid/app/Activity;
    if-eqz v25, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 149
    :cond_13
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 153
    :cond_17
    packed-switch p1, :pswitch_data_382

    .line 311
    :pswitch_1a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 155
    :pswitch_1e
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_47

    .line 158
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x0

    #setter for: Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_2

    .line 164
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    new-instance v4, Lcom/android/calendar/CalendarEventModel;

    invoke-direct {v4}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 167
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mEnd:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$500(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v10, v3, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v3, v7, v10

    if-nez v3, :cond_184

    const/4 v3, 0x1

    :goto_ce
    iput-boolean v3, v4, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mBegin:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    #getter for: Lcom/android/calendar/event/EditEventFragment;->mEnd:J
    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$500(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v3, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide/from16 v29, v0

    .line 181
    .local v29, eventId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v3, :cond_187

    const-wide/16 v3, -0x1

    cmp-long v3, v29, v3

    if-eqz v3, :cond_187

    .line 182
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    .local v6, attUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 186
    .local v9, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v7, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v8, "event_id=?"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v6           #attUri:Landroid/net/Uri;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :goto_126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v3, :cond_190

    .line 196
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 197
    .local v13, rUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 200
    .local v16, remArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v11, 0x4

    const/4 v12, 0x0

    sget-object v14, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v15, "event_id=?"

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v13           #rUri:Landroid/net/Uri;
    .end local v16           #remArgs:[Ljava/lang/String;
    :goto_14f
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 212
    .local v23, selArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    sget-object v20, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v22, "_id=?"

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x1

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_2

    .line 174
    .end local v23           #selArgs:[Ljava/lang/String;
    .end local v29           #eventId:J
    :cond_184
    const/4 v3, 0x0

    goto/16 :goto_ce

    .line 191
    .restart local v29       #eventId:J
    :cond_187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x2

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto :goto_126

    .line 205
    :cond_190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x4

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto :goto_14f

    .line 220
    .end local v29           #eventId:J
    :goto_199
    :pswitch_199
    :try_start_199
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2b8

    .line 221
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 222
    .local v34, name:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 223
    .local v28, email:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 224
    .local v37, status:I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 226
    .local v36, relationship:I
    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_228

    .line 227
    if-eqz v28, :cond_202

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 236
    :cond_202
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27a

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 246
    :cond_228
    :goto_228
    if-eqz v28, :cond_28f

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v3, :cond_28f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28f

    .line 249
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 251
    .local v27, attendeeId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v37

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v37

    iput v0, v3, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I
    :try_end_273
    .catchall {:try_start_199 .. :try_end_273} :catchall_275

    goto/16 :goto_199

    .line 264
    .end local v27           #attendeeId:I
    .end local v28           #email:Ljava/lang/String;
    .end local v34           #name:Ljava/lang/String;
    .end local v36           #relationship:I
    .end local v37           #status:I
    :catchall_275
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 241
    .restart local v28       #email:Ljava/lang/String;
    .restart local v34       #name:Ljava/lang/String;
    .restart local v36       #relationship:I
    .restart local v37       #status:I
    :cond_27a
    :try_start_27a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    goto :goto_228

    .line 258
    :cond_28f
    new-instance v26, Lcom/android/calendar/CalendarEventModel$Attendee;

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v26, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    move/from16 v0, v37

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    :try_end_2b6
    .catchall {:try_start_27a .. :try_end_2b6} :catchall_275

    goto/16 :goto_199

    .line 264
    .end local v26           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v28           #email:Ljava/lang/String;
    .end local v34           #name:Ljava/lang/String;
    .end local v36           #relationship:I
    .end local v37           #status:I
    :cond_2b8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x2

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_2

    .line 272
    :goto_2c5
    :pswitch_2c5
    :try_start_2c5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_301

    .line 273
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 274
    .local v33, minutes:I
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 275
    .local v32, method:I
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v35

    .line 276
    .local v35, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2fb
    .catchall {:try_start_2c5 .. :try_end_2fb} :catchall_2fc

    goto :goto_2c5

    .line 284
    .end local v32           #method:I
    .end local v33           #minutes:I
    .end local v35           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :catchall_2fc
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 281
    :cond_301
    :try_start_301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_317
    .catchall {:try_start_301 .. :try_end_317} :catchall_2fc

    .line 284
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v4, 0x4

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_2

    .line 291
    :pswitch_324
    :try_start_324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_366

    .line 293
    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v31

    .line 298
    .local v31, matrixCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_364

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_364

    const/4 v3, 0x1

    :goto_351
    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v3}, Lcom/android/calendar/event/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V
    :try_end_356
    .catchall {:try_start_324 .. :try_end_356} :catchall_37d

    .line 305
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :goto_356
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/16 v4, 0x8

    #calls: Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V
    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$600(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_2

    .line 298
    .restart local v31       #matrixCursor:Landroid/database/MatrixCursor;
    :cond_364
    const/4 v3, 0x0

    goto :goto_351

    .line 301
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_366
    :try_start_366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    :try_end_37c
    .catchall {:try_start_366 .. :try_end_37c} :catchall_37d

    goto :goto_356

    .line 305
    :catchall_37d
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 153
    :pswitch_data_382
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_199
        :pswitch_1a
        :pswitch_2c5
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_324
    .end packed-switch
.end method
