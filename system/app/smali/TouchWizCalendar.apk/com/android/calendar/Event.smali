.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_DELETE:[Ljava/lang/String;

.field public static final PROJECTION_SEARCH:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field public allDay:Z

.field public alldayOrg:Z

.field public availabilityStatus:Ljava/lang/String;

.field public bedrawed:Z

.field public bottom:F

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

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field public longitude:I

.field private mColumn:I

.field private mGroupId:I

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

.field public timezone:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;

.field public top:F


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
    const/16 v0, 0x1e

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

    const/16 v1, 0x1d

    const-string v2, "availabilityStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    .line 187
    const/16 v0, 0x13

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

    const/16 v1, 0x12

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    .line 208
    const/16 v0, 0x13

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

    const/16 v1, 0x12

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 502
    if-eqz p1, :cond_11

    .line 503
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, aStr:Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_14

    .line 508
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, bStr:Ljava/lang/String;
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 505
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_11
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_6

    .line 510
    :cond_14
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_c
.end method

.method static computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v0, 0x0

    .line 850
    if-nez p0, :cond_4

    .line 859
    :goto_3
    return-void

    .line 855
    :cond_4
    sput v0, Lcom/android/calendar/Event;->mGroupCount:I

    .line 857
    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    .line 858
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_3
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .registers 18
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
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p2, :cond_3

    .line 745
    :cond_2
    :goto_2
    return-void

    .line 615
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 617
    .local v1, count:I
    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 622
    .local v8, res:Landroid/content/res/Resources;
    :cond_d
    :goto_d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_199

    .line 623
    new-instance v2, Lcom/android/calendar/Event;

    invoke-direct {v2}, Lcom/android/calendar/Event;-><init>()V

    .line 625
    .local v2, e:Lcom/android/calendar/Event;
    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/calendar/Event;->id:J

    .line 626
    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 627
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 628
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_16f

    const/4 v10, 0x1

    :goto_35
    iput-boolean v10, v2, Lcom/android/calendar/Event;->allDay:Z

    .line 629
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_172

    const/4 v10, 0x1

    :goto_3f
    iput-boolean v10, v2, Lcom/android/calendar/Event;->alldayOrg:Z

    .line 630
    const/16 v10, 0x12

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 631
    const/16 v10, 0x13

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_175

    const/4 v10, 0x1

    :goto_52
    iput-boolean v10, v2, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 632
    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    .line 633
    iget-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    if-eqz v10, :cond_85

    .line 636
    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3e8

    if-le v10, v11, :cond_178

    .line 638
    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\r"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    .line 648
    :cond_85
    :goto_85
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    .line 650
    iget-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v10, :cond_98

    iget-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_a1

    .line 651
    :cond_98
    const v10, 0x7f0a0025

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 654
    :cond_a1
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_18a

    .line 656
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->color:I

    .line 661
    :goto_af
    const/4 v10, 0x6

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 662
    .local v5, eStart:J
    const/4 v10, 0x7

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 664
    .local v3, eEnd:J
    iput-wide v5, v2, Lcom/android/calendar/Event;->startMillis:J

    .line 665
    const/16 v10, 0xb

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->startTime:I

    .line 666
    const/16 v10, 0x9

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->startDay:I

    .line 668
    iput-wide v3, v2, Lcom/android/calendar/Event;->endMillis:J

    .line 669
    const/16 v10, 0xc

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->endTime:I

    .line 670
    const/16 v10, 0xa

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->endDay:I

    .line 672
    iget v10, v2, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p4

    if-gt v10, v0, :cond_d

    iget v10, v2, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p3

    if-lt v10, v0, :cond_d

    .line 676
    const/16 v10, 0xd

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_191

    const/4 v10, 0x1

    :goto_f2
    iput-boolean v10, v2, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 679
    const/16 v10, 0xe

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 680
    .local v9, rrule:Ljava/lang/String;
    const/16 v10, 0xf

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, rdate:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_194

    .line 682
    :cond_10c
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/calendar/Event;->isRepeating:Z

    .line 687
    :goto_10f
    const/16 v10, 0x11

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 690
    const/16 v10, 0x15

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->latitude:I

    .line 691
    const/16 v10, 0x16

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->longitude:I

    .line 692
    const/16 v10, 0x17

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->eventType:I

    .line 693
    const/16 v10, 0x18

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->contactDataId:I

    .line 694
    const/16 v10, 0x19

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->contactRawId:I

    .line 695
    const/16 v10, 0x1a

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    .line 696
    const/16 v10, 0x1b

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 697
    const/16 v10, 0x1c

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 698
    const/16 v10, 0x14

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v2, Lcom/android/calendar/Event;->calendarId:I

    .line 700
    const/16 v10, 0x1d

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    .line 702
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/calendar/Event;->bedrawed:Z

    .line 734
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 628
    .end local v3           #eEnd:J
    .end local v5           #eStart:J
    .end local v7           #rdate:Ljava/lang/String;
    .end local v9           #rrule:Ljava/lang/String;
    :cond_16f
    const/4 v10, 0x0

    goto/16 :goto_35

    .line 629
    :cond_172
    const/4 v10, 0x0

    goto/16 :goto_3f

    .line 631
    :cond_175
    const/4 v10, 0x0

    goto/16 :goto_52

    .line 642
    :cond_178
    const/16 v10, 0x10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\r"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    goto/16 :goto_85

    .line 658
    :cond_18a
    const v10, -0x222223

    iput v10, v2, Lcom/android/calendar/Event;->color:I

    goto/16 :goto_af

    .line 676
    .restart local v3       #eEnd:J
    .restart local v5       #eStart:J
    :cond_191
    const/4 v10, 0x0

    goto/16 :goto_f2

    .line 684
    .restart local v7       #rdate:Ljava/lang/String;
    .restart local v9       #rrule:Ljava/lang/String;
    :cond_194
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/calendar/Event;->isRepeating:Z

    goto/16 :goto_10f

    .line 744
    .end local v2           #e:Lcom/android/calendar/Event;
    .end local v3           #eEnd:J
    .end local v5           #eStart:J
    .end local v7           #rdate:Ljava/lang/String;
    .end local v9           #rrule:Ljava/lang/String;
    :cond_199
    invoke-static {p1, p0}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .registers 23
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v9, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v5, 0x0

    .line 866
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 867
    .local v14, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    .line 869
    .local v8, event:Lcom/android/calendar/Event;
    iget-boolean v0, v8, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 872
    invoke-virtual {v8}, Lcom/android/calendar/Event;->getAdjustStartMillis()J

    move-result-wide v15

    .line 878
    .local v15, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 880
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_55

    .line 881
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 886
    .local v2, active:Lcom/android/calendar/Event;
    invoke-virtual {v2}, Lcom/android/calendar/Event;->getAdjustEndMillis()J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_2f

    .line 887
    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/android/calendar/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    .line 888
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    .line 894
    .end local v2           #active:Lcom/android/calendar/Event;
    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_82

    .line 895
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_76

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 896
    .local v7, ev:Lcom/android/calendar/Event;
    invoke-virtual {v7, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    .line 897
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/calendar/Event;->setGroupId(I)V

    goto :goto_5f

    .line 899
    .end local v7           #ev:Lcom/android/calendar/Event;
    :cond_76
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/android/calendar/Event;->mGroupCount:I

    .line 900
    const/4 v14, 0x0

    .line 901
    const-wide/16 v5, 0x0

    .line 902
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 907
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_82
    invoke-static {v5, v6}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 908
    .local v4, col:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_8e

    .line 909
    const/16 v4, 0x3f

    .line 910
    :cond_8e
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    .line 911
    invoke-virtual {v8, v4}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 912
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 915
    .local v13, len:I
    if-ge v14, v13, :cond_11

    .line 916
    move v14, v13

    goto/16 :goto_11

    .line 918
    .end local v4           #col:I
    .end local v8           #event:Lcom/android/calendar/Event;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v13           #len:I
    .end local v15           #start:J
    :cond_a6
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 919
    .restart local v7       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v7, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    .line 920
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/calendar/Event;->setGroupId(I)V

    goto :goto_aa

    .line 922
    .end local v7           #ev:Lcom/android/calendar/Event;
    :cond_c1
    sget v17, Lcom/android/calendar/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/android/calendar/Event;->mGroupCount:I

    .line 923
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 1017
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 1018
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 1021
    .end local v0           #ii:I
    :goto_f
    return v0

    .line 1017
    .restart local v0       #ii:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    move v0, v1

    .line 1021
    goto :goto_f
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .registers 28
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
            "Lcom/android/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v10, 0x0

    .line 527
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 529
    :try_start_4
    new-instance v16, Landroid/text/format/Time;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 531
    .local v16, local:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 532
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v18

    .line 533
    .local v18, startDay:I
    add-int v13, v18, p4

    .line 535
    .local v13, endDay:I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 536
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 553
    .local v11, end:J
    const-string v8, "begin ASC, end DESC, title ASC LIMIT 15000"

    .line 554
    .local v8, orderBy:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    .local v19, whereTemp:Ljava/lang/StringBuffer;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 558
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 561
    .local v15, hideDeclined:Z
    const-string v6, "deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND visible=1"

    .line 564
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    if-eqz v15, :cond_5a

    .line 568
    const-string v3, " AND selfAttendeeStatus!=2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_5a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 573
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_95

    move-result-object v6

    .line 580
    :try_start_64
    sget-object v3, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 581
    .local v9, builder:Landroid/net/Uri$Builder;
    const-wide/32 v3, 0x5265c00

    sub-long v3, p2, v3

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 582
    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v11

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_87
    .catchall {:try_start_64 .. :try_end_87} :catchall_95
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_64 .. :try_end_87} :catch_90

    move-result-object v10

    .line 588
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :goto_88
    if-nez v10, :cond_9c

    .line 601
    if-eqz v10, :cond_8f

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_8f
    :goto_8f
    return-void

    .line 584
    :catch_90
    move-exception v14

    .line 585
    .local v14, ex:Landroid/database/sqlite/SQLiteFullException;
    :try_start_91
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_88

    .line 601
    .end local v6           #where:Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v11           #end:J
    .end local v13           #endDay:I
    .end local v14           #ex:Landroid/database/sqlite/SQLiteFullException;
    .end local v15           #hideDeclined:Z
    .end local v16           #local:Landroid/text/format/Time;
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    .end local v18           #startDay:I
    .end local v19           #whereTemp:Ljava/lang/StringBuffer;
    :catchall_95
    move-exception v3

    if-eqz v10, :cond_9b

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9b
    throw v3

    .line 595
    .restart local v6       #where:Ljava/lang/String;
    .restart local v8       #orderBy:Ljava/lang/String;
    .restart local v11       #end:J
    .restart local v13       #endDay:I
    .restart local v15       #hideDeclined:Z
    .restart local v16       #local:Landroid/text/format/Time;
    .restart local v17       #prefs:Landroid/content/SharedPreferences;
    .restart local v18       #startDay:I
    .restart local v19       #whereTemp:Ljava/lang/StringBuffer;
    :cond_9c
    if-nez p7, :cond_ac

    :try_start_9e
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_95

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_ac

    .line 601
    if-eqz v10, :cond_8f

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_8f

    .line 599
    :cond_ac
    :try_start_ac
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2, v13}, Lcom/android/calendar/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_95

    .line 601
    if-eqz v10, :cond_8f

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_8f
.end method

