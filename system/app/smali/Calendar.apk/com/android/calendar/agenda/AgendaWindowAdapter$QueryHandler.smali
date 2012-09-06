.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 913
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 914
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .registers 10
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 1166
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1168
    :try_start_7
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2500(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1169
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1170
    .local v3, listPositionOffset:I
    if-nez v1, :cond_8d

    .line 1171
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 1180
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1d
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1181
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1182
    iput-object p2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1183
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1184
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1187
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_91

    .line 1189
    :cond_52
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1190
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1201
    :goto_5e
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2602(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1202
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

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

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1203
    .local v2, info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1204
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2612(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    goto :goto_6e

    .line 1209
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_8a
    move-exception v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_7 .. :try_end_8c} :catchall_8a

    throw v4

    .line 1176
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_8d
    :try_start_8d
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_1d

    .line 1197
    :cond_91
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5e

    .line 1206
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_9b
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1208
    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_8a

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 52
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 918
    move-object/from16 v24, p2

    check-cast v24, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 926
    .local v24, data:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 930
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 931
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1157
    :goto_1f
    return-void

    .line 936
    :cond_20
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 937
    .local v23, cursorSize:I
    if-gtz v23, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_330

    .line 938
    :cond_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v36

    .line 939
    .local v36, listPositionOffset:I
    const/16 v37, -0x1

    .line 940
    .local v37, newPosition:I
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-nez v3, :cond_29f

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 942
    if-eqz v36, :cond_63

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaListView;->shiftSelection(I)V

    .line 969
    :cond_63
    :goto_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_9e

    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_9e

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9e

    .line 971
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_8d

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_9e

    .line 972
    :cond_8d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v37

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J
    invoke-static {v4, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J

    move-result-wide v4

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 978
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e9

    .line 979
    const/16 v27, 0x0

    .line 980
    .local v27, found:Z
    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 981
    :cond_c3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_c3

    .line 984
    const/16 v27, 0x1

    .line 989
    :cond_de
    if-nez v27, :cond_e9

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const-wide/16 v4, -0x1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 995
    .end local v27           #found:Z
    :cond_e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_178

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_178

    .line 996
    const/16 v42, 0x0

    .line 997
    .local v42, tempCursor:Landroid/database/Cursor;
    const/16 v43, -0x1

    .line 1000
    .local v43, tempCursorPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_315

    .line 1001
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_142

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    new-instance v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;-><init>()V

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v4

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_312

    const/4 v3, 0x1

    :goto_13e
    iput-boolean v3, v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 1011
    move-object/from16 v42, p3

    .line 1017
    :cond_142
    :goto_142
    if-eqz v42, :cond_178

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    invoke-static {v3, v0, v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v25

    .line 1020
    .local v25, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v8

    const-wide/16 v10, 0x2

    move-object/from16 v0, v25

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v25

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, -0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v21}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 1029
    .end local v25           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v36           #listPositionOffset:I
    .end local v37           #newPosition:I
    .end local v42           #tempCursor:Landroid/database/Cursor;
    .end local v43           #tempCursorPosition:I
    :cond_178
    :goto_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_1c0

    .line 1030
    new-instance v30, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;)V

    .line 1038
    .local v30, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaListView;->addFooterView(Landroid/view/View;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    .line 1043
    .end local v30           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    monitor-enter v4

    .line 1044
    const/16 v46, -0x1

    .line 1045
    .local v46, totalAgendaRangeStart:I
    const/16 v45, -0x1

    .line 1047
    .local v45, totalAgendaRangeEnd:I
    if-eqz v23, :cond_347

    .line 1049
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1053
    .local v47, x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v5, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static {v3, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1902(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1054
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_335

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2008(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    .line 1060
    :cond_1f3
    :goto_1f3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v46, v0

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v45, v0

    .line 1110
    .end local v47           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_217
    :goto_217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v46

    move/from16 v1, v45

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v3, v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_22b
    .catchall {:try_start_1cf .. :try_end_22b} :catchall_344

    .line 1115
    :try_start_22b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1116
    .local v32, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v32, :cond_43a

    .line 1117
    new-instance v44, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v44, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 1119
    .local v38, now:J
    move-object/from16 v0, v44

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1120
    move-object/from16 v0, v44

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v38

    invoke-static {v0, v1, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v22

    .line 1121
    .local v22, JulianToday:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .line 1122
    .local v34, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    const/16 v28, 0x0

    .line 1123
    .local v28, foundDay:Z
    :cond_26d
    :goto_26d
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43a

    if-nez v28, :cond_43a

    .line 1124
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .end local v32           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    check-cast v32, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1125
    .restart local v32       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/16 v31, 0x0

    .local v31, i:I
    :goto_27d
    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_26d

    .line 1126
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_436

    .line 1127
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->setAsFirstDayAfterYesterday(I)V
    :try_end_29c
    .catchall {:try_start_22b .. :try_end_29c} :catchall_471

    .line 1128
    const/16 v28, 0x1

    .line 1129
    goto :goto_26d

    .line 946
    .end local v22           #JulianToday:I
    .end local v28           #foundDay:Z
    .end local v31           #i:I
    .end local v32           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v34           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .end local v38           #now:J
    .end local v44           #time:Landroid/text/format/Time;
    .end local v45           #totalAgendaRangeEnd:I
    .end local v46           #totalAgendaRangeStart:I
    .restart local v36       #listPositionOffset:I
    .restart local v37       #newPosition:I
    :cond_29f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v29, v0

    .line 947
    .local v29, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    move-object/from16 v0, v29

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I
    invoke-static {v3, v0, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I

    move-result v37

    .line 949
    if-ltz v37, :cond_63

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d2

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->smoothScrollBy(II)V

    .line 953
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    add-int/lit8 v4, v37, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I
    invoke-static {v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 955
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 956
    .local v7, actualTime:Landroid/text/format/Time;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto/16 :goto_63

    .line 1009
    .end local v7           #actualTime:Landroid/text/format/Time;
    .end local v29           #goToTime:Landroid/text/format/Time;
    .restart local v42       #tempCursor:Landroid/database/Cursor;
    .restart local v43       #tempCursorPosition:I
    :cond_312
    const/4 v3, 0x0

    goto/16 :goto_13e

    .line 1013
    :cond_315
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_142

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v37

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;

    move-result-object v42

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v37

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    move-result v43

    goto/16 :goto_142

    .line 1025
    .end local v36           #listPositionOffset:I
    .end local v37           #newPosition:I
    .end local v42           #tempCursor:Landroid/database/Cursor;
    .end local v43           #tempCursorPosition:I
    :cond_330
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_178

    .line 1056
    .restart local v45       #totalAgendaRangeEnd:I
    .restart local v46       #totalAgendaRangeStart:I
    .restart local v47       #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_335
    :try_start_335
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v3, :cond_1f3

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2108(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    goto/16 :goto_1f3

    .line 1151
    .end local v47           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :catchall_344
    move-exception v3

    monitor-exit v4
    :try_end_346
    .catchall {:try_start_335 .. :try_end_346} :catchall_344

    throw v3

    .line 1063
    :cond_347
    :try_start_347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1066
    .local v41, querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e6

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1068
    .local v26, first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1070
    .local v35, last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-gt v3, v5, :cond_39d

    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-ge v3, v5, :cond_39d

    .line 1071
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1074
    :cond_39d
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    add-int/lit8 v5, v5, 0x1

    if-gt v3, v5, :cond_3bb

    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v3, v5, :cond_3bb

    .line 1075
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1078
    :cond_3bb
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v46, v0

    .line 1079
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v45, v0

    .line 1087
    .end local v26           #first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v35           #last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_3c7
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v3, :pswitch_data_478

    .line 1104
    :goto_3ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1904(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_217

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_217

    .line 1081
    :cond_3e6
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v46, v0

    .line 1082
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v45, v0

    goto :goto_3c7

    .line 1089
    :pswitch_3f3
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v46, v0

    .line 1090
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x3c

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_3ce

    .line 1093
    :pswitch_404
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v45, v0

    .line 1094
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x3c

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_3ce

    .line 1097
    :pswitch_415
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v46, v0

    .line 1098
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v45, v0

    .line 1099
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x1e

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1100
    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x1e

    move-object/from16 v0, v41

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_435
    .catchall {:try_start_347 .. :try_end_435} :catchall_344

    goto :goto_3ce

    .line 1125
    .end local v41           #querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .restart local v22       #JulianToday:I
    .restart local v28       #foundDay:Z
    .restart local v31       #i:I
    .restart local v32       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v34       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .restart local v38       #now:J
    .restart local v44       #time:Landroid/text/format/Time;
    :cond_436
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_27d

    .line 1134
    .end local v22           #JulianToday:I
    .end local v28           #foundDay:Z
    .end local v31           #i:I
    .end local v34           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .end local v38           #now:J
    .end local v44           #time:Landroid/text/format/Time;
    :cond_43a
    :try_start_43a
    monitor-exit v5
    :try_end_43b
    .catchall {:try_start_43a .. :try_end_43b} :catchall_471

    .line 1137
    :try_start_43b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .line 1138
    .local v33, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :goto_447
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46e

    .line 1139
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1140
    .local v40, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v40

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z
    invoke-static {v3, v5, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2300(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z

    move-result v3

    if-nez v3, :cond_474

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v40

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2400(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 1151
    .end local v40           #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_46e
    monitor-exit v4
    :try_end_46f
    .catchall {:try_start_43b .. :try_end_46f} :catchall_344

    goto/16 :goto_1f

    .line 1134
    .end local v32           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v33           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :catchall_471
    move-exception v3

    :try_start_472
    monitor-exit v5
    :try_end_473
    .catchall {:try_start_472 .. :try_end_473} :catchall_471

    :try_start_473
    throw v3

    .line 1147
    .restart local v32       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v33       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v40       #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_474
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->remove()V
    :try_end_477
    .catchall {:try_start_473 .. :try_end_477} :catchall_344

    goto :goto_447

    .line 1087
    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_3f3
        :pswitch_404
        :pswitch_415
    .end packed-switch
.end method
