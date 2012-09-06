.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static mNoColorColor:I

.field private static mNoTitleString:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    .registers 10
    .parameter
    .parameter "cEvents"
    .parameter "context"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-eqz p1, :cond_4

    if-nez p0, :cond_c

    .line 338
    :cond_4
    const-string v3, "CalEvent"

    const-string v4, "buildEventsFromCursor: null cursor or null events list!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_b
    return-void

    .line 342
    :cond_c
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 344
    .local v0, count:I
    if-eqz v0, :cond_b

    .line 348
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 349
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    .line 350
    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/calendar/Event;->mNoColorColor:I

    .line 353
    :cond_28
    :goto_28
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 354
    invoke-static {p1}, Lcom/android/calendar/Event;->generateEventFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/Event;

    move-result-object v1

    .line 355
    .local v1, e:Lcom/android/calendar/Event;
    iget v3, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v3, p4, :cond_28

    iget v3, v1, Lcom/android/calendar/Event;->endDay:I

    if-lt v3, p3, :cond_28

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method static computePositions(Ljava/util/ArrayList;J)V
    .registers 4
    .parameter
    .parameter "minimumDurationMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_3

    .line 437
    :goto_2
    return-void

    .line 435
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    .line 436
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    goto :goto_2
.end method

.method private static doComputePositions(Ljava/util/ArrayList;JZ)V
    .registers 19
    .parameter
    .parameter "minimumDurationMillis"
    .parameter "doAlldayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v7, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v10, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_12

    .line 445
    const-wide/16 p1, 0x0

    .line 448
    :cond_12
    const-wide/16 v5, 0x0

    .line 449
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 450
    .local v14, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_19
    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 452
    .local v1, event:Lcom/android/calendar/Event;
    invoke-virtual {v1}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_19

    .line 455
    if-nez p3, :cond_53

    .line 456
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Event;->removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J

    move-result-wide v5

    .line 464
    :goto_39
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 465
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 466
    .local v9, ev:Lcom/android/calendar/Event;
    invoke-virtual {v9, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_43

    .line 459
    .end local v9           #ev:Lcom/android/calendar/Event;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_53
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/calendar/Event;->removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J

    move-result-wide v5

    goto :goto_39

    .line 468
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_5c
    const/4 v14, 0x0

    .line 469
    const-wide/16 v5, 0x0

    .line 470
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 475
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_62
    invoke-static {v5, v6}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result v8

    .line 476
    .local v8, col:I
    const/16 v2, 0x40

    if-ne v8, v2, :cond_6c

    .line 477
    const/16 v8, 0x3f

    .line 478
    :cond_6c
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v8

    or-long/2addr v5, v2

    .line 479
    invoke-virtual {v1, v8}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 480
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 483
    .local v13, len:I
    if-ge v14, v13, :cond_19

    .line 484
    move v14, v13

    goto :goto_19

    .line 486
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v8           #col:I
    .end local v13           #len:I
    :cond_81
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 487
    .restart local v9       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v9, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_85

    .line 489
    .end local v9           #ev:Lcom/android/calendar/Event;
    :cond_95
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 525
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 526
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 529
    .end local v0           #ii:I
    :goto_f
    return v0

    .line 525
    .restart local v0       #ii:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    move v0, v1

    .line 529
    goto :goto_f
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/Event;
    .registers 14
    .parameter "cEvents"

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 367
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 369
    .local v0, e:Lcom/android/calendar/Event;
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/calendar/Event;->id:J

    .line 370
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 371
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 372
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_b4

    move v7, v8

    :goto_23
    iput-boolean v7, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 373
    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 374
    const/16 v7, 0x12

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_b7

    move v7, v8

    :goto_36
    iput-boolean v7, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 376
    iget-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_44

    iget-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_48

    .line 377
    :cond_44
    sget-object v7, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 380
    :cond_48
    invoke-interface {p0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_ba

    .line 382
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->color:I

    .line 387
    :goto_58
    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 388
    .local v3, eStart:J
    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 390
    .local v1, eEnd:J
    iput-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 391
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->startTime:I

    .line 392
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->startDay:I

    .line 394
    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 395
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->endTime:I

    .line 396
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->endDay:I

    .line 398
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_bf

    move v7, v8

    :goto_8f
    iput-boolean v7, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 401
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, rrule:Ljava/lang/String;
    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, rdate:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 404
    :cond_a9
    iput-boolean v8, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 409
    :goto_ab
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 410
    return-object v0

    .end local v1           #eEnd:J
    .end local v3           #eStart:J
    .end local v5           #rdate:Ljava/lang/String;
    .end local v6           #rrule:Ljava/lang/String;
    :cond_b4
    move v7, v9

    .line 372
    goto/16 :goto_23

    :cond_b7
    move v7, v9

    .line 374
    goto/16 :goto_36

    .line 384
    :cond_ba
    sget v7, Lcom/android/calendar/Event;->mNoColorColor:I

    iput v7, v0, Lcom/android/calendar/Event;->color:I

    goto :goto_58

    .restart local v1       #eEnd:J
    .restart local v3       #eStart:J
    :cond_bf
    move v7, v9

    .line 398
    goto :goto_8f

    .line 406
    .restart local v5       #rdate:Ljava/lang/String;
    .restart local v6       #rrule:Ljava/lang/String;
    :cond_c1
    iput-boolean v9, v0, Lcom/android/calendar/Event;->isRepeating:Z

    goto :goto_ab
.end method

.method private static final instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "cr"
    .parameter "projection"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 303
    const-string v8, "visible=?"

    .line 304
    .local v8, WHERE_CALENDARS_SELECTED:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v7, v0

    .line 305
    .local v7, WHERE_CALENDARS_ARGS:[Ljava/lang/String;
    const-string v6, "begin ASC"

    .line 307
    .local v6, DEFAULT_SORT_ORDER:Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 308
    .local v9, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p2

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 309
    int-to-long v0, p3

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 310
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 311
    move-object p4, v8

    .line 312
    move-object p5, v7

    .line 322
    :goto_22
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_68

    move-object v5, v6

    :goto_29
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 314
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 315
    if-eqz p5, :cond_66

    array-length v0, p5

    if-lez v0, :cond_66

    .line 316
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, [Ljava/lang/String;

    .line 317
    .restart local p5
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aput-object v1, p5, v0

    goto :goto_22

    .line 319
    :cond_66
    move-object p5, v7

    goto :goto_22

    :cond_68
    move-object/from16 v5, p6

    .line 322
    goto :goto_29
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 27
    .parameter "context"
    .parameter
    .parameter "startDay"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/16 v17, 0x0

    .line 225
    .local v17, cEvents:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 227
    .local v16, cAllday:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 229
    add-int v4, p2, p3

    add-int/lit8 v7, v4, -0x1

    .line 242
    .local v7, endDay:I
    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 243
    .local v20, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 246
    .local v18, hideDeclined:Z
    const-string v8, "dispAllday=0"

    .line 247
    .local v8, where:Ljava/lang/String;
    const-string v13, "dispAllday=1"

    .line 248
    .local v13, whereAllday:Ljava/lang/String;
    if-eqz v18, :cond_46

    .line 249
    const-string v19, " AND selfAttendeeStatus!=2"

    .line 251
    .local v19, hideString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 255
    .end local v19           #hideString:Ljava/lang/String;
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "begin ASC, end DESC, title ASC"

    move/from16 v6, p2

    invoke-static/range {v4 .. v10}, Lcom/android/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "startDay ASC, endDay DESC, title ASC"

    move/from16 v11, p2

    move v12, v7

    invoke-static/range {v9 .. v15}, Lcom/android/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 262
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_68
    .catchall {:try_start_b .. :try_end_68} :catchall_99

    move-result v4

    move/from16 v0, p4

    if-eq v0, v4, :cond_78

    .line 270
    if-eqz v17, :cond_72

    .line 271
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_72
    if-eqz v16, :cond_77

    .line 274
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_77
    :goto_77
    return-void

    .line 266
    :cond_78
    :try_start_78
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 267
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_99

    .line 270
    if-eqz v17, :cond_93

    .line 271
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_93
    if-eqz v16, :cond_77

    .line 274
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 270
    .end local v8           #where:Ljava/lang/String;
    .end local v13           #whereAllday:Ljava/lang/String;
    .end local v18           #hideDeclined:Z
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :catchall_99
    move-exception v4

    if-eqz v17, :cond_9f

    .line 271
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_9f
    if-eqz v16, :cond_a4

    .line 274
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v4
.end method

.method private static removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J
    .registers 9
    .parameter "event"
    .parameter
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 496
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 497
    .local v0, active:Lcom/android/calendar/Event;
    iget v1, v0, Lcom/android/calendar/Event;->endDay:I

    iget v2, p0, Lcom/android/calendar/Event;->startDay:I

    if-ge v1, v2, :cond_0

    .line 498
    const-wide/16 v1, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    shl-long/2addr v1, v3

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    and-long/2addr p2, v1

    .line 499
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 502
    .end local v0           #active:Lcom/android/calendar/Event;
    :cond_21
    return-wide p2
.end method

.method private static removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J
    .registers 15
    .parameter "event"
    .parameter
    .parameter "minDurationMillis"
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v3

    .line 511
    .local v3, start:J
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 512
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 514
    .local v0, active:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getEndMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 516
    .local v1, duration:J
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v5, v5, v3

    if-gtz v5, :cond_4

    .line 517
    const-wide/16 v5, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    shl-long/2addr v5, v7

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr p4, v5

    .line 518
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 521
    .end local v0           #active:Lcom/android/calendar/Event;
    .end local v1           #duration:J
    :cond_35
    return-wide p4
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
    .line 152
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 155
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 156
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 157
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 158
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 159
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 160
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 161
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 162
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 163
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 164
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 165
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 166
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 167
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 168
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 169
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 171
    return-object v0
.end method

.method public final copyTo(Lcom/android/calendar/Event;)V
    .registers 4
    .parameter "dest"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->id:J

    .line 176
    iget-object v0, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 177
    iget v0, p0, Lcom/android/calendar/Event;->color:I

    iput v0, p1, Lcom/android/calendar/Event;->color:I

    .line 178
    iget-object v0, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 179
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->allDay:Z

    .line 180
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iput v0, p1, Lcom/android/calendar/Event;->startDay:I

    .line 181
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    iput v0, p1, Lcom/android/calendar/Event;->endDay:I

    .line 182
    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iput v0, p1, Lcom/android/calendar/Event;->startTime:I

    .line 183
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    iput v0, p1, Lcom/android/calendar/Event;->endTime:I

    .line 184
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->startMillis:J

    .line 185
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->endMillis:J

    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 187
    iget-boolean v0, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 188
    iget v0, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 189
    iget-object v0, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 190
    iget-boolean v0, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 191
    return-void
.end method

.method public drawAsAllday()Z
    .registers 5

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v2, p0, Lcom/android/calendar/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 604
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .registers 2

    .prologue
    .line 612
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .registers 5

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2d

    .line 591
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .end local v0           #locationString:Ljava/lang/String;
    :cond_2d
    return-object v1
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 600
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 601
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 608
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 609
    return-void
.end method
