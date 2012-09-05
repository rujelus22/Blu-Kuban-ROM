.class Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    .line 1353
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1354
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .registers 10
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 1560
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1562
    :try_start_7
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1563
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1564
    .local v3, listPositionOffset:I
    if-nez v1, :cond_8d

    .line 1565
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/app/Activity;)V

    .line 1573
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1d
    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1574
    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1575
    iput-object p2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1576
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1577
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1580
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_91

    .line 1581
    :cond_52
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1582
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1590
    :goto_5e
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2002(Lcom/android/calendar/AgendaWindowAdapter;I)I

    .line 1591
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1592
    .local v2, info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$2000(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1593
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2012(Lcom/android/calendar/AgendaWindowAdapter;I)I

    goto :goto_6e

    .line 1598
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_8a
    move-exception v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_7 .. :try_end_8c} :catchall_8a

    throw v4

    .line 1569
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_8d
    :try_start_8d
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_1d

    .line 1586
    :cond_91
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5e

    .line 1595
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_9b
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$2102(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1597
    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_8a

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 27
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1358
    move-object/from16 v6, p2

    check-cast v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 1368
    .local v6, data:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_25

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x3f7

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->removeDialog(I)V

    .line 1372
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-eqz v17, :cond_37

    .line 1374
    if-eqz p3, :cond_36

    .line 1375
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1552
    :cond_36
    :goto_36
    return-void

    .line 1383
    :cond_37
    const/4 v5, 0x0

    .line 1384
    .local v5, cursorSize:I
    if-eqz p3, :cond_3e

    .line 1385
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1388
    :cond_3e
    if-gtz v5, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1b9

    .line 1389
    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v11

    .line 1391
    .local v11, listPositionOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-nez v17, :cond_17a

    .line 1398
    iget-object v0, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    if-nez v17, :cond_185

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1401
    if-eqz v11, :cond_8a

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/calendar/AgendaListView;->shiftSelection(I)V

    .line 1428
    .end local v11           #listPositionOffset:I
    :cond_8a
    :goto_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_101

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v17

    if-nez v17, :cond_101

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-nez v17, :cond_101

    .line 1432
    new-instance v9, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;)V

    .line 1441
    .local v9, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->addFooterView(Landroid/view/View;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1302(Lcom/android/calendar/AgendaWindowAdapter;Z)Z

    .line 1447
    .end local v9           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    monitor-enter v18

    .line 1448
    const/4 v15, -0x1

    .line 1449
    .local v15, totalAgendaRangeStart:I
    const/4 v14, -0x1

    .line 1451
    .local v14, totalAgendaRangeEnd:I
    if-eqz v5, :cond_1de

    .line 1453
    :try_start_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 1467
    .local v16, x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1527
    .end local v16           #x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :goto_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v0, v15, v14}, Lcom/android/calendar/AgendaWindowAdapter;->access$1900(Lcom/android/calendar/AgendaWindowAdapter;II)V

    .line 1541
    monitor-exit v18
    :try_end_154
    .catchall {:try_start_110 .. :try_end_154} :catchall_29b

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v17

    if-eqz v17, :cond_36

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$402(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    goto/16 :goto_36

    .line 1396
    .end local v14           #totalAgendaRangeEnd:I
    .end local v15           #totalAgendaRangeStart:I
    .restart local v11       #listPositionOffset:I
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    goto/16 :goto_8a

    .line 1404
    :cond_185
    iget-object v8, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 1405
    .local v8, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I
    invoke-static {v0, v8}, Lcom/android/calendar/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v12

    .line 1407
    .local v12, newPosition:I
    if-ltz v12, :cond_8a

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v18

    add-int v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto/16 :goto_8a

    .line 1417
    .end local v8           #goToTime:Landroid/text/format/Time;
    .end local v11           #listPositionOffset:I
    .end local v12           #newPosition:I
    :cond_1b9
    iget v0, v6, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d7

    .line 1418
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    goto/16 :goto_8a

    .line 1422
    :cond_1d7
    if-eqz p3, :cond_8a

    .line 1423
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8a

    .line 1471
    .restart local v14       #totalAgendaRangeEnd:I
    .restart local v15       #totalAgendaRangeStart:I
    :cond_1de
    :try_start_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 1472
    move-object v13, v6

    .line 1475
    .local v13, querySpec:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_29e

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1477
    .local v7, first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1479
    .local v10, last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_242

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_242

    .line 1480
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1483
    :cond_242
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_268

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_268

    .line 1484
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1487
    :cond_268
    iget v15, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1488
    iget v14, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1496
    .end local v7           #first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v10           #last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_26c
    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_314

    goto/16 :goto_148

    .line 1498
    :pswitch_275
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto/16 :goto_148

    .line 1541
    .end local v13           #querySpec:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :catchall_29b
    move-exception v17

    monitor-exit v18
    :try_end_29d
    .catchall {:try_start_1de .. :try_end_29d} :catchall_29b

    throw v17

    .line 1490
    .restart local v13       #querySpec:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_29e
    :try_start_29e
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1491
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_26c

    .line 1504
    :pswitch_2a3
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto/16 :goto_148

    .line 1510
    :pswitch_2c9
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1511
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_311
    .catchall {:try_start_29e .. :try_end_311} :catchall_29b

    goto/16 :goto_148

    .line 1496
    nop

    :pswitch_data_314
    .packed-switch 0x0
        :pswitch_275
        :pswitch_2a3
        :pswitch_2c9
    .end packed-switch
.end method
