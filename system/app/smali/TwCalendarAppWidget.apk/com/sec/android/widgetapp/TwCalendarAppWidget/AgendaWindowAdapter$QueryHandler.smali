.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    .line 1014
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1015
    return-void
.end method

.method private processNewCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .registers 10
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 1186
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1188
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v6, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1189
    .local v1, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1190
    .local v3, listPositionOffset:I
    if-nez v1, :cond_98

    .line 1191
    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1300(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/app/Activity;)V

    .line 1192
    .restart local v1       #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNotificationMoment:Z
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1400(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->setNotificationMoment(Z)V

    .line 1200
    :goto_28
    iget v4, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1201
    iget v4, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1202
    iput-object p2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1203
    iget-object v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->changeCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1204
    iget-object v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1207
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5d

    iget v6, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_9c

    .line 1208
    :cond_5d
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1209
    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1220
    :goto_69
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1502(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I

    .line 1221
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1222
    .local v2, info3:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1223
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1512(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I

    goto :goto_79

    .line 1228
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_95
    move-exception v4

    monitor-exit v5
    :try_end_97
    .catchall {:try_start_7 .. :try_end_97} :catchall_95

    throw v4

    .line 1196
    .restart local v1       #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_98
    :try_start_98
    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_28

    .line 1216
    :cond_9c
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_69

    .line 1225
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_a6
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1602(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1227
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_95

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 25
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1019
    move-object/from16 v5, p2

    check-cast v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;

    .line 1031
    .local v5, data:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$400(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1033
    if-eqz p3, :cond_13

    .line 1034
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1177
    :cond_13
    :goto_13
    return-void

    .line 1042
    :cond_14
    const/4 v4, 0x0

    .line 1043
    .local v4, cursorSize:I
    if-eqz p3, :cond_1b

    .line 1044
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 1047
    :cond_1b
    if-gtz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e2

    .line 1048
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v9

    .line 1050
    .local v9, listPositionOffset:I
    iget-object v15, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-nez v15, :cond_b6

    .line 1051
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1052
    if-eqz v9, :cond_4b

    .line 1053
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->shiftSelection(I)V

    .line 1078
    .end local v9           #listPositionOffset:I
    :cond_4b
    :goto_4b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v16

    monitor-enter v16

    .line 1079
    const/4 v13, -0x1

    .line 1080
    .local v13, totalAgendaRangeStart:I
    const/4 v12, -0x1

    .line 1082
    .local v12, totalAgendaRangeEnd:I
    if-eqz v4, :cond_111

    .line 1084
    :try_start_58
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;

    .line 1088
    .local v14, x:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    iget v15, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_101

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$808(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I

    .line 1094
    :cond_75
    :goto_75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v13, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v12, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1166
    .end local v14           #x:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    :goto_95
    monitor-exit v16
    :try_end_96
    .catchall {:try_start_58 .. :try_end_96} :catchall_10e

    .line 1173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    const/16 v16, 0x0

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static/range {v15 .. v16}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1102(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    goto/16 :goto_13

    .line 1055
    .end local v12           #totalAgendaRangeEnd:I
    .end local v13           #totalAgendaRangeStart:I
    .restart local v9       #listPositionOffset:I
    :cond_b6
    iget-object v7, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 1056
    .local v7, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I
    invoke-static {v15, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v10

    .line 1058
    .local v10, newPosition:I
    if-ltz v10, :cond_4b

    .line 1059
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$600(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I

    move-result v16

    add-int v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setSelection(I)V

    goto/16 :goto_4b

    .line 1067
    .end local v7           #goToTime:Landroid/text/format/Time;
    .end local v9           #listPositionOffset:I
    .end local v10           #newPosition:I
    :cond_e2
    iget v15, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_fa

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    .line 1069
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4b

    .line 1072
    :cond_fa
    if-eqz p3, :cond_4b

    .line 1073
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4b

    .line 1090
    .restart local v12       #totalAgendaRangeEnd:I
    .restart local v13       #totalAgendaRangeStart:I
    .restart local v14       #x:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    :cond_101
    :try_start_101
    iget v15, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v15, :cond_75

    .line 1091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$908(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I

    goto/16 :goto_75

    .line 1166
    .end local v14           #x:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    :catchall_10e
    move-exception v15

    monitor-exit v16
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_10e

    throw v15

    .line 1098
    :cond_111
    :try_start_111
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 1099
    move-object v11, v5

    .line 1102
    .local v11, querySpec:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1a6

    .line 1103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1104
    .local v6, first:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1106
    .local v8, last:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget v15, v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/lit8 v15, v15, -0x1

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v15, v0, :cond_161

    iget v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    iget v0, v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_161

    .line 1107
    iget v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    iput v15, v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1110
    :cond_161
    iget v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    iget v0, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-gt v15, v0, :cond_17b

    iget v15, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_17b

    .line 1111
    iget v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    iput v15, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1114
    :cond_17b
    iget v13, v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1115
    iget v12, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1123
    .end local v6           #first:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .end local v8           #last:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :goto_17f
    iget v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v15, :pswitch_data_20a

    goto/16 :goto_95

    .line 1125
    :pswitch_186
    iget v13, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, -0x3c

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v15, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;IZII)I

    move-result v15

    iput v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    goto/16 :goto_95

    .line 1117
    :cond_1a6
    iget v13, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1118
    iget v12, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_17f

    .line 1130
    :pswitch_1ab
    iget v12, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x3c

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v15, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;IZII)I

    move-result v15

    iput v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    goto/16 :goto_95

    .line 1135
    :pswitch_1cb
    iget v13, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1136
    iget v12, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, -0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v15, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;IZII)I

    move-result v15

    iput v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I
    invoke-static {v15, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;IZII)I

    move-result v15

    iput v15, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_207
    .catchall {:try_start_111 .. :try_end_207} :catchall_10e

    goto/16 :goto_95

    .line 1123
    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_186
        :pswitch_1ab
        :pswitch_1cb
    .end packed-switch
.end method
