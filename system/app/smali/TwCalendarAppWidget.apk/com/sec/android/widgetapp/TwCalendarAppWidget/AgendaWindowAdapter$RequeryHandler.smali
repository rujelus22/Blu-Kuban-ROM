.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    .line 1235
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1236
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1240
    move-object v0, p2

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1242
    .local v0, data:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$400(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1244
    if-eqz p3, :cond_10

    .line 1245
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1284
    :cond_10
    :goto_10
    return-void

    .line 1250
    :cond_11
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v7

    monitor-enter v7

    .line 1251
    :try_start_18
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1252
    .local v4, time:Landroid/text/format/Time;
    iget v6, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v4, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1253
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 1254
    .local v5, time2:Landroid/text/format/Time;
    iget v6, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1257
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1258
    .local v1, dayInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 1259
    monitor-exit v7

    goto :goto_10

    .line 1273
    .end local v1           #dayInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #time2:Landroid/text/format/Time;
    :catchall_40
    move-exception v6

    monitor-exit v7
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_40

    throw v6

    .line 1261
    .restart local v1       #dayInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #time:Landroid/text/format/Time;
    .restart local v5       #time2:Landroid/text/format/Time;
    :cond_43
    :try_start_43
    iput-object p3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1262
    iget-object v6, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->changeCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1263
    iget-object v6, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getCount()I

    move-result v6

    iput v6, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1265
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v6, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1502(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I

    .line 1266
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1267
    .local v3, info3:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I

    move-result v6

    iput v6, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1268
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v8, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v6, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1512(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I

    goto :goto_62

    .line 1271
    .end local v3           #info3:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7e
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1273
    monitor-exit v7
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_40

    .line 1280
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1281
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 1282
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->access$1102(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    goto/16 :goto_10
.end method
