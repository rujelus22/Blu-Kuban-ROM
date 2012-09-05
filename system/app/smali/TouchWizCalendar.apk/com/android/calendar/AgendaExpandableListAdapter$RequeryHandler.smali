.class Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    .line 734
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 735
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 739
    move-object v0, p2

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 741
    .local v0, data:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$1000(Lcom/android/calendar/AgendaExpandableListAdapter;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 743
    if-eqz p3, :cond_11

    .line 744
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_11
    :goto_11
    return-void

    .line 749
    :cond_12
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2200(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v7

    monitor-enter v7

    .line 750
    :try_start_19
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 751
    .local v4, time:Landroid/text/format/Time;
    iget v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v4, v6}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 752
    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 753
    .local v5, time2:Landroid/text/format/Time;
    iget v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 755
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2200(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 756
    .local v1, dayInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 757
    monitor-exit v7

    goto :goto_11

    .line 771
    .end local v1           #dayInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #time2:Landroid/text/format/Time;
    :catchall_57
    move-exception v6

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_19 .. :try_end_59} :catchall_57

    throw v6

    .line 759
    .restart local v1       #dayInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #time:Landroid/text/format/Time;
    .restart local v5       #time2:Landroid/text/format/Time;
    :cond_5a
    :try_start_5a
    iput-object p3, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 760
    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v6, v0}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 761
    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v6

    iput v6, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 763
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    const/4 v8, 0x0

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I
    invoke-static {v6, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2002(Lcom/android/calendar/AgendaExpandableListAdapter;I)I

    .line 764
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 765
    .local v3, info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2000(Lcom/android/calendar/AgendaExpandableListAdapter;)I

    move-result v6

    iput v6, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 766
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    iget v8, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v6, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$2012(Lcom/android/calendar/AgendaExpandableListAdapter;I)I

    goto :goto_79

    .line 769
    .end local v3           #info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_95
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetChanged()V

    .line 771
    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_5a .. :try_end_9b} :catchall_57

    .line 778
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 779
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #getter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;->onLoadCompleted()V

    .line 780
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->this$0:Lcom/android/calendar/AgendaExpandableListAdapter;

    #setter for: Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    invoke-static {v6, v9}, Lcom/android/calendar/AgendaExpandableListAdapter;->access$402(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    goto/16 :goto_11
.end method
