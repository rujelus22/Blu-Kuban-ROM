.class public Lcom/android/task/vcal/VCalManager;
.super Ljava/lang/Object;
.source "VCalManager.java"


# instance fields
.field private mCalendars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private mVCalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 103
    const-string v0, "VCalManager"

    const-string v1, "VCalManager(Context context)"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_1c

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_1c
    iput-object p1, p0, Lcom/android/task/vcal/VCalManager;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 97
    const-string v0, "VCalManager"

    const-string v1, "VCalManager(Context context, Uri uri)"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/android/task/vcal/VCalManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/task/vcal/VCalManager;->mUri:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method private static convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .parameter "mills"
    .parameter "timezone"
    .parameter "day"

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, time:Landroid/text/format/Time;
    if-eqz p2, :cond_1c

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 624
    new-instance v0, Landroid/text/format/Time;

    .end local v0           #time:Landroid/text/format/Time;
    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v0       #time:Landroid/text/format/Time;
    :goto_10
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 630
    if-eqz p3, :cond_22

    .line 631
    const-string v2, "%Y%m%d"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, timeStr:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-object v1

    .line 626
    .end local v1           #timeStr:Ljava/lang/String;
    :cond_1c
    new-instance v0, Landroid/text/format/Time;

    .end local v0           #time:Landroid/text/format/Time;
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .restart local v0       #time:Landroid/text/format/Time;
    goto :goto_10

    .line 633
    :cond_22
    const-string v2, "%Y%m%dT%H%M%S"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .restart local v1       #timeStr:Ljava/lang/String;
    if-eqz p2, :cond_1b

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b
.end method

.method private static convertVTodo2TaskValues(Lcom/android/task/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 13
    .parameter "vnode"
    .parameter "calId"
    .parameter "timezoneId"

    .prologue
    .line 548
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v5, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_c

    .line 551
    const-string v6, "eventTimezone"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_c
    iget-object v6, p0, Lcom/android/task/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/task/vcal/pim/PropertyNode;

    .line 555
    .local v3, prop:Lcom/android/task/vcal/pim/PropertyNode;
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 556
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 557
    .local v4, time:Landroid/text/format/Time;
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "DESCRIPTION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 558
    const-string v6, "body"

    iget-object v7, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 559
    :cond_41
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "DTEND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 561
    :try_start_4b
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 562
    const-string v6, "UTC"

    iput-object v6, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 563
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 564
    const-string v6, "due_date"

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_66} :catch_67

    goto :goto_12

    .line 565
    :catch_67
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 569
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6c
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "DTSTART"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 571
    :try_start_76
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 572
    const-string v6, "UTC"

    iput-object v6, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 573
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 574
    const-string v6, "start_date"

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_91} :catch_92

    goto :goto_12

    .line 575
    :catch_92
    move-exception v0

    .line 577
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 580
    .end local v0           #e:Ljava/lang/Exception;
    :cond_98
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "SUMMARY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 581
    const-string v6, "subject"

    iget-object v7, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 583
    :cond_b3
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "LOCATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 584
    const-string v6, "eventLocation"

    iget-object v7, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 585
    :cond_ce
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "DUE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 587
    :try_start_d8
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 588
    const-string v6, "UTC"

    iput-object v6, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 589
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 590
    const-string v6, "due_date"

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f3} :catch_f5

    goto/16 :goto_12

    .line 591
    :catch_f5
    move-exception v0

    .line 593
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 595
    .end local v0           #e:Ljava/lang/Exception;
    :cond_fb
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "RRULE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 596
    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 598
    .local v1, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_10a
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 599
    const-string v6, "rrule"

    iget-object v7, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_116} :catch_118

    goto/16 :goto_12

    .line 600
    :catch_118
    move-exception v0

    .line 601
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 603
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :cond_11e
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_143

    .line 605
    :try_start_128
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 606
    const-string v6, "lastDate"

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_13b} :catch_13d

    goto/16 :goto_12

    .line 607
    :catch_13d
    move-exception v0

    .line 609
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 611
    .end local v0           #e:Ljava/lang/Exception;
    :cond_143
    iget-object v6, v3, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v7, "PRIORITY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 612
    const-string v6, "importance"

    iget-object v7, v3, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_12

    .line 617
    .end local v3           #prop:Lcom/android/task/vcal/pim/PropertyNode;
    .end local v4           #time:Landroid/text/format/Time;
    :cond_15e
    return-object v5
