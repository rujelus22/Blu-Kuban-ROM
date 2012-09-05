.class Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ParticipantScheduleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    .line 1528
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1529
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 21
    .parameter "token"
    .parameter "cookie"
    .parameter "psCursor"

    .prologue
    .line 1533
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz p3, :cond_246

    .line 1537
    :try_start_7
    const-string v13, "to"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1538
    .local v6, indexTo:I
    const-string v13, "displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1539
    .local v4, indexName:I
    const-string v13, "mergedFreeBusy"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1541
    .local v5, indexStatus:I
    const/4 v12, 0x0

    .line 1542
    .local v12, to:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1543
    .local v2, displayName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1545
    .local v11, status:Ljava/lang/String;
    :cond_22
    :goto_22
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 1547
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1548
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1549
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1551
    if-eqz v11, :cond_42

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4a

    .line 1552
    :cond_42
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    #getter for: Lcom/android/calendar/ParticipantScheduleActivity;->noData:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$100(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v11

    .line 1556
    :cond_4a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    #getter for: Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$200(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 1557
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_67

    .line 1558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    .line 1560
    :cond_67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14
    :try_end_70
    .catchall {:try_start_7 .. :try_end_70} :catchall_71

    goto :goto_22

    .line 1627
    .end local v2           #displayName:Ljava/lang/String;
    .end local v4           #indexName:I
    .end local v5           #indexStatus:I
    .end local v6           #indexTo:I
    .end local v11           #status:Ljava/lang/String;
    .end local v12           #to:Ljava/lang/String;
    :catchall_71
    move-exception v13

    if-eqz p3, :cond_77

    .line 1628
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v13

    .line 1562
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v4       #indexName:I
    .restart local v5       #indexStatus:I
    .restart local v6       #indexTo:I
    .restart local v11       #status:Ljava/lang/String;
    .restart local v12       #to:Ljava/lang/String;
    :cond_78
    const/4 v3, 0x0

    .local v3, i:I
    :goto_79
    :try_start_79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_22

    .line 1563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 1564
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a0

    .line 1565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    add-int/lit8 v14, v3, 0x1

    aput-object v2, v13, v14

    .line 1567
    :cond_a0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    add-int/lit8 v14, v3, 0x1

    aput-object v11, v13, v14

    .line 1562
    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 1573
    .end local v3           #i:I
    :cond_ad
    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " newNames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v15, v15, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  newNames[1]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v15, v15, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    .local v7, nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    .local v10, scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_100
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_13c

    .line 1582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    #getter for: Lcom/android/calendar/ParticipantScheduleActivity;->noData:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$100(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_139

    .line 1583
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    :cond_139
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    .line 1590
    :cond_13c
    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nameStr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nameStr.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scheduleStr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", scheduleStr.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    if-eqz v7, :cond_198

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_198

    if-eqz v10, :cond_198

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1b6

    .line 1594
    :cond_198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->showErrorMessage()V

    .line 1595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    #getter for: Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z
    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$000(Lcom/android/calendar/ParticipantScheduleActivity;)Z

    move-result v13

    if-nez v13, :cond_1b0

    .line 1596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->finish()V
    :try_end_1b0
    .catchall {:try_start_79 .. :try_end_1b0} :catchall_71

    .line 1627
    :cond_1b0
    if-eqz p3, :cond_1b5

    .line 1628
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1630
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #indexName:I
    .end local v5           #indexStatus:I
    .end local v6           #indexTo:I
    .end local v7           #nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #status:Ljava/lang/String;
    .end local v12           #to:Ljava/lang/String;
    :cond_1b5
    :goto_1b5
    return-void

    .line 1601
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #indexName:I
    .restart local v5       #indexStatus:I
    .restart local v6       #indexTo:I
    .restart local v7       #nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #status:Ljava/lang/String;
    .restart local v12       #to:Ljava/lang/String;
    :cond_1b6
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ParticipantScheduleView;

    .line 1602
    .local v1, current:Lcom/android/calendar/ParticipantScheduleView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->doAnimate:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_26c

    .line 1603
    iget-object v13, v1, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v13

    if-eqz v13, :cond_24d

    .line 1604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1615
    :goto_1fa
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    #setter for: Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v13, v14}, Lcom/android/calendar/ParticipantScheduleActivity;->access$302(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 1616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iput-object v7, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mNameStr:Ljava/util/ArrayList;

    .line 1617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iput-object v10, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleStr:Ljava/util/ArrayList;

    .line 1618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/ParticipantScheduleView;

    .line 1619
    .local v8, next:Lcom/android/calendar/ParticipantScheduleView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v7, v10, v14}, Lcom/android/calendar/ParticipantScheduleView;->setSelectedDay(Landroid/text/format/Time;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 1621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->setArrowButtonVisibility()V
    :try_end_246
    .catchall {:try_start_1b6 .. :try_end_246} :catchall_71

    .line 1627
    .end local v1           #current:Lcom/android/calendar/ParticipantScheduleView;
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #indexName:I
    .end local v5           #indexStatus:I
    .end local v6           #indexTo:I
    .end local v7           #nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #next:Lcom/android/calendar/ParticipantScheduleView;
    .end local v10           #scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #status:Ljava/lang/String;
    .end local v12           #to:Ljava/lang/String;
    :cond_246
    if-eqz p3, :cond_1b5

    .line 1628
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1b5

    .line 1607
    .restart local v1       #current:Lcom/android/calendar/ParticipantScheduleView;
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #indexName:I
    .restart local v5       #indexStatus:I
    .restart local v6       #indexTo:I
    .restart local v7       #nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #status:Ljava/lang/String;
    .restart local v12       #to:Ljava/lang/String;
    :cond_24d
    :try_start_24d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1fa

    .line 1611
    :cond_26c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_280
    .catchall {:try_start_24d .. :try_end_280} :catchall_71

    goto/16 :goto_1fa
.end method
