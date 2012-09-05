.class Lcom/android/task/TaskAlertActivity$2;
.super Ljava/lang/Object;
.source "TaskAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskAlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 25
    .parameter "v"

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x493e0

    add-long v11, v19, v21

    .line 292
    .local v11, alarmTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Lcom/android/task/TaskAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 293
    .local v15, nm:Landroid/app/NotificationManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 295
    const-wide/16 v16, 0x0

    .line 296
    .local v16, tasksAlarmTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, -0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 297
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_c6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 299
    .local v5, eventId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x5

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 300
    .local v7, begin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 301
    .local v9, end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x4

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 302
    .local v13, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 307
    .local v14, reminderType:I
    #calls: Lcom/android/task/TaskAlertActivity;->makeContentValues(JJJJLjava/lang/String;I)Landroid/content/ContentValues;
    invoke-static/range {v5 .. v14}, Lcom/android/task/TaskAlertActivity;->access$700(JJJJLjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v18

    .line 310
    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isLast()Z

    move-result v19

    if-eqz v19, :cond_a5

    .line 311
    move-wide/from16 v16, v11

    .line 314
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$800(Lcom/android/task/TaskAlertActivity;)Lcom/android/task/TaskAlertActivity$QueryHandler;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    sget-object v22, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/task/TaskAlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_2f

    .line 316
    .end local v5           #eventId:J
    .end local v7           #begin:J
    .end local v9           #end:J
    .end local v13           #subject:Ljava/lang/String;
    .end local v14           #reminderType:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    #calls: Lcom/android/task/TaskAlertActivity;->dismissFiredAlarms()V
    invoke-static/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->access$900(Lcom/android/task/TaskAlertActivity;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskAlertActivity$2;->this$0:Lcom/android/task/TaskAlertActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/task/TaskAlertActivity;->finish()V

    .line 319
    return-void
.end method
