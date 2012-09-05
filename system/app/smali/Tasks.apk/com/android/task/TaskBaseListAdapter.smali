.class public abstract Lcom/android/task/TaskBaseListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "TaskBaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 81
    const v0, 0x7f03000a

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;I)V

    .line 82
    const-string v0, "TaskBaseListAdapter"

    const-string v1, "======== TaskBaseListAdapter(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 87
    const-string v0, "TaskBaseListAdapter"

    const-string v1, "======== TaskBaseListAdapter(Context, int) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 92
    const-string v0, "TaskBaseListAdapter"

    const-string v1, "======== TaskBaseListAdapter(Context, int, Cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 7
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 97
    const-string v0, "TaskBaseListAdapter"

    const-string v1, "======== TaskBaseListAdapter(Context, int, Cursor, boolean) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/android/task/TaskBaseListAdapter;->context:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskBaseListAdapter;ZJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/task/TaskBaseListAdapter;->saveCompleteState(ZJ)V

    return-void
.end method

.method private bindAccountColorBar(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 6
    .parameter "cache"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "accountKey"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 493
    .local v0, colIndex:I
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->accountColorBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 494
    return-void
.end method

.method private bindDDay(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 15
    .parameter "cache"

    .prologue
    .line 557
    iget-object v11, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v12, "due_date"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 558
    .local v0, colIndex:I
    iget-object v11, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 560
    .local v5, mdueMillis:J
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 561
    .local v9, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 562
    .local v7, now:J
    invoke-virtual {v9, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 563
    iget-wide v11, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v7, v8, v11, v12}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v10

    .line 564
    .local v10, today:I
    invoke-virtual {v9, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 565
    iget-wide v11, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v11, v12}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v4

    .line 567
    .local v4, dueDay:I
    if-lt v4, v10, :cond_5b

    .line 568
    sub-int v2, v4, v10

    .line 569
    .local v2, dday:I
    iget-object v11, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, dMinusString:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, ddayStr:Ljava/lang/String;
    iget-object v11, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v11, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    .end local v1           #dMinusString:Ljava/lang/String;
    .end local v2           #dday:I
    .end local v3           #ddayStr:Ljava/lang/String;
    :goto_5a
    return-void

    .line 574
    :cond_5b
    iget-object v11, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5a
.end method

.method private bindDueDate(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 9
    .parameter "cache"

    .prologue
    const/4 v6, 0x0

    .line 507
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "due_date"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, colIndex:I
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 509
    iget-object v4, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :goto_23
    return-void

    .line 511
    :cond_24
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 512
    .local v1, dueMillis:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 513
    .local v3, t:Landroid/text/format/Time;
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 514
    iget-object v4, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v6, v5}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method

.method private bindPriority(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 6
    .parameter "cache"

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "importance"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, colIndex:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 536
    :goto_12
    return-void

    .line 523
    :pswitch_13
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 527
    :pswitch_21
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 530
    :pswitch_28
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_12

    .line 521
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_13
        :pswitch_21
        :pswitch_28
    .end packed-switch
.end method

.method private bindReminder(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 6
    .parameter "cache"

    .prologue
    const/4 v3, 0x4

    .line 539
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "reminder_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, colIndex:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 551
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :goto_17
    return-void

    .line 543
    :pswitch_18
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 548
    :pswitch_1e
    iget-object v1, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 541
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private bindSubject(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 6
    .parameter "cache"

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "subject"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, colIndex:I
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, subject:Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 501
    :cond_1c
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    :cond_29
    iget-object v2, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .parameter "uri"

    .prologue
    .line 682
    new-instance v5, Lcom/android/task/vcal/VCalManager;

    iget-object v9, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9, p1}, Lcom/android/task/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 684
    .local v5, vcs:Lcom/android/task/vcal/VCalManager;
    invoke-virtual {v5}, Lcom/android/task/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, vcsData:Ljava/lang/String;
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_15

    .line 686
    :cond_13
    const/4 v4, 0x0

    .line 711
    :cond_14
    :goto_14
    return-object v4

    .line 689
    :cond_15
    const/4 v4, 0x0

    .line 690
    .local v4, vcalUri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".vts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 691
    .local v8, vcsName:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 692
    .local v6, vcsBytes:[B
    const/4 v3, 0x0

    .line 695
    .local v3, fileOut:Ljava/io/FileOutputStream;
    :try_start_38
    iget-object v9, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 696
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 698
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 699
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_5c

    move-result-object v4

    .line 704
    if-eqz v3, :cond_14

    .line 705
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_14

    .line 706
    :catch_57
    move-exception v1

    .line 707
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 700
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    :catch_5c
    move-exception v0

    .line 701
    .local v0, e:Ljava/lang/Exception;
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6b

    .line 704
    if-eqz v3, :cond_14

    .line 705
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_14

    .line 706
    :catch_66
    move-exception v1

    .line 707
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 703
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_6b
    move-exception v9

    .line 704
    if-eqz v3, :cond_71

    .line 705
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    .line 708
    :cond_71
    :goto_71
    throw v9

    .line 706
    :catch_72
    move-exception v1

    .line 707
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71
.end method

.method private saveCompleteState(ZJ)V
    .registers 10
    .parameter "complete"
    .parameter "taskID"

    .prologue
    const/4 v5, 0x0

    .line 651
    const-string v2, "TaskBaseListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCompleteState - complete= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " taskID= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "complete"

    if-eqz p1, :cond_56

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v2, "date_completed"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    sget-object v2, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 661
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    return-void

    .line 654
    .end local v0           #uri:Landroid/net/Uri;
    :cond_56
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private setCheckState(Landroid/widget/ListView;IZ)V
    .registers 6
    .parameter "listView"
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 371
    invoke-virtual {p0, p2}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 373
    .local v0, taskID:J
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/task/TaskBaseListAdapter;->setCheck(JZ)V

    .line 375
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 376
    return-void
.end method

.method private setCompleteCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;ZJ)V
    .registers 7
    .parameter "cache"
    .parameter "checked"
    .parameter "taskID"

    .prologue
    .line 631
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 632
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 633
    if-eqz p2, :cond_20

    .line 634
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 639
    :goto_15
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/task/TaskBaseListAdapter$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/task/TaskBaseListAdapter$1;-><init>(Lcom/android/task/TaskBaseListAdapter;J)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 648
    return-void

    .line 636
    :cond_20
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_15
.end method

.method private setCompleteTaskTitle(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;Z)V
    .registers 11
    .parameter "cache"
    .parameter "complete"

    .prologue
    const v7, 0x7f07000c

    .line 579
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 580
    .local v2, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_5b

    .line 581
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 585
    .local v1, p:Landroid/graphics/Paint;
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 587
    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 588
    .local v3, subject:Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 591
    .local v4, textWidth:I
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 592
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 601
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 608
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #p:Landroid/graphics/Paint;
    .end local v3           #subject:Ljava/lang/String;
    .end local v4           #textWidth:I
    :goto_5a
    return-void

    .line 604
    :cond_5b
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    const v6, 0x7f020011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 605
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    const v6, 0x7f020012

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 606
    iget-object v5, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5a
.end method


# virtual methods
.method protected bindAdditionalInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 2
    .parameter "cache"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindPriority(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindReminder(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindDDay(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 478
    return-void
.end method

.method protected bindDefaultInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 2
    .parameter "cache"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindAccountColorBar(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindSubject(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->bindDueDate(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 472
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 117
    return-void
.end method

.method public deleteCheckedTasks()V
    .registers 9

    .prologue
    .line 254
    const-wide/16 v3, 0x0

    .line 255
    .local v3, taskID:J
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 258
    .local v2, isChecked:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v0

    .line 259
    .local v0, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, taskIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_12
    if-ltz v1, :cond_36

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 262
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #isChecked:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .line 263
    .restart local v2       #isChecked:Ljava/lang/Boolean;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 267
    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4d

    .line 268
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/task/TaskBaseListAdapter;->deleteTask(J)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 279
    :cond_4d
    return-void
.end method

.method public deleteTask(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 232
    .local v0, taskID:J
    invoke-virtual {p0, v0, v1}, Lcom/android/task/TaskBaseListAdapter;->deleteTask(J)V

    .line 233
    return-void
.end method

.method public deleteTask(J)V
    .registers 7
    .parameter "taskID"

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-object v1, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 238
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 243
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>TASK_DELETED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " </GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_34
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/task/TaskAlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 251
    return-void
.end method

.method public getAddText()Ljava/lang/StringBuilder;
    .registers 11

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, addTextStringBuilder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 164
    .local v4, res:Landroid/content/res/Resources;
    const v8, 0x7f0a0003

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, start:Ljava/lang/String;
    const v8, 0x7f0a0004

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, due:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 168
    .local v6, taskID:J
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 170
    .local v3, isChecked:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_d7

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 172
    iget-object v8, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #isChecked:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 174
    .restart local v3       #isChecked:Ljava/lang/Boolean;
    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getSubject(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getPriority(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getStartDate(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_86

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getStartDate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_86
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getDueDate(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getDueDate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_b5
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getNote(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d3

    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getNote(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d3

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->getNote(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 195
    :cond_d7
    return-object v0
.end method

.method public getCheckedDoneTaskCount()I
    .registers 4

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, checkedDoneTaskCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->isComplete(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 362
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    :cond_19
    return v0
.end method

.method public getCheckedTaskCount()I
    .registers 10

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, checkedTaskCount:I
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 346
    .local v2, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 348
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 349
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 350
    .local v1, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 351
    .local v3, isChecked:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 356
    .end local v1           #id:Ljava/lang/Long;
    .end local v3           #isChecked:Ljava/lang/Boolean;
    :cond_34
    return v0
.end method

.method public getDoneTaskCount()I
    .registers 4

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 332
    .local v0, doneTaskCount:I
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v2

    sput v2, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    .line 333
    const/4 v2, 0x0

    sput v2, Lcom/android/task/TaskMainActivity;->mDoneCount:I

    .line 335
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->isComplete(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 337
    add-int/lit8 v0, v0, 0x1

    .line 335
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 340
    :cond_1c
    return v0
.end method

.method public getDueDate(I)Ljava/lang/String;
    .registers 10
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 444
    .local v1, cursor:Landroid/database/Cursor;
    const-string v6, "due_date"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 445
    .local v0, colIndex:I
    const-string v4, ""

    .line 447
    .local v4, strNull:Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 454
    .end local v4           #strNull:Ljava/lang/String;
    :goto_15
    return-object v4

    .line 450
    .restart local v4       #strNull:Ljava/lang/String;
    :cond_16
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 451
    .local v2, dueMillis:J
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 452
    .local v5, t:Landroid/text/format/Time;
    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 454
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v7, v6}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15
.end method

.method public getNote()Ljava/lang/String;
    .registers 4

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 393
    .local v0, colIndex:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNote(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 460
    .local v1, cursor:Landroid/database/Cursor;
    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, colIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPriority(I)Ljava/lang/String;
    .registers 8
    .parameter "position"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 405
    .local v1, cursor:Landroid/database/Cursor;
    const-string v4, "importance"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, colIndex:I
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, mPriority_items:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 410
    .local v3, priority:Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_38

    .line 423
    :goto_24
    return-object v3

    .line 412
    :pswitch_25
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .end local v3           #priority:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 413
    .restart local v3       #priority:Ljava/lang/String;
    goto :goto_24

    .line 415
    :pswitch_2b
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .end local v3           #priority:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 416
    .restart local v3       #priority:Ljava/lang/String;
    goto :goto_24

    .line 418
    :pswitch_31
    const/4 v4, 0x2

    aget-object v3, v2, v4

    .end local v3           #priority:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 419
    .restart local v3       #priority:Ljava/lang/String;
    goto :goto_24

    .line 410
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_31
    .end packed-switch
.end method

.method public getSelectedIDs()[J
    .registers 9

    .prologue
    .line 143
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 144
    .local v1, isChecked:Ljava/lang/Boolean;
    const-wide/16 v4, 0x0

    .line 145
    .local v4, taskID:J
    const/4 v2, 0x0

    .line 146
    .local v2, progress:I
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCheckedTaskCount()I

    move-result v6

    new-array v3, v6, [J

    .line 148
    .local v3, result:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_35

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 150
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #isChecked:Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 151
    .restart local v1       #isChecked:Ljava/lang/Boolean;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    .line 152
    aput-wide v4, v3, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 148
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 157
    :cond_35
    return-object v3
.end method

.method public getSelectedUris()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v3, 0x0

    .line 128
    .local v3, taskID:J
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 130
    .local v1, isChecked:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_3f

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 132
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #isChecked:Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 133
    .restart local v1       #isChecked:Ljava/lang/Boolean;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 134
    sget-object v7, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 135
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/android/task/TaskBaseListAdapter;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 136
    .local v6, vcalUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #vcalUri:Landroid/net/Uri;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 139
    :cond_3f
    return-object v2
.end method

.method public getStartDate(I)Ljava/lang/String;
    .registers 10
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 428
    .local v1, cursor:Landroid/database/Cursor;
    const-string v6, "start_date"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, colIndex:I
    const-string v4, ""

    .line 431
    .local v4, strNull:Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 438
    .end local v4           #strNull:Ljava/lang/String;
    :goto_15
    return-object v4

    .line 434
    .restart local v4       #strNull:Ljava/lang/String;
    :cond_16
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 435
    .local v2, startMillis:J
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 436
    .local v5, t:Landroid/text/format/Time;
    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 438
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v7, v6}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15
.end method

.method public getSubject()Ljava/lang/String;
    .registers 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "subject"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, colIndex:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubject(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 398
    .local v1, cursor:Landroid/database/Cursor;
    const-string v2, "subject"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, colIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked(I)Z
    .registers 6
    .parameter "position"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 287
    .local v0, taskID:J
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 288
    const/4 v2, 0x1

    .line 291
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public isComplete(I)Z
    .registers 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 381
    .local v1, cursor:Landroid/database/Cursor;
    const-string v3, "complete"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, colIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_14

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 121
    const-string v0, "TaskBaseListAdapter"

    const-string v1, "======== onContentChanged ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 123
    return-void
.end method

.method public printTask(I)Landroid/content/Intent;
    .registers 5
    .parameter "position"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 218
    .local v0, taskID:J
    invoke-virtual {p0, v0, v1}, Lcom/android/task/TaskBaseListAdapter;->printTask(J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public printTask(J)Landroid/content/Intent;
    .registers 6
    .parameter "taskID"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    return-object v0
.end method

.method public setAllCheck(Landroid/widget/ListView;Z)V
    .registers 5
    .parameter "listView"
    .parameter "checked"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v0

    .line 313
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_5
    if-ge v1, v0, :cond_d

    .line 314
    invoke-direct {p0, p1, v1, p2}, Lcom/android/task/TaskBaseListAdapter;->setCheckState(Landroid/widget/ListView;IZ)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 316
    :cond_d
    return-void
.end method

.method public setCheck(JZ)V
    .registers 7
    .parameter "taskID"
    .parameter "checked"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method protected setCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 10
    .parameter "cache"

    .prologue
    .line 621
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 622
    .local v0, colIndex:I
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 624
    .local v2, taskID:J
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "complete"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 625
    iget-object v4, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    const/4 v1, 0x1

    .line 627
    .local v1, complete:Z
    :goto_23
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/task/TaskBaseListAdapter;->setCompleteCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;ZJ)V

    .line 628
    return-void

    .line 625
    .end local v1           #complete:Z
    :cond_27
    const/4 v1, 0x0

    goto :goto_23
.end method

.method protected setCheckBoxArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 6
    .parameter "cache"

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "complete"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 482
    .local v0, colIndex:I
    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 484
    .local v1, complete:Z
    :goto_11
    invoke-direct {p0, p1, v1}, Lcom/android/task/TaskBaseListAdapter;->setCompleteTaskTitle(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;Z)V

    .line 486
    invoke-virtual {p0, p1, v1}, Lcom/android/task/TaskBaseListAdapter;->setCompleteTaskIcons(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;Z)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->setCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 489
    return-void

    .line 482
    .end local v1           #complete:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected setCompleteTaskIcons(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;Z)V
    .registers 5
    .parameter "cache"
    .parameter "complete"

    .prologue
    .line 612
    if-eqz p2, :cond_a

    .line 613
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminderDdayContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :goto_9
    return-void

    .line 615
    :cond_a
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminderDdayContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method public setDoneTaskCheck(Landroid/widget/ListView;Z)V
    .registers 6
    .parameter "listView"
    .parameter "checked"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v0

    .line 320
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->isComplete(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 322
    invoke-direct {p0, p1, v1, p2}, Lcom/android/task/TaskBaseListAdapter;->setCheckState(Landroid/widget/ListView;IZ)V

    .line 320
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 325
    :cond_13
    return-void
.end method

.method public shareTask(I)Landroid/content/Intent;
    .registers 5
    .parameter "position"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 200
    .local v0, taskID:J
    invoke-virtual {p0, v0, v1}, Lcom/android/task/TaskBaseListAdapter;->shareTask(J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public shareTask(J)Landroid/content/Intent;
    .registers 8
    .parameter "taskID"

    .prologue
    .line 204
    sget-object v4, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 205
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/task/TaskBaseListAdapter;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 206
    .local v3, vcal:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v4, "text/x-vtodo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.TASK_SEND_CHOOSER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, chooserIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method public updateCheckedIds()V
    .registers 9

    .prologue
    .line 295
    const-string v5, "TaskBaseListAdapter"

    const-string v6, "updateCheckedIds()"

    invoke-static {v5, v6}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 297
    .local v0, beforeCheckedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 299
    const-wide/16 v3, 0x0

    .line 300
    .local v3, taskID:J
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 301
    .local v2, isChecked:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_49

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/task/TaskBaseListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #isChecked:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .line 304
    .restart local v2       #isChecked:Ljava/lang/Boolean;
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 305
    iget-object v5, p0, Lcom/android/task/TaskBaseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 308
    :cond_49
    const-string v5, "TaskBaseListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCheckedTaskCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListAdapter;->getCheckedTaskCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method
