.class Lcom/android/calendar/AlertActivity$4;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 23
    .parameter "v"

    .prologue
    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v13, 0x493e0

    add-long v7, v9, v13

    .line 453
    .local v7, alarmTime:J
    const-wide/16 v18, 0x0

    .line 454
    .local v18, scheduleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 455
    :cond_15
    :goto_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 456
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 457
    .local v1, eventId:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 458
    .local v3, begin:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 459
    .local v5, end:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v9}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 461
    const/4 v9, 0x0

    #calls: Lcom/android/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/AlertActivity;->access$300(JJJJI)Landroid/content/ContentValues;

    move-result-object v20

    .line 465
    .local v20, values:Landroid/content/ContentValues;
    move-wide/from16 v18, v7

    .line 467
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #calls: Lcom/android/calendar/AlertActivity;->dismissAlarm(J)V
    invoke-static {v9, v1, v2}, Lcom/android/calendar/AlertActivity;->access$700(Lcom/android/calendar/AlertActivity;J)V

    .line 468
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v13, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v9, v10, v11, v13, v0}, Lcom/android/calendar/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_15

    .line 473
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_9f
    sget-object v12, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 474
    .local v12, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/calendar/AlertActivity;->access$800()[Ljava/lang/String;

    move-result-object v13

    const-string v14, "state=?"

    invoke-static {}, Lcom/android/calendar/AlertActivity;->access$900()[Ljava/lang/String;

    move-result-object v15

    const-string v16, "begin ASC,title ASC"

    invoke-virtual/range {v9 .. v16}, Lcom/android/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v9}, Lcom/android/calendar/AlertActivity;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 477
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 479
    .local v17, nm:Landroid/app/NotificationManager;
    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v9}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 482
    .end local v17           #nm:Landroid/app/NotificationManager;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$4;->this$0:Lcom/android/calendar/AlertActivity;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    .line 483
    return-void
.end method
