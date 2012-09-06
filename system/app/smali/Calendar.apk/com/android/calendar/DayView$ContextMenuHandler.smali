.class Lcom/android/calendar/DayView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 2
    .parameter

    .prologue
    .line 4235
    iput-object p1, p0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4235
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 29
    .parameter "item"

    .prologue
    .line 4237
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_11a

    .line 4283
    :pswitch_7
    const/4 v2, 0x0

    .line 4286
    :goto_8
    return v2

    .line 4239
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 4240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 4286
    :cond_44
    :goto_44
    const/4 v2, 0x1

    goto :goto_8

    .line 4247
    :pswitch_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 4248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_44

    .line 4255
    :pswitch_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_44

    .line 4260
    :pswitch_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_44

    .line 4265
    :pswitch_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 4266
    .local v8, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 4267
    .local v10, endMillis:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_44

    .line 4272
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    :pswitch_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 4273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v26

    .line 4274
    .local v26, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v18, v0

    .line 4275
    .local v18, begin:J
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v20, v0

    .line 4276
    .local v20, end:J
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v16, v0

    .line 4277
    .local v16, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v12

    const-wide/16 v14, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_44

    .line 4237
    nop

    :pswitch_data_11a
    .packed-switch 0x2
        :pswitch_9e
        :pswitch_82
        :pswitch_7
        :pswitch_9
        :pswitch_ba
        :pswitch_46
        :pswitch_de
    .end packed-switch
.end method