.method public static final newInstance()Lcom/android/calendar/Event;
    .registers 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 399
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 401
    .local v0, e:Lcom/android/calendar/Event;
    iput-wide v3, v0, Lcom/android/calendar/Event;->id:J

    .line 402
    iput-object v2, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 403
    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 404
    iput-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 405
    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 406
    iput-boolean v1, v0, Lcom/android/calendar/Event;->alldayOrg:Z

    .line 407
    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 408
    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 409
    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 410
    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 411
    iput-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 412
    iput-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 413
    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 414
    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 415
    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 417
    iput v1, v0, Lcom/android/calendar/Event;->latitude:I

    .line 418
    iput v1, v0, Lcom/android/calendar/Event;->longitude:I

    .line 419
    iput v1, v0, Lcom/android/calendar/Event;->eventType:I

    .line 420
    iput v1, v0, Lcom/android/calendar/Event;->contactDataId:I

    .line 421
    iput v1, v0, Lcom/android/calendar/Event;->contactRawId:I

    .line 422
    iput-object v2, v0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    .line 423
    iput-object v2, v0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 424
    iput-object v2, v0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 425
    iput v1, v0, Lcom/android/calendar/Event;->calendarId:I

    .line 426
    iput-object v2, v0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    .line 427
    return-object v0
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
    .line 330
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 333
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 334
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 335
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 336
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 337
    iget-boolean v1, p0, Lcom/android/calendar/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->alldayOrg:Z

    .line 338
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 339
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 340
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 341
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 342
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 343
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 344
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 345
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 346
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 347
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 348
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 349
    iget-object v1, p0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    .line 351
    iget v1, p0, Lcom/android/calendar/Event;->latitude:I

    iput v1, v0, Lcom/android/calendar/Event;->latitude:I

    .line 352
    iget v1, p0, Lcom/android/calendar/Event;->longitude:I

    iput v1, v0, Lcom/android/calendar/Event;->longitude:I

    .line 353
    iget v1, p0, Lcom/android/calendar/Event;->eventType:I

    iput v1, v0, Lcom/android/calendar/Event;->eventType:I

    .line 354
    iget v1, p0, Lcom/android/calendar/Event;->contactDataId:I

    iput v1, v0, Lcom/android/calendar/Event;->contactDataId:I

    .line 355
    iget v1, p0, Lcom/android/calendar/Event;->contactRawId:I

    iput v1, v0, Lcom/android/calendar/Event;->contactRawId:I

    .line 356
    iget-object v1, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 358
    iget-object v1, p0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 359
    iget v1, p0, Lcom/android/calendar/Event;->calendarId:I

    iput v1, v0, Lcom/android/calendar/Event;->calendarId:I

    .line 360
    iget-object v1, p0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->timezone:Ljava/lang/CharSequence;

    .line 361
    iget-object v1, p0, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->availabilityStatus:Ljava/lang/String;

    .line 362
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 435
    move-object v1, p1

    check-cast v1, Lcom/android/calendar/Event;

    .line 438
    .local v1, e:Lcom/android/calendar/Event;
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-ge v3, v4, :cond_c

    .line 488
    :cond_b
    :goto_b
    return v0

    .line 440
    :cond_c
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-le v3, v4, :cond_14

    move v0, v2

    .line 441
    goto :goto_b

    .line 442
    :cond_14
    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v1, Lcom/android/calendar/Event;->startTime:I

    if-lt v3, v4, :cond_b

    .line 444
    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v1, Lcom/android/calendar/Event;->startTime:I

    if-le v3, v4, :cond_22

    move v0, v2

    .line 445
    goto :goto_b

    .line 449
    :cond_22
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v3, v4, :cond_2a

    move v0, v2

    .line 450
    goto :goto_b

    .line 451
    :cond_2a
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-gt v3, v4, :cond_b

    .line 453
    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v1, Lcom/android/calendar/Event;->endTime:I

    if-ge v3, v4, :cond_38

    move v0, v2

    .line 454
    goto :goto_b

    .line 455
    :cond_38
    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v1, Lcom/android/calendar/Event;->endTime:I

    if-gt v3, v4, :cond_b

    .line 459
    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_b

    .line 461
    :cond_46
    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_50

    iget-boolean v3, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_50

    move v0, v2

    .line 462
    goto :goto_b

    .line 464
    :cond_50
    iget-boolean v3, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_b

    .line 466
    :cond_58
    iget-boolean v3, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-nez v3, :cond_62

    iget-boolean v3, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_62

    move v0, v2

    .line 467
    goto :goto_b

    .line 471
    :cond_62
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 472
    .local v0, cmp:I
    if-nez v0, :cond_b

    .line 479
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 480
    if-nez v0, :cond_b

    .line 484
    iget-object v2, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 485
    if-nez v0, :cond_b

    .line 488
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAdjustEndMillis()J
    .registers 13

    .prologue
    const-wide/32 v10, 0x927c0

    .line 931
    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v4, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v6, p0, Lcom/android/calendar/Event;->endMillis:J

    const-wide/32 v8, 0xea60

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    rem-long/2addr v4, v10

    sub-long v0, v2, v4

    .line 933
    .local v0, temp:J
    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    iget-wide v2, p0, Lcom/android/calendar/Event;->endMillis:J

    :goto_19
    return-wide v2

    :cond_1a
    add-long v2, v0, v10

    goto :goto_19
.end method

.method public getAdjustEndTime()I
    .registers 4

    .prologue
    .line 941
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iget v2, p0, Lcom/android/calendar/Event;->endTime:I

    rem-int/lit8 v2, v2, 0xa

    sub-int v0, v1, v2

    .line 942
    .local v0, temp:I
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, v1, :cond_f

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    :goto_e
    return v1

    :cond_f
    add-int/lit8 v1, v0, 0xa

    goto :goto_e
.end method

.method public getAdjustStartMillis()J
    .registers 9

    .prologue
    .line 926
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v2, p0, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v4, p0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v6, 0xea60

    rem-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAdjustStartTime()I
    .registers 3

    .prologue
    .line 937
    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    rem-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 1159
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 1151
    iget v0, p0, Lcom/android/calendar/Event;->mGroupId:I

    return v0
.end method

.method public getMaxColumns()I
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public hasFacebookPhoto()Z
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFacebook()Z
    .registers 3

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/calendar/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/calendar/Event;->contactAccountType:Ljava/lang/String;

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 1155
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 1156
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 1147
    iput p1, p0, Lcom/android/calendar/Event;->mGroupId:I

    .line 1148
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 1163
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 1164
    return-void
.end method
