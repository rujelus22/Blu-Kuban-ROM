.class Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    .line 423
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 424
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;Landroid/database/Cursor;)I
    .registers 10
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 639
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 641
    :try_start_7
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    iget v6, p1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$100(Lcom/android/calendar/AgendaExpandableListAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 642
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 643
    .local v3, listPositionOffset:I
    if-nez v1, :cond_8d

    .line 644
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/app/Activity;)V

    .line 652
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1d
    iget v4, p1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 653
    iget v4, p1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 654
    iput-object p2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 655
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 656
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 659
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    iget v6, p1, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_91

    .line 660
    :cond_52
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 661
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 672
    :goto_5e
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2002(Lcom/android/calendar/AgendaExpandableListAdapter;I)I

    .line 673
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

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

    .line 674
    .local v2, info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2000(Lcom/android/calendar/AgendaExpandableListAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 675
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2012(Lcom/android/calendar/AgendaExpandableListAdapter;I)I

    goto :goto_6e

    .line 680
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

    .line 648
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_8d
    :try_start_8d
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_1d

    .line 668
    :cond_91
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5e

    .line 677
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_9b
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2102(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 679
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
    .line 428
    move-object/from16 v6, p2

    check-cast v6, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    .line 440
    .local v6, data:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_25

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x3f7

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->removeDialog(I)V

    .line 444
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1000(Lcom/android/calendar/AgendaExpandableListAdapter;)Z

    move-result v17

    if-eqz v17, :cond_37

    .line 446
    if-eqz p3, :cond_36

    .line 447
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_36
    :goto_36
    return-void

    .line 455
    :cond_37
    const/4 v5, 0x0

    .line 456
    .local v5, cursorSize:I
    if-eqz p3, :cond_3e

    .line 457
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 460
    :cond_3e
    if-gtz v5, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1fa

    .line 461
    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v11

    .line 463
    .local v11, listPositionOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_1a4

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetChanged()V

    .line 498
    .end local v11           #listPositionOffset:I
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v17

    if-nez v17, :cond_ea

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1300(Lcom/android/calendar/AgendaExpandableListAdapter;)Z

    move-result v17

    if-nez v17, :cond_ea

    .line 502
    new-instance v9, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;)V

    .line 511
    .local v9, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1400(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1600(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1600(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1302(Lcom/android/calendar/AgendaExpandableListAdapter;Z)Z

    .line 517
    .end local v9           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1700(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    monitor-enter v18

    .line 518
    const/4 v15, -0x1

    .line 519
    .local v15, totalAgendaRangeStart:I
    const/4 v14, -0x1

    .line 521
    .local v14, totalAgendaRangeEnd:I
    if-eqz v5, :cond_21f

    .line 523
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1700(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    .line 537
    .local v16, x:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 597
    .end local v16           #x:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    :goto_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->updateHeaderFooter(II)V
    invoke-static {v0, v15, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1900(Lcom/android/calendar/AgendaExpandableListAdapter;II)V

    .line 611
    monitor-exit v18
    :try_end_13d
    .catchall {:try_start_f9 .. :try_end_13d} :catchall_2dc

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v17

    if-eqz v17, :cond_161

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$402(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    .line 624
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v17

    if-nez v17, :cond_36

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListView;->getAllExpanded()Z

    move-result v17

    if-eqz v17, :cond_354

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListView;->expandList()V

    goto/16 :goto_36

    .line 468
    .end local v14           #totalAgendaRangeEnd:I
    .end local v15           #totalAgendaRangeStart:I
    .restart local v11       #listPositionOffset:I
    :cond_1a4
    iget-object v0, v6, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    if-nez v17, :cond_1c6

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetChanged()V

    .line 471
    if-eqz v11, :cond_73

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/calendar/AgendaExpandableListView;->shiftSelection(I)V

    goto/16 :goto_73

    .line 474
    :cond_1c6
    iget-object v8, v6, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 475
    .local v8, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetChanged()V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I
    invoke-static {v0, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1100(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/text/format/Time;)I

    move-result v12

    .line 477
    .local v12, newPosition:I
    if-ltz v12, :cond_73

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1200(Lcom/android/calendar/AgendaExpandableListAdapter;)I

    move-result v18

    add-int v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaExpandableListView;->setSelection(I)V

    goto/16 :goto_73

    .line 487
    .end local v8           #goToTime:Landroid/text/format/Time;
    .end local v11           #listPositionOffset:I
    .end local v12           #newPosition:I
    :cond_1fa
    iget v0, v6, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_218

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;Landroid/database/Cursor;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_73

    .line 492
    :cond_218
    if-eqz p3, :cond_73

    .line 493
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_73

    .line 541
    .restart local v14       #totalAgendaRangeEnd:I
    .restart local v15       #totalAgendaRangeStart:I
    :cond_21f
    :try_start_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1700(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 542
    move-object v13, v6

    .line 545
    .local v13, querySpec:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2df

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 547
    .local v7, first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 549
    .local v10, last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_283

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_283

    .line 550
    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 553
    :cond_283
    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_2a9

    iget v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a9

    .line 554
    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 557
    :cond_2a9
    iget v15, v7, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 558
    iget v14, v10, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 566
    .end local v7           #first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v10           #last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2ad
    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_374

    goto/16 :goto_131

    .line 568
    :pswitch_2b6
    iget v15, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    goto/16 :goto_131

    .line 611
    .end local v13           #querySpec:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    :catchall_2dc
    move-exception v17

    monitor-exit v18
    :try_end_2de
    .catchall {:try_start_21f .. :try_end_2de} :catchall_2dc

    throw v17

    .line 560
    .restart local v13       #querySpec:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    :cond_2df
    :try_start_2df
    iget v15, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 561
    iget v14, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    goto :goto_2ad

    .line 574
    :pswitch_2e4
    iget v14, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    goto/16 :goto_131

    .line 580
    :pswitch_30a
    iget v15, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 581
    iget v14, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    #calls: Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I
    :try_end_352
    .catchall {:try_start_2df .. :try_end_352} :catchall_2dc

    goto/16 :goto_131

    .line 628
    .end local v13           #querySpec:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    :cond_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListView;->getAllCollapsed()Z

    move-result v17

    if-eqz v17, :cond_36

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaExpandableListView;->collapseList()V

    goto/16 :goto_36

    .line 566
    nop

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_2b6
        :pswitch_2e4
        :pswitch_30a
    .end packed-switch
.end method