.end method

.method private loadTodo(Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;Landroid/database/Cursor;)V
    .registers 10
    .parameter "todoStruct"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 720
    iget-object v1, p0, Lcom/android/task/vcal/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->uid:Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    .line 724
    .local v0, colIndex:I
    const-string v1, "complete"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 725
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_90

    move v1, v2

    :goto_19
    iput-boolean v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->complete:Z

    .line 728
    const-string v1, "subject"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 729
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->subject:Ljava/lang/String;

    .line 732
    const-string v1, "start_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 733
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 734
    iput-object v6, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->dtstart:Ljava/lang/String;

    .line 741
    :goto_35
    const-string v1, "due_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 742
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 743
    iput-object v6, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->due:Ljava/lang/String;

    .line 750
    :goto_43
    const-string v1, "importance"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 751
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->priority:I

    .line 754
    const-string v1, "reminder_set"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 755
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_ac

    :goto_5b
    iput-boolean v2, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderSet:Z

    .line 756
    const-string v1, "reminder_time"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 757
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderMillis:Ljava/lang/Long;

    .line 758
    iget-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_83

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->reminderMillis:Ljava/lang/Long;

    .line 763
    :cond_83
    const-string v1, "body"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 764
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->note:Ljava/lang/String;

    .line 765
    return-void

    :cond_90
    move v1, v3

    .line 725
    goto :goto_19

    .line 736
    :cond_92
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "UTC"

    invoke-static {v4, v5, v1, v3}, Lcom/android/task/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->dtstart:Ljava/lang/String;

    goto :goto_35

    .line 745
    :cond_9f
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "UTC"

    invoke-static {v4, v5, v1, v3}, Lcom/android/task/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;->due:Ljava/lang/String;

    goto :goto_43

    :cond_ac
    move v2, v3

    .line 755
    goto :goto_5b
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 191
    :cond_5
    :goto_5
    return-object v2

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/vcal/VCalManager;->mUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 161
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_44

    move-result v0

    if-nez v0, :cond_21

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 165
    :cond_21
    :try_start_21
    new-instance v7, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;

    invoke-direct {v7}, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;-><init>()V

    .line 176
    .local v7, calStruct:Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;
    new-instance v10, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;

    invoke-direct {v10}, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;-><init>()V

    .line 177
    .local v10, todoStruct:Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;
    invoke-direct {p0, v10, v6}, Lcom/android/task/vcal/VCalManager;->loadTodo(Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;Landroid/database/Cursor;)V

    .line 178
    invoke-virtual {v7, v10}, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;->addTodoList(Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_44

    .line 181
    :try_start_31
    new-instance v8, Lcom/android/task/vcal/pim/vcalendar/VCalComposer;

    invoke-direct {v8}, Lcom/android/task/vcal/pim/vcalendar/VCalComposer;-><init>()V

    .line 183
    .local v8, composer:Lcom/android/task/vcal/pim/vcalendar/VCalComposer;
    const/4 v0, 0x1

    invoke-virtual {v8, v7, v0}, Lcom/android/task/vcal/pim/vcalendar/VCalComposer;->createVCal(Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3f

    move-result-object v2

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 186
    .end local v8           #composer:Lcom/android/task/vcal/pim/vcalendar/VCalComposer;
    :catch_3f
    move-exception v9

    .line 191
    .local v9, e:Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v7           #calStruct:Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #todoStruct:Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;
    :catchall_44
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getVTodoDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 852
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getVTodoDtStart(I)Ljava/lang/Long;
    .registers 4
    .parameter "index"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 838
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "start_date"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 840
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getVTodoDue(I)Ljava/lang/Long;
    .registers 4
    .parameter "index"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 845
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "due_date"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 847
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getVTodoPriority(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 831
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "importance"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public getVTodoSummary(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 823
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 825
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 23
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v9, Lcom/android/task/vcal/pim/vcalendar/VCalParser;

    invoke-direct {v9}, Lcom/android/task/vcal/pim/vcalendar/VCalParser;-><init>()V

    .line 496
    .local v9, parser:Lcom/android/task/vcal/pim/vcalendar/VCalParser;
    new-instance v2, Lcom/android/task/vcal/pim/VDataBuilder;

    invoke-direct {v2}, Lcom/android/task/vcal/pim/VDataBuilder;-><init>()V

    .line 498
    .local v2, builder:Lcom/android/task/vcal/pim/VDataBuilder;
    if-nez p1, :cond_16

    .line 499
    const-string v18, "VCalManager"

    const-string v19, "VCalendar parse data null"

    invoke-static/range {v18 .. v19}, Lcom/android/task/Utils$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v18, 0x0

    .line 544
    :goto_15
    return-object v18

    .line 504
    :cond_16
    :try_start_16
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/task/vcal/pim/VDataBuilder;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_be

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 512
    const/4 v14, 0x0

    .line 513
    .local v14, timezoneId:Ljava/lang/String;
    iget-object v0, v2, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ea

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/task/vcal/pim/VNode;

    .line 515
    .local v17, vnode:Lcom/android/task/vcal/pim/VNode;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/task/vcal/pim/VNode;->VName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "VCALENDAR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c3

    .line 517
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/task/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/task/vcal/pim/PropertyNode;

    .line 518
    .local v10, prop:Lcom/android/task/vcal/pim/PropertyNode;
    iget-object v0, v10, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_51

    .line 519
    iget-object v0, v10, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "TZ"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_51

    .line 520
    iget-object v13, v10, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 521
    .local v13, timezone:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 522
    .local v11, time:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 523
    .local v12, times:[Ljava/lang/String;
    if-eqz v12, :cond_51

    .line 524
    const/16 v18, 0x0

    aget-object v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 525
    .local v4, hour:Ljava/lang/Integer;
    const/16 v18, 0x1

    aget-object v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 526
    .local v7, minute:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const v19, 0x36ee80

    mul-int v18, v18, v19

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const v20, 0xea60

    mul-int v19, v19, v20

    add-int v8, v18, v19

    .line 527
    .local v8, offset:I
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b3

    .line 528
    mul-int/lit8 v8, v8, -0x1

    .line 530
    :cond_b3
    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, timezones:[Ljava/lang/String;
    if-eqz v15, :cond_51

    .line 532
    const/16 v18, 0x0

    aget-object v14, v15, v18

    goto :goto_51

    .line 505
    .end local v4           #hour:Ljava/lang/Integer;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #minute:Ljava/lang/Integer;
    .end local v8           #offset:I
    .end local v10           #prop:Lcom/android/task/vcal/pim/PropertyNode;
    .end local v11           #time:Ljava/lang/String;
    .end local v12           #times:[Ljava/lang/String;
    .end local v13           #timezone:Ljava/lang/String;
    .end local v14           #timezoneId:Ljava/lang/String;
    .end local v15           #timezones:[Ljava/lang/String;
    .end local v17           #vnode:Lcom/android/task/vcal/pim/VNode;
    :catch_be
    move-exception v3

    .line 507
    .local v3, e:Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_15

    .line 538
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v14       #timezoneId:Ljava/lang/String;
    .restart local v17       #vnode:Lcom/android/task/vcal/pim/VNode;
    :cond_c3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/task/vcal/pim/VNode;->VName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "VTODO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 539
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14}, Lcom/android/task/vcal/VCalManager;->convertVTodo2TaskValues(Lcom/android/task/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v16

    .line 540
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 544
    .end local v16           #values:Landroid/content/ContentValues;
    .end local v17           #vnode:Lcom/android/task/vcal/pim/VNode;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_fa

    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    goto/16 :goto_15
.end method

.method public save()Z
    .registers 7

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 254
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 256
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "rrule"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "rrule"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 257
    const-string v4, "dtend"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 261
    :cond_28
    const-string v4, "accountKey"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v4, "accountName"

    const-string v5, "My task"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v4, "_sync_dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    iget-object v4, p0, Lcom/android/task/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 303
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_7

    .line 304
    const/4 v1, 0x1

    goto :goto_7

    .line 308
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_53
    return v1
.end method

.method public setVCalValues(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "vCalValues"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v0, p0, Lcom/android/task/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method
