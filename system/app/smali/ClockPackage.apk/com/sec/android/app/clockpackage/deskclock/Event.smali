.class public Lcom/sec/android/app/clockpackage/deskclock/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field public allDay:Z

.field public alldayOrg:Z

.field public bedrawed:Z

.field public calendarId:I

.field public color:I

.field public contactDataId:I

.field public contactRawId:I

.field public description:Ljava/lang/CharSequence;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public eventType:I

.field public facebook_photo_url:Ljava/lang/CharSequence;

.field public facebook_scheudle_id:Ljava/lang/CharSequence;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public latitude:I

.field public location:Ljava/lang/CharSequence;

.field public longitude:I

.field private mColumn:I

.field private mGroupId:I

.field private mMaxColumns:I

.field public organizer:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 330
    if-eqz p1, :cond_11

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, aStr:Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_14

    .line 336
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, bStr:Ljava/lang/String;
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 333
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_11
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_6

    .line 338
    :cond_14
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_c
.end method

.method static computePositions(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const/4 v0, 0x0

    .line 525
    if-nez p0, :cond_4

    .line 532
    :goto_3
    return-void

    .line 528
    :cond_4
    sput v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 530
    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    .line 531
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    goto :goto_3
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .registers 15
    .parameter "context"
    .parameter
    .parameter "c"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    if-nez p2, :cond_3

    .line 509
    :cond_2
    :goto_2
    return-void

    .line 432
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 434
    .local v0, count:I
    if-eqz v0, :cond_2

    .line 438
    :cond_9
    :goto_9
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_12d

    .line 439
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/Event;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/deskclock/Event;-><init>()V

    .line 441
    .local v1, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    const/4 v8, 0x5

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->id:J

    .line 442
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    .line 443
    const/4 v8, 0x1

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    .line 444
    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_11e

    const/4 v8, 0x1

    :goto_31
    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    .line 445
    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_121

    const/4 v8, 0x1

    :goto_3b
    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    .line 446
    const/16 v8, 0x12

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    .line 447
    const/16 v8, 0x13

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_124

    const/4 v8, 0x1

    :goto_4e
    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    .line 449
    const/16 v8, 0x10

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->description:Ljava/lang/CharSequence;

    .line 451
    iget-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_64

    iget-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_64

    .line 455
    :cond_64
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_72

    .line 457
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->color:I

    .line 462
    :cond_72
    const/4 v8, 0x6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 463
    .local v4, eStart:J
    const/4 v8, 0x7

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 465
    .local v2, eEnd:J
    iput-wide v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    .line 466
    const/16 v8, 0xb

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    .line 467
    const/16 v8, 0x9

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    .line 469
    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    .line 470
    const/16 v8, 0xc

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    .line 471
    const/16 v8, 0xa

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    .line 473
    iget v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-gt v8, p4, :cond_9

    iget v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-lt v8, p3, :cond_9

    .line 477
    const/16 v8, 0xd

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_127

    const/4 v8, 0x1

    :goto_b1
    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->hasAlarm:Z

    .line 480
    const/16 v8, 0xe

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, rrule:Ljava/lang/String;
    const/16 v8, 0xf

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, rdate:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_cb

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_129

    .line 483
    :cond_cb
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    .line 488
    :goto_ce
    const/16 v8, 0x11

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->selfAttendeeStatus:I

    .line 492
    const/16 v8, 0x15

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->latitude:I

    .line 493
    const/16 v8, 0x16

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->longitude:I

    .line 494
    const/16 v8, 0x17

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->eventType:I

    .line 495
    const/16 v8, 0x18

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactDataId:I

    .line 496
    const/16 v8, 0x19

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactRawId:I

    .line 497
    const/16 v8, 0x1a

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 499
    const/16 v8, 0x1b

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 501
    const/16 v8, 0x14

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->calendarId:I

    .line 503
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->bedrawed:Z

    .line 505
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 444
    .end local v2           #eEnd:J
    .end local v4           #eStart:J
    .end local v6           #rdate:Ljava/lang/String;
    .end local v7           #rrule:Ljava/lang/String;
    :cond_11e
    const/4 v8, 0x0

    goto/16 :goto_31

    .line 445
    :cond_121
    const/4 v8, 0x0

    goto/16 :goto_3b

    .line 447
    :cond_124
    const/4 v8, 0x0

    goto/16 :goto_4e

    .line 477
    .restart local v2       #eEnd:J
    .restart local v4       #eStart:J
    :cond_127
    const/4 v8, 0x0

    goto :goto_b1

    .line 485
    .restart local v6       #rdate:Ljava/lang/String;
    .restart local v7       #rrule:Ljava/lang/String;
    :cond_129
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    goto :goto_ce

    .line 508
    .end local v1           #e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v2           #eEnd:J
    .end local v4           #eStart:J
    .end local v6           #rdate:Ljava/lang/String;
    .end local v7           #rrule:Ljava/lang/String;
    :cond_12d
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/deskclock/Event;->computePositions(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private static doComputePositions2(Ljava/util/ArrayList;Z)V
    .registers 23
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v9, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const-wide/16 v5, 0x0

    .line 540
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 541
    .local v14, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_bc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 543
    .local v8, event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-boolean v0, v8, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 546
    invoke-virtual {v8}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getStartMillis()J

    move-result-wide v15

    .line 561
    .local v15, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 563
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_51

    .line 564
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 565
    .local v2, active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-boolean v0, v8, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    move/from16 v17, v0

    if-nez v17, :cond_72

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getStartMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x1b7740

    add-long v17, v17, v19

    cmp-long v17, v17, v15

    if-gtz v17, :cond_72

    .line 567
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 586
    .end local v2           #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_98

    .line 587
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 588
    .local v7, ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setMaxColumns(I)V

    .line 589
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setGroupId(I)V

    goto :goto_5b

    .line 570
    .end local v7           #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v2       #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_72
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getEndMillis()J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_2f

    .line 579
    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    .line 580
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    .line 591
    .end local v2           #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_8c
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 592
    const/4 v14, 0x0

    .line 593
    const-wide/16 v5, 0x0

    .line 594
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 599
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_98
    invoke-static {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 600
    .local v4, col:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_a4

    .line 601
    const/16 v4, 0x3f

    .line 602
    :cond_a4
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    .line 603
    invoke-virtual {v8, v4}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setColumn(I)V

    .line 604
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 607
    .local v13, len:I
    if-ge v14, v13, :cond_11

    .line 608
    move v14, v13

    goto/16 :goto_11

    .line 610
    .end local v4           #col:I
    .end local v8           #event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    .end local v13           #len:I
    .end local v15           #start:J
    :cond_bc
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_c0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 611
    .restart local v7       #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setMaxColumns(I)V

    .line 612
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setGroupId(I)V

    goto :goto_c0

    .line 614
    .end local v7           #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_d7
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 615
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 691
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 692
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 695
    .end local v0           #ii:I
    :goto_f
    return v0

    .line 691
    .restart local v0       #ii:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    move v0, v1

    .line 695
    goto :goto_f
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .registers 20
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .parameter "ignoreRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const/4 v1, 0x0

    .line 356
    .local v1, c:Landroid/database/Cursor;
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 358
    :try_start_4
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 360
    .local v6, local:Landroid/text/format/Time;
    invoke-virtual {v6, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 361
    iget-wide v10, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    .line 362
    .local v8, startDay:I
    add-int v4, v8, p4

    .line 364
    .local v4, endDay:I
    iget v10, v6, Landroid/text/format/Time;->monthDay:I

    add-int v10, v10, p4

    iput v10, v6, Landroid/text/format/Time;->monthDay:I

    .line 365
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 385
    .local v2, end:J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 387
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v10, "preferences_hide_declined"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 390
    .local v5, hideDeclined:Z
    const/4 v9, 0x0

    .line 391
    .local v9, where:Ljava/lang/String;
    if-eqz v5, :cond_2d

    .line 405
    :cond_2d
    if-nez v1, :cond_3c

    .line 406
    const-string v10, "Cal"

    const-string v11, "loadEvents() returned null cursor!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_55

    .line 418
    if-eqz v1, :cond_3b

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_3b
    :goto_3b
    return-void

    .line 412
    :cond_3c
    if-nez p7, :cond_4c

    :try_start_3e
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_55

    move-result v10

    move/from16 v0, p5

    if-eq v0, v10, :cond_4c

    .line 418
    if-eqz v1, :cond_3b

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 416
    :cond_4c
    :try_start_4c
    invoke-static {p0, p1, v1, v8, v4}, Lcom/sec/android/app/clockpackage/deskclock/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    .line 418
    if-eqz v1, :cond_3b

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 418
    .end local v2           #end:J
    .end local v4           #endDay:I
    .end local v5           #hideDeclined:Z
    .end local v6           #local:Landroid/text/format/Time;
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    .end local v8           #startDay:I
    .end local v9           #where:Ljava/lang/String;
    :catchall_55
    move-exception v10

    if-eqz v1, :cond_5b

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5b
    throw v10
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/Event;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;-><init>()V

    .line 167
    .local v0, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    .line 168
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->color:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->color:I

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    .line 170
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    .line 171
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    .line 172
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    .line 173
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    .line 174
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    .line 175
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    .line 176
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    .line 177
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    .line 178
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->hasAlarm:Z

    .line 179
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    .line 180
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->selfAttendeeStatus:I

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    .line 182
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->description:Ljava/lang/CharSequence;

    .line 185
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->latitude:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->latitude:I

    .line 186
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->longitude:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->longitude:I

    .line 187
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->eventType:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->eventType:I

    .line 188
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactDataId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactDataId:I

    .line 189
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactRawId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactRawId:I

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 192
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->calendarId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->calendarId:I

    .line 193
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 261
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 264
    .local v1, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-ge v3, v4, :cond_c

    .line 314
    :cond_b
    :goto_b
    return v0

    .line 266
    :cond_c
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-le v3, v4, :cond_14

    move v0, v2

    .line 267
    goto :goto_b

    .line 268
    :cond_14
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    if-lt v3, v4, :cond_b

    .line 270
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    if-le v3, v4, :cond_22

    move v0, v2

    .line 271
    goto :goto_b

    .line 275
    :cond_22
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-ge v3, v4, :cond_2a

    move v0, v2

    .line 276
    goto :goto_b

    .line 277
    :cond_2a
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-gt v3, v4, :cond_b

    .line 279
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    if-ge v3, v4, :cond_38

    move v0, v2

    .line 280
    goto :goto_b

    .line 281
    :cond_38
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    if-gt v3, v4, :cond_b

    .line 285
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_b

    .line 287
    :cond_46
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-nez v3, :cond_50

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_50

    move v0, v2

    .line 288
    goto :goto_b

    .line 290
    :cond_50
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_b

    .line 292
    :cond_58
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-nez v3, :cond_62

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_62

    move v0, v2

    .line 293
    goto :goto_b

    .line 297
    :cond_62
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 298
    .local v0, cmp:I
    if-nez v0, :cond_b

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 306
    if-nez v0, :cond_b

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 311
    if-nez v0, :cond_b

    .line 314
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 835
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 859
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 851
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    return-wide v0
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 831
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mColumn:I

    .line 832
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 823
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupId:I

    .line 824
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 839
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mMaxColumns:I

    .line 840
    return-void
.end method
