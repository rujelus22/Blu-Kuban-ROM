.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_DELETE:[Ljava/lang/String;

.field public static final PROJECTION_SEARCH:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field private final HALF_HOUR_MILLIS:I

.field private final MINUTE_MILLIS:I

.field public allDay:Z

.field public alldayOrg:Z

.field public bedrawed:Z

.field public calendarId:I

.field public color:I

.field public contactAccountType:Ljava/lang/String;

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

.field public timezone:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "eventLocation"

    aput-object v1, v0, v4

    const-string v1, "allDay"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "eventTimezone"

    aput-object v1, v0, v7

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

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->PROJECTION:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    .line 158
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Events._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const v0, 0x1b7740

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->HALF_HOUR_MILLIS:I

    .line 242
    const v0, 0xea60

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->MINUTE_MILLIS:I

    .line 611
    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 406
    if-eqz p1, :cond_11

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, aStr:Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_14

    .line 412
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, bStr:Ljava/lang/String;
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 409
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_11
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_6

    .line 414
    :cond_14
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_c
.end method

.method public static computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    const/4 v1, 0x0

    .line 715
    if-nez p0, :cond_4

    .line 724
    :goto_3
    return-void

    .line 718
    :cond_4
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v0

    .line 720
    .local v0, notificationMoment:Z
    sput v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    .line 722
    invoke-static {p0, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->doComputePositions(Ljava/util/ArrayList;ZZ)V

    .line 723
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->doComputePositions(Ljava/util/ArrayList;ZZ)V

    goto :goto_3
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .registers 20
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    if-nez p2, :cond_3

    .line 609
    :cond_2
    :goto_2
    return-void

    .line 511
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 513
    .local v1, count:I
    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 518
    .local v10, res:Landroid/content/res/Resources;
    :cond_d
    :goto_d
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1d5

    .line 519
    new-instance v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;-><init>()V

    .line 521
    .local v2, e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    const/4 v12, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->id:J

    .line 522
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    .line 523
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    .line 524
    const/4 v12, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1a9

    const/4 v12, 0x1

    :goto_3d
    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    .line 525
    const/4 v12, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1ac

    const/4 v12, 0x1

    :goto_49
    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->alldayOrg:Z

    .line 526
    const/16 v12, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->organizer:Ljava/lang/String;

    .line 527
    const/16 v12, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1af

    const/4 v12, 0x1

    :goto_60
    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    .line 528
    const/16 v12, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    .line 529
    iget-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    if-eqz v12, :cond_99

    .line 532
    const/16 v12, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x3e8

    if-le v12, v13, :cond_1b2

    .line 534
    const/16 v12, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x3e8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\r"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    .line 544
    :cond_99
    :goto_99
    const/4 v12, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    .line 546
    iget-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_ae

    iget-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_b7

    .line 547
    :cond_ae
    const v12, 0x7f08001c

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    .line 550
    :cond_b7
    const/4 v12, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1c6

    .line 552
    const/4 v12, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    .line 557
    :goto_c9
    const/4 v12, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 558
    .local v6, eStart:J
    const/4 v12, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 560
    .local v4, eEnd:J
    iput-wide v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    .line 561
    const/16 v12, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    .line 562
    const/16 v12, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    .line 564
    iput-wide v4, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    .line 565
    const/16 v12, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    .line 566
    const/16 v12, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    .line 568
    iget v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    move/from16 v0, p4

    if-gt v12, v0, :cond_d

    iget v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    move/from16 v0, p3

    if-lt v12, v0, :cond_d

    .line 572
    const/16 v12, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1cd

    const/4 v12, 0x1

    :goto_11a
    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->hasAlarm:Z

    .line 575
    const/16 v12, 0xe

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 576
    .local v11, rrule:Ljava/lang/String;
    const/16 v12, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, rdate:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_138

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1d0

    .line 578
    :cond_138
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->isRepeating:Z

    .line 583
    :goto_13b
    const/16 v12, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->selfAttendeeStatus:I

    .line 586
    const/16 v12, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->latitude:I

    .line 587
    const/16 v12, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->longitude:I

    .line 588
    const/16 v12, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->eventType:I

    .line 589
    const/16 v12, 0x18

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactDataId:I

    .line 590
    const/16 v12, 0x19

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactRawId:I

    .line 591
    const/16 v12, 0x1a

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactAccountType:Ljava/lang/String;

    .line 592
    const/16 v12, 0x1b

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 593
    const/16 v12, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 594
    const/16 v12, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->calendarId:I

    .line 596
    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->bedrawed:Z

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 524
    .end local v4           #eEnd:J
    .end local v6           #eStart:J
    .end local v9           #rdate:Ljava/lang/String;
    .end local v11           #rrule:Ljava/lang/String;
    :cond_1a9
    const/4 v12, 0x0

    goto/16 :goto_3d

    .line 525
    :cond_1ac
    const/4 v12, 0x0

    goto/16 :goto_49

    .line 527
    :cond_1af
    const/4 v12, 0x0

    goto/16 :goto_60

    .line 538
    :cond_1b2
    const/16 v12, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\r"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    goto/16 :goto_99

    .line 554
    :cond_1c6
    const v12, -0x222223

    iput v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    goto/16 :goto_c9

    .line 572
    .restart local v4       #eEnd:J
    .restart local v6       #eStart:J
    :cond_1cd
    const/4 v12, 0x0

    goto/16 :goto_11a

    .line 580
    .restart local v9       #rdate:Ljava/lang/String;
    .restart local v11       #rrule:Ljava/lang/String;
    :cond_1d0
    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->isRepeating:Z

    goto/16 :goto_13b

    .line 601
    .end local v2           #e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v4           #eEnd:J
    .end local v6           #eStart:J
    .end local v9           #rdate:Ljava/lang/String;
    .end local v11           #rrule:Ljava/lang/String;
    :cond_1d5
    invoke-static {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v8

    .line 603
    .local v8, notificationMoment:Z
    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;

    invoke-direct {v3, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;-><init>(Z)V

    .line 604
    .local v3, eComparator:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 608
    move-object/from16 v0, p1

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method private static doComputePositions(Ljava/util/ArrayList;ZZ)V
    .registers 24
    .parameter
    .parameter "doAllDayEvents"
    .parameter "notificationMoment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v9, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    const-wide/16 v5, 0x0

    .line 733
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 734
    .local v14, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 736
    .local v8, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget-boolean v0, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 739
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->getAdjustStartMillis(Z)J

    move-result-wide v15

    .line 746
    .local v15, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 748
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    :cond_31
    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_55

    .line 749
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 750
    .local v2, active:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget-boolean v0, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    move/from16 v17, v0

    if-nez v17, :cond_76

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->getAdjustStartMillis(Z)J

    move-result-wide v17

    const-wide/32 v19, 0x1b7740

    add-long v17, v17, v19

    cmp-long v17, v17, v15

    if-gtz v17, :cond_76

    .line 751
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 764
    .end local v2           #active:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9e

    .line 765
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_92

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 766
    .local v7, ev:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->setMaxColumns(I)V

    .line 767
    sget v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->setGroupId(I)V

    goto :goto_5f

    .line 754
    .end local v7           #ev:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v2       #active:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_76
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->getAdjustEndMillis(Z)J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_31

    .line 756
    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    .line 757
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 769
    .end local v2           #active:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_92
    sget v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    .line 770
    const/4 v14, 0x0

    .line 771
    const-wide/16 v5, 0x0

    .line 772
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 777
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_9e
    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 778
    .local v4, col:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_aa

    .line 779
    const/16 v4, 0x3f

    .line 780
    :cond_aa
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    .line 781
    invoke-virtual {v8, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->setColumn(I)V

    .line 782
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 785
    .local v13, len:I
    if-ge v14, v13, :cond_11

    .line 786
    move v14, v13

    goto/16 :goto_11

    .line 788
    .end local v4           #col:I
    .end local v8           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    .end local v13           #len:I
    .end local v15           #start:J
    :cond_c2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_c6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_dd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 789
    .restart local v7       #ev:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->setMaxColumns(I)V

    .line 790
    sget v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->setGroupId(I)V

    goto :goto_c6

    .line 792
    .end local v7           #ev:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_dd
    sget v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupCount:I

    .line 793
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 899
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 900
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 903
    .end local v0           #ii:I
    :goto_f
    return v0

    .line 899
    .restart local v0       #ii:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    move v0, v1

    .line 903
    goto :goto_f
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .registers 27
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    const/4 v10, 0x0

    .line 431
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 433
    :try_start_4
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 435
    .local v17, local:Landroid/text/format/Time;
    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 436
    move-object/from16 v0, v17

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v18

    .line 437
    .local v18, startDay:I
    add-int v14, v18, p4

    .line 439
    .local v14, endDay:I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 440
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 458
    .local v12, end:J
    const-string v8, "begin ASC, end DESC, title ASC LIMIT 15000"

    .line 461
    .local v8, orderBy:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceHideDeclined(Landroid/content/Context;)Z

    move-result v16

    .line 463
    .local v16, hideDeclined:Z
    const-string v6, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    .line 464
    .local v6, where:Ljava/lang/String;
    if-eqz v16, :cond_4a

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND selfAttendeeStatus!=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    :cond_4a
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4f} :catch_81

    move-result-object v6

    .line 474
    :try_start_50
    sget-object v3, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 475
    .local v9, builder:Landroid/net/Uri$Builder;
    const-wide/32 v3, 0x5265c00

    sub-long v3, p2, v3

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 476
    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v12

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_aa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_50 .. :try_end_73} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_73} :catch_81

    move-result-object v10

    .line 482
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :goto_74
    if-nez v10, :cond_8b

    .line 497
    if-eqz v10, :cond_7b

    .line 498
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 504
    .end local v6           #where:Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v12           #end:J
    .end local v14           #endDay:I
    .end local v16           #hideDeclined:Z
    .end local v17           #local:Landroid/text/format/Time;
    .end local v18           #startDay:I
    :cond_7b
    :goto_7b
    return-void

    .line 478
    .restart local v6       #where:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    .restart local v12       #end:J
    .restart local v14       #endDay:I
    .restart local v16       #hideDeclined:Z
    .restart local v17       #local:Landroid/text/format/Time;
    .restart local v18       #startDay:I
    :catch_7c
    move-exception v15

    .line 479
    .local v15, ex:Landroid/database/sqlite/SQLiteFullException;
    :try_start_7d
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_74

    .line 494
    .end local v6           #where:Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v12           #end:J
    .end local v14           #endDay:I
    .end local v15           #ex:Landroid/database/sqlite/SQLiteFullException;
    .end local v16           #hideDeclined:Z
    .end local v17           #local:Landroid/text/format/Time;
    .end local v18           #startDay:I
    :catch_81
    move-exception v11

    .line 495
    .local v11, e:Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_aa

    .line 497
    if-eqz v10, :cond_7b

    .line 498
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    .line 489
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    .restart local v12       #end:J
    .restart local v14       #endDay:I
    .restart local v16       #hideDeclined:Z
    .restart local v17       #local:Landroid/text/format/Time;
    .restart local v18       #startDay:I
    :cond_8b
    if-nez p7, :cond_9b

    :try_start_8d
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_81

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_9b

    .line 497
    if-eqz v10, :cond_7b

    .line 498
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    .line 493
    :cond_9b
    :try_start_9b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2, v14}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a4} :catch_81

    .line 497
    if-eqz v10, :cond_7b

    .line 498
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    .line 497
    .end local v6           #where:Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v12           #end:J
    .end local v14           #endDay:I
    .end local v16           #hideDeclined:Z
    .end local v17           #local:Landroid/text/format/Time;
    .end local v18           #startDay:I
    :catchall_aa
    move-exception v3

    if-eqz v10, :cond_b0

    .line 498
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b0
    throw v3
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
    .line 248
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;-><init>()V

    .line 251
    .local v0, e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    .line 252
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    .line 253
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    .line 254
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    .line 255
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->alldayOrg:Z

    .line 256
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    .line 257
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    .line 258
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    .line 259
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    .line 260
    iget-wide v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    iput-wide v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    .line 261
    iget-wide v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    iput-wide v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    .line 262
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->hasAlarm:Z

    .line 263
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->isRepeating:Z

    .line 264
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->selfAttendeeStatus:I

    .line 265
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->organizer:Ljava/lang/String;

    .line 266
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    .line 267
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->description:Ljava/lang/CharSequence;

    .line 269
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->latitude:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->latitude:I

    .line 270
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->longitude:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->longitude:I

    .line 271
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->eventType:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->eventType:I

    .line 272
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactDataId:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactDataId:I

    .line 273
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactRawId:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactRawId:I

    .line 274
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->contactAccountType:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 276
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 277
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->calendarId:I

    iput v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->calendarId:I

    .line 278
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    .line 279
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 351
    move-object v1, p1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 354
    .local v1, e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    if-ge v3, v4, :cond_c

    .line 392
    :cond_b
    :goto_b
    return v0

    .line 355
    :cond_c
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    if-le v3, v4, :cond_14

    move v0, v2

    goto :goto_b

    .line 356
    :cond_14
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    if-lt v3, v4, :cond_b

    .line 357
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startTime:I

    if-le v3, v4, :cond_22

    move v0, v2

    goto :goto_b

    .line 361
    :cond_22
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    if-ge v3, v4, :cond_2a

    move v0, v2

    goto :goto_b

    .line 362
    :cond_2a
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    if-gt v3, v4, :cond_b

    .line 363
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    if-ge v3, v4, :cond_38

    move v0, v2

    goto :goto_b

    .line 364
    :cond_38
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endTime:I

    if-gt v3, v4, :cond_b

    .line 367
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-eqz v3, :cond_b

    .line 368
    :cond_46
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-nez v3, :cond_50

    iget-boolean v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-eqz v3, :cond_50

    move v0, v2

    goto :goto_b

    .line 370
    :cond_50
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    if-eqz v3, :cond_b

    .line 371
    :cond_58
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    if-nez v3, :cond_62

    iget-boolean v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->guestsCanModify:Z

    if-eqz v3, :cond_62

    move v0, v2

    goto :goto_b

    .line 375
    :cond_62
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 376
    .local v0, cmp:I
    if-nez v0, :cond_b

    .line 383
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 384
    if-nez v0, :cond_b

    .line 388
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->organizer:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 389
    if-nez v0, :cond_b

    .line 392
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAdjustEndMillis(Z)J
    .registers 11
    .parameter "notificationMoment"

    .prologue
    const-wide/32 v7, 0x1b7740

    .line 807
    iget-wide v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    .line 808
    .local v0, end:J
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 809
    iget-wide v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    const-string v6, "UTC"

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v0

    .line 811
    :cond_15
    if-nez p1, :cond_29

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 812
    iget-wide v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v0

    .line 814
    :cond_29
    const-wide/32 v4, 0xea60

    rem-long v4, v0, v4

    sub-long v4, v0, v4

    rem-long/2addr v4, v7

    sub-long v2, v0, v4

    .line 815
    .local v2, temp:J
    cmp-long v4, v2, v0

    if-nez v4, :cond_38

    .end local v0           #end:J
    :goto_37
    return-wide v0

    .restart local v0       #end:J
    :cond_38
    add-long v0, v2, v7

    goto :goto_37
.end method

.method public getAdjustStartMillis(Z)J
    .registers 8
    .parameter "notificationMoment"

    .prologue
    .line 796
    iget-wide v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    .line 797
    .local v0, start:J
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 798
    iget-wide v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    const-string v4, "UTC"

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v0

    .line 803
    :cond_12
    :goto_12
    const-wide/32 v2, 0xea60

    rem-long v2, v0, v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    rem-long/2addr v2, v4

    sub-long v2, v0, v2

    return-wide v2

    .line 800
    :cond_20
    if-nez p1, :cond_12

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 801
    iget-wide v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v0

    goto :goto_12
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mColumn:I

    return v0
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 1039
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mColumn:I

    .line 1040
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 1031
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mGroupId:I

    .line 1032
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 1047
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->mMaxColumns:I

    .line 1048
    return-void
.end method
