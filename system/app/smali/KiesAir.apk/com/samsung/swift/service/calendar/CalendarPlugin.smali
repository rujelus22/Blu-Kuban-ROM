.class public Lcom/samsung/swift/service/calendar/CalendarPlugin;
.super Ljava/lang/Object;
.source "CalendarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;,
        Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;,
        Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;,
        Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;,
        Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEZONE:I = 0x186a0

.field private static final LOGTAG:Ljava/lang/String;

.field private static MY_CALENDAR:Ljava/lang/String;

.field private static MY_TASK:Ljava/lang/String;

.field private static _calendarUriBase:Landroid/net/Uri;

.field private static _tasksUriRead:Landroid/net/Uri;

.field private static _tasksUriWrite:Landroid/net/Uri;

.field private static androidVersion:I

.field private static availabilityColumnName:Ljava/lang/String;

.field private static calendarSelectedColumnName:Ljava/lang/String;

.field private static contentObserver:Lcom/samsung/swift/service/calendar/CalendarContentObserver;

.field private static final monitor:Ljava/lang/Object;

.field private static final random:Ljava/util/Random;

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter;

.field private static revision:Ljava/lang/String;

.field private static final taskAccountColours:[Ljava/lang/String;

.field private static visibleColumnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->random:Ljava/util/Random;

    .line 139
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->revision:Ljava/lang/String;

    .line 141
    const-class v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->monitor:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    .line 149
    sput-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriRead:Landroid/net/Uri;

    .line 150
    sput-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriWrite:Landroid/net/Uri;

    .line 152
    const-string v0, "My Task"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->MY_TASK:Ljava/lang/String;

    .line 153
    const-string v0, "My calendar"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->MY_CALENDAR:Ljava/lang/String;

    .line 159
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "9C9C9C"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "D39394"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "9B81BA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "8BCDB2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "9C9C9C"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "7B8DE8"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7F5B5B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "954279"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6A9599"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "676767"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AFE3D4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "FFAEAE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CB87D3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "C0EC00"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "D26A00"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "94C7EE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "C88A57"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "955593"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "52C5B2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "E61A39"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "5786B2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "C45600"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "6F5B6F"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CEE076"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "D7447C"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "4A618A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->taskAccountColours:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method private static add(Lcom/samsung/swift/service/calendar/CalendarEvent;)Z
    .registers 24
    .parameter "event"

    .prologue
    .line 775
    sget-object v18, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v19, "Java add called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->calendarId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1b

    .line 779
    sget-object v18, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v19, "Empty calendar ID supplied to add() event. Won\'t continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/16 v18, 0x0

    .line 868
    :goto_1a
    return v18

    .line 783
    :cond_1b
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 785
    .local v6, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v18

    const-string v19, "events"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 787
    .local v5, calendarUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v7, cv:Landroid/content/ContentValues;
    const-string v18, "calendar_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->calendarId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v18, "dtstart"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtStart()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtEnd()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_73

    .line 791
    const-string v18, "dtend"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtEnd()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    :cond_73
    const-string v18, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->title()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v18, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->description()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v18, "eventTimezone"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->timezone()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v18, "duration"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->duration()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->rrule()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_be

    .line 797
    const-string v18, "rrule"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->rrule()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_be
    const-string v18, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->location()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->allday()Z

    move-result v18

    if-eqz v18, :cond_139

    .line 800
    const-string v18, "allDay"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_dc
    sget-object v18, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->privacy()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    sget-object v18, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->timeShownAs()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->numAttendees()I

    move-result v11

    .line 806
    .local v11, numAttendees:I
    if-lez v11, :cond_113

    .line 807
    const-string v18, "hasAttendeeData"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    :cond_113
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->numReminders()I

    move-result v12

    .line 809
    .local v12, numReminders:I
    if-lez v12, :cond_128

    .line 810
    const-string v18, "hasAlarm"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    :cond_128
    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 814
    .local v16, resultUri:Landroid/net/Uri;
    if-nez v16, :cond_145

    .line 816
    sget-object v18, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v19, "Insert fail: inserted id null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 802
    .end local v11           #numAttendees:I
    .end local v12           #numReminders:I
    .end local v16           #resultUri:Landroid/net/Uri;
    :cond_139
    const-string v18, "allDay"

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    .line 821
    .restart local v11       #numAttendees:I
    .restart local v12       #numReminders:I
    .restart local v16       #resultUri:Landroid/net/Uri;
    :cond_145
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 823
    .local v8, eventId:Ljava/lang/String;
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 824
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setId(Ljava/lang/String;)V

    .line 827
    if-lez v12, :cond_198

    .line 829
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v18

    const-string v19, "reminders"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 830
    .local v15, reminderUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_16b
    if-ge v9, v12, :cond_198

    .line 832
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/swift/service/calendar/CalendarEvent;->reminder(I)Lcom/samsung/swift/service/calendar/CalendarReminder;

    move-result-object v13

    .line 835
    .local v13, r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    invoke-virtual {v13, v8}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setEventId(Ljava/lang/String;)V

    .line 836
    invoke-static {v13}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->reminderToContentValues(Lcom/samsung/swift/service/calendar/CalendarReminder;)Landroid/content/ContentValues;

    move-result-object v14

    .line 837
    .local v14, rcv:Landroid/content/ContentValues;
    invoke-virtual {v6, v15, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 840
    .local v17, u:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 842
    .local v10, id:Ljava/lang/String;
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 843
    invoke-virtual {v13, v10}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setId(Ljava/lang/String;)V

    .line 830
    add-int/lit8 v9, v9, 0x1

    goto :goto_16b

    .line 848
    .end local v9           #i:I
    .end local v10           #id:Ljava/lang/String;
    .end local v13           #r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    .end local v14           #rcv:Landroid/content/ContentValues;
    .end local v15           #reminderUri:Landroid/net/Uri;
    .end local v17           #u:Landroid/net/Uri;
    :cond_198
    if-lez v11, :cond_1d2

    .line 850
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v18

    const-string v19, "attendees"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 851
    .local v4, attendeeUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1a5
    if-ge v9, v11, :cond_1d2

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/swift/service/calendar/CalendarEvent;->attendee(I)Lcom/samsung/swift/service/calendar/CalendarAttendee;

    move-result-object v2

    .line 856
    .local v2, a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setEventId(Ljava/lang/String;)V

    .line 857
    invoke-static {v2}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->attendeeToContentValues(Lcom/samsung/swift/service/calendar/CalendarAttendee;)Landroid/content/ContentValues;

    move-result-object v3

    .line 858
    .local v3, acv:Landroid/content/ContentValues;
    invoke-virtual {v6, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 861
    .restart local v17       #u:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 863
    .restart local v10       #id:Ljava/lang/String;
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 864
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setId(Ljava/lang/String;)V

    .line 851
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a5

    .line 868
    .end local v2           #a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    .end local v3           #acv:Landroid/content/ContentValues;
    .end local v4           #attendeeUri:Landroid/net/Uri;
    .end local v9           #i:I
    .end local v10           #id:Ljava/lang/String;
    .end local v17           #u:Landroid/net/Uri;
    :cond_1d2
    const/16 v18, 0x1

    goto/16 :goto_1a
.end method

.method private static addTask(Lcom/samsung/swift/service/calendar/Task;)Z
    .registers 14
    .parameter "task"

    .prologue
    .line 1734
    sget-object v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "Java addTask called"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1738
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v5

    .line 1739
    .local v5, tasksUri:Landroid/net/Uri;
    if-nez v5, :cond_18

    .line 1740
    const/4 v8, 0x0

    .line 1791
    :goto_17
    return v8

    .line 1742
    :cond_18
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1743
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "subject"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->title()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v8, "body"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->body()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v8, "body_size"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->body()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1746
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->dueDate()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_ca

    .line 1747
    const-string v8, "due_date"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->dueDate()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1752
    :goto_5a
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->complete()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 1753
    const-string v8, "complete"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    :goto_6a
    const-string v8, "importance"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->priority()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    const-string v8, "accountKey"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->account()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v8

    if-lez v8, :cond_ec

    .line 1759
    const-string v8, "reminder_set"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1760
    const-string v8, "reminder_type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1761
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_db

    .line 1762
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1763
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1764
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1765
    .local v6, timeout:J
    const-string v8, "reminder_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1777
    .end local v2           #now:Landroid/text/format/Time;
    .end local v6           #timeout:J
    :goto_ba
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1779
    .local v3, resultUri:Landroid/net/Uri;
    if-nez v3, :cond_109

    .line 1781
    sget-object v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "Insert fail: inserted id null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v8, 0x0

    goto/16 :goto_17

    .line 1750
    .end local v3           #resultUri:Landroid/net/Uri;
    :cond_ca
    const-string v8, "due_date"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_5a

    .line 1755
    :cond_d0
    const-string v8, "complete"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6a

    .line 1768
    :cond_db
    const-string v8, "reminder_time"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_ba

    .line 1772
    :cond_ec
    const-string v8, "reminder_set"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1773
    const-string v8, "reminder_type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    const-string v8, "reminder_time"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_ba

    .line 1786
    .restart local v3       #resultUri:Landroid/net/Uri;
    :cond_109
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1788
    .local v4, taskId:Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1789
    invoke-virtual {p0, v4}, Lcom/samsung/swift/service/calendar/Task;->setId(Ljava/lang/String;)V

    .line 1791
    const/4 v8, 0x1

    goto/16 :goto_17
.end method

.method private static attendeeToContentValues(Lcom/samsung/swift/service/calendar/CalendarAttendee;)Landroid/content/ContentValues;
    .registers 4
    .parameter "a"

    .prologue
    .line 1121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    .local v0, acv:Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->eventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v1, "attendeeType"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    const-string v1, "attendeeEmail"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->email()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v1, "attendeeName"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v1, "attendeeRelationship"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->relationship()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v1, "attendeeStatus"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->status()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    return-object v0
.end method

.method private static binaryTransitionSearch(Ljava/util/TimeZone;JJ)J
    .registers 16
    .parameter "tz"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 2085
    cmp-long v7, p1, p3

    if-ltz v7, :cond_d

    .line 2087
    sget-object v7, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v8, "binaryTransitionSearch: begin date was after end date"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .line 2122
    .end local p1
    .local v0, begin:J
    :goto_c
    return-wide v0

    .line 2091
    .end local v0           #begin:J
    .restart local p1
    :cond_d
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 2092
    .local v2, beginDstActive:Z
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p3

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    .line 2093
    .local v4, endDstActive:Z
    if-ne v2, v4, :cond_30

    .line 2095
    sget-object v7, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v8, "binaryTransitionSearch: both dates had same DST status"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .line 2096
    .end local p1
    .restart local v0       #begin:J
    goto :goto_c

    .line 2099
    .end local v0           #begin:J
    .restart local p1
    :cond_30
    const/4 v3, 0x0

    .line 2100
    .local v3, count:I
    :cond_31
    sub-long v7, p3, p1

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-lez v7, :cond_5f

    .line 2102
    add-long v7, p3, p1

    const-wide/16 v9, 0x2

    div-long v5, v7, v9

    .line 2103
    .local v5, middle:J
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v5

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    if-ne v2, v7, :cond_5d

    .line 2106
    move-wide p1, v5

    .line 2111
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    .line 2114
    const/16 v7, 0x3e8

    if-le v3, v7, :cond_31

    .line 2116
    sget-object v7, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v8, "binaryTransitionSearch failed to converge after 1000 iterations. Giving up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .line 2117
    .end local p1
    .restart local v0       #begin:J
    goto :goto_c

    .line 2109
    .end local v0           #begin:J
    .restart local p1
    :cond_5d
    move-wide p3, v5

    goto :goto_4e

    .line 2121
    .end local v5           #middle:J
    :cond_5f
    sget-object v7, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binaryTransitionSearch converged on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iterations"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .line 2122
    .end local p1
    .restart local v0       #begin:J
    goto :goto_c
.end method

.method private static buildTask(Landroid/database/Cursor;)Lcom/samsung/swift/service/calendar/Task;
    .registers 8
    .parameter "c"

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1702
    new-instance v0, Lcom/samsung/swift/service/calendar/Task;

    invoke-direct {v0}, Lcom/samsung/swift/service/calendar/Task;-><init>()V

    .line 1704
    .local v0, task:Lcom/samsung/swift/service/calendar/Task;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setId(Ljava/lang/String;)V

    .line 1705
    const-string v1, "subject"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setTitle(Ljava/lang/String;)V

    .line 1706
    const-string v1, "body"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setBody(Ljava/lang/String;)V

    .line 1707
    const-string v1, "due_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/calendar/Task;->setDueDate(J)V

    .line 1708
    const-string v1, "importance"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setPriority(I)V

    .line 1709
    const-string v1, "accountKey"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setAccount(Ljava/lang/String;)V

    .line 1710
    const-string v1, "reminder_set"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_8f

    .line 1712
    const-string v1, "reminder_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/Task;->setReminderType(I)V

    .line 1713
    const-string v1, "reminder_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/calendar/Task;->setReminderTime(J)V

    .line 1721
    :goto_7f
    const-string v1, "complete"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_98

    .line 1723
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/calendar/Task;->setComplete(Z)V

    .line 1728
    :goto_8e
    return-object v0

    .line 1717
    :cond_8f
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/calendar/Task;->setReminderType(I)V

    .line 1718
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/calendar/Task;->setReminderTime(J)V

    goto :goto_7f

    .line 1726
    :cond_98
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/Task;->setComplete(Z)V

    goto :goto_8e
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calendarUriBase()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 239
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_calendarUriBase:Landroid/net/Uri;

    if-nez v0, :cond_3e

    .line 241
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendarUriBase: VERSION.SDK_INT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_41

    .line 243
    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_calendarUriBase:Landroid/net/Uri;

    .line 248
    :goto_2c
    sget v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4a

    .line 250
    const-string v0, "visible"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    .line 251
    const-string v0, "accessLevel"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    .line 252
    const-string v0, "availabilityStatus"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    .line 260
    :cond_3e
    :goto_3e
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_calendarUriBase:Landroid/net/Uri;

    return-object v0

    .line 245
    :cond_41
    const-string v0, "content://calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_calendarUriBase:Landroid/net/Uri;

    goto :goto_2c

    .line 255
    :cond_4a
    const-string v0, "selected"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    .line 256
    const-string v0, "visibility"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    .line 257
    const-string v0, "transparency"

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    goto :goto_3e
.end method

.method private static calendars()[Lcom/samsung/swift/service/calendar/Calendar;
    .registers 19

    .prologue
    .line 343
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "java calendars() called"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v12, calendars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/Calendar;>;"
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 349
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "calendars"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 351
    .local v2, calendarUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 353
    .local v9, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_23
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 355
    if-eqz v9, :cond_1aa

    .line 357
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_194

    .line 359
    :cond_2f
    :goto_2f
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_19b

    .line 370
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, id:Ljava/lang/String;
    const-string v15, ""

    .line 373
    .local v15, name:Ljava/lang/String;
    const-string v3, "displayname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_112

    .line 375
    const-string v3, "displayname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 386
    :goto_54
    const/4 v11, 0x0

    .line 387
    .local v11, calendarName:Ljava/lang/String;
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->MY_CALENDAR:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 389
    const-string v3, "my_calendar"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 392
    :cond_63
    if-nez v11, :cond_66

    .line 393
    move-object v11, v15

    .line 395
    :cond_66
    const-string v7, ""

    .line 396
    .local v7, account:Ljava/lang/String;
    const-string v3, "_sync_account"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_127

    .line 398
    const-string v3, "_sync_account"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    :goto_7b
    const/4 v8, 0x0

    .line 410
    .local v8, accountName:Ljava/lang/String;
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->MY_CALENDAR:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 412
    const-string v3, "my_calendar"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    :cond_8a
    if-nez v8, :cond_8d

    .line 416
    move-object v8, v7

    .line 418
    :cond_8d
    const-string v13, ""

    .line 419
    .local v13, color:Ljava/lang/String;
    const-string v3, "color"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_13c

    .line 421
    const-string v3, "%06x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0xffffff

    const-string v18, "color"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    and-int v6, v6, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 432
    :goto_bf
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_16e

    const/16 v17, 0x1

    .line 434
    .local v17, selected:Z
    :goto_cd
    const/16 v16, 0x0

    .line 435
    .local v16, readonly:Z
    const-string v3, "access_level"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_176

    .line 437
    const/16 v3, 0x258

    const-string v4, "access_level"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-le v3, v4, :cond_172

    const/16 v16, 0x1

    .line 448
    :goto_e8
    new-instance v10, Lcom/samsung/swift/service/calendar/Calendar;

    invoke-direct {v10}, Lcom/samsung/swift/service/calendar/Calendar;-><init>()V

    .line 449
    .local v10, ca:Lcom/samsung/swift/service/calendar/Calendar;
    invoke-virtual {v10, v14}, Lcom/samsung/swift/service/calendar/Calendar;->setId(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v10, v11}, Lcom/samsung/swift/service/calendar/Calendar;->setName(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v10, v13}, Lcom/samsung/swift/service/calendar/Calendar;->setColour(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v10, v8}, Lcom/samsung/swift/service/calendar/Calendar;->setAccount(Ljava/lang/String;)V

    .line 453
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/samsung/swift/service/calendar/Calendar;->setSelected(Z)V

    .line 454
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/samsung/swift/service/calendar/Calendar;->setReadOnly(Z)V

    .line 456
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_109
    .catchall {:try_start_23 .. :try_end_109} :catchall_10b

    goto/16 :goto_2f

    .line 472
    .end local v7           #account:Ljava/lang/String;
    .end local v8           #accountName:Ljava/lang/String;
    .end local v10           #ca:Lcom/samsung/swift/service/calendar/Calendar;
    .end local v11           #calendarName:Ljava/lang/String;
    .end local v13           #color:Ljava/lang/String;
    .end local v14           #id:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #readonly:Z
    .end local v17           #selected:Z
    :catchall_10b
    move-exception v3

    if-eqz v9, :cond_111

    .line 473
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_111
    throw v3

    .line 377
    .restart local v14       #id:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    :cond_112
    :try_start_112
    const-string v3, "calendar_displayname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2f

    .line 379
    const-string v3, "calendar_displayName"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_54

    .line 400
    .restart local v7       #account:Ljava/lang/String;
    .restart local v11       #calendarName:Ljava/lang/String;
    :cond_127
    const-string v3, "account_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2f

    .line 402
    const-string v3, "account_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7b

    .line 423
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v13       #color:Ljava/lang/String;
    :cond_13c
    const-string v3, "calendar_color"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2f

    .line 425
    const-string v3, "%06x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0xffffff

    const-string v18, "calendar_color"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    and-int v6, v6, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_bf

    .line 432
    :cond_16e
    const/16 v17, 0x0

    goto/16 :goto_cd

    .line 437
    .restart local v16       #readonly:Z
    .restart local v17       #selected:Z
    :cond_172
    const/16 v16, 0x0

    goto/16 :goto_e8

    .line 439
    :cond_176
    const-string v3, "calendar_access_level"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2f

    .line 441
    const/16 v3, 0x258

    const-string v4, "calendar_access_level"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-le v3, v4, :cond_191

    const/16 v16, 0x1

    :goto_18f
    goto/16 :goto_e8

    :cond_191
    const/16 v16, 0x0

    goto :goto_18f

    .line 462
    .end local v7           #account:Ljava/lang/String;
    .end local v8           #accountName:Ljava/lang/String;
    .end local v11           #calendarName:Ljava/lang/String;
    .end local v13           #color:Ljava/lang/String;
    .end local v14           #id:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #readonly:Z
    .end local v17           #selected:Z
    :cond_194
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "calendar cursor no entries"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catchall {:try_start_112 .. :try_end_19b} :catchall_10b

    .line 472
    :cond_19b
    :goto_19b
    if-eqz v9, :cond_1a0

    .line 473
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_1a0
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/samsung/swift/service/calendar/Calendar;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/swift/service/calendar/Calendar;

    return-object v3

    .line 467
    :cond_1aa
    :try_start_1aa
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "calendar cursor null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_10b

    goto :goto_19b
.end method

.method private static dateFormat()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2244
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "dateFormat called"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    new-instance v0, Ljava/util/Date;

    const/16 v3, 0x63

    const/4 v4, 0x0

    const/16 v5, 0x17

    invoke-direct {v0, v3, v4, v5}, Ljava/util/Date;-><init>(III)V

    .line 2247
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 2248
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2249
    .local v2, s:Ljava/lang/String;
    const-string v3, "1999"

    const-string v4, "yyyy"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2250
    const-string v3, "99"

    const-string v4, "yy"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2251
    const-string v3, "01"

    const-string v4, "mm"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2252
    const-string v3, "23"

    const-string v4, "dd"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2254
    return-object v2
.end method

.method public static delete(J)Z
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1137
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java event delete"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1141
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, appendedPath:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1144
    .local v1, calendarUri:Landroid/net/Uri;
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {v2, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1148
    .local v3, numRows:I
    if-ne v3, v4, :cond_4f

    .line 1157
    :goto_4e
    return v4

    .line 1150
    :cond_4f
    if-nez v3, :cond_6f

    .line 1152
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event not deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :goto_6d
    const/4 v4, 0x0

    goto :goto_4e

    .line 1155
    :cond_6f
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple rows deleted ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public static deleteInstance(JJJ)Z
    .registers 37
    .parameter "id"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 1166
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java event deleteInstance"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1180
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instances/when/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1181
    .local v21, instancePath:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1183
    .local v3, instanceUri:Landroid/net/Uri;
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "instanceUri == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v10, 0x0

    .line 1187
    .local v10, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1188
    .local v11, ce:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1190
    .local v12, cs:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instances._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1192
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "passed query"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-eqz v10, :cond_34b

    .line 1196
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "c != null"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 1210
    const-string v4, "event_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1211
    .local v15, eventId:I
    const-string v4, "begin"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1212
    .local v23, instanceStartTime:J
    const-string v4, "end"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1214
    .local v19, instanceEndTime:J
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1219
    .local v5, eventUri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1220
    if-eqz v11, :cond_32f

    .line 1222
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 1224
    const-string v4, "rrule"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1226
    .local v27, rrule:Ljava/lang/String;
    const-string v4, "dtstart"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1227
    .local v16, eventStartDate:Ljava/lang/String;
    const-string v4, "begin"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1228
    .local v22, instanceStartDate:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1230
    .local v18, firstInSeries:Z
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_133

    .line 1231
    const/16 v18, 0x1

    .line 1234
    :cond_133
    if-eqz v18, :cond_1ea

    .line 1236
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Instance at the start of the series"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1239
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_15d

    .line 1241
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Only one event in the series - use delete event instead"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_78 .. :try_end_14c} :catchall_31e

    .line 1242
    const/4 v4, 0x0

    .line 1318
    if-eqz v10, :cond_152

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_152
    if-eqz v11, :cond_157

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_157
    if-eqz v12, :cond_15c

    .line 1323
    :goto_159
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1326
    .end local v5           #eventUri:Landroid/net/Uri;
    .end local v15           #eventId:I
    .end local v16           #eventStartDate:Ljava/lang/String;
    .end local v18           #firstInSeries:Z
    .end local v19           #instanceEndTime:J
    .end local v22           #instanceStartDate:Ljava/lang/String;
    .end local v23           #instanceStartTime:J
    .end local v27           #rrule:Ljava/lang/String;
    :cond_15c
    :goto_15c
    return v4

    .line 1244
    .restart local v5       #eventUri:Landroid/net/Uri;
    .restart local v15       #eventId:I
    .restart local v16       #eventStartDate:Ljava/lang/String;
    .restart local v18       #firstInSeries:Z
    .restart local v19       #instanceEndTime:J
    .restart local v22       #instanceStartDate:Ljava/lang/String;
    .restart local v23       #instanceStartTime:J
    .restart local v27       #rrule:Ljava/lang/String;
    :cond_15d
    :try_start_15d
    const-string v4, "begin"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1247
    .local v28, secondEventStartTime:J
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1248
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "dtstart"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1249
    const-string v4, "rrule"

    move-object/from16 v0, v27

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v13, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 1253
    .local v25, numRows:I
    if-nez v25, :cond_1ae

    .line 1255
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event not updated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catchall {:try_start_15d .. :try_end_1a0} :catchall_31e

    .line 1256
    const/4 v4, 0x0

    .line 1318
    if-eqz v10, :cond_1a6

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_1a6
    if-eqz v11, :cond_1ab

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_1ab
    if-eqz v12, :cond_15c

    goto :goto_159

    .line 1258
    :cond_1ae
    const/4 v4, 0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_34b

    .line 1259
    :try_start_1b3
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple rows update ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when updating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catchall {:try_start_1b3 .. :try_end_1db} :catchall_31e

    .line 1260
    const/4 v4, 0x0

    .line 1318
    if-eqz v10, :cond_1e1

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_1e1
    if-eqz v11, :cond_1e6

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_1e6
    if-eqz v12, :cond_15c

    goto/16 :goto_159

    .line 1265
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v25           #numRows:I
    .end local v28           #secondEventStartTime:J
    :cond_1ea
    :try_start_1ea
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Instance in the middle of the series"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v4, "_sync_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1268
    .local v30, syncId:Ljava/lang/String;
    if-eqz v30, :cond_207

    const-string v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 1270
    :cond_207
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Cannot delete event instance - no sync id"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20e
    .catchall {:try_start_1ea .. :try_end_20e} :catchall_31e

    .line 1271
    const/4 v4, 0x0

    .line 1318
    if-eqz v10, :cond_214

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_214
    if-eqz v11, :cond_219

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_219
    if-eqz v12, :cond_15c

    goto/16 :goto_159

    .line 1275
    :cond_21d
    :try_start_21d
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V
    :try_end_222
    .catchall {:try_start_21d .. :try_end_222} :catchall_31e

    .line 1277
    .restart local v13       #cv:Landroid/content/ContentValues;
    :try_start_222
    const-string v4, "title"

    const-string v6, "title"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v4, "eventTimezone"

    const-string v6, "eventTimezone"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v4, "allDay"

    const-string v6, "allDay"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string v4, "calendar_id"

    const-string v6, "calendar_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v4, "dtstart"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1282
    const-string v4, "dtend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1284
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-ge v4, v6, :cond_2f0

    .line 1285
    const-string v4, "originalEvent"

    const-string v6, "_sync_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :goto_28d
    const-string v4, "originalInstanceTime"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1290
    const-string v4, "eventStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    const-string v4, "_sync_account"

    const-string v6, "_sync_account"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v4, "_sync_account_type"

    const-string v6, "_sync_account_type"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v4, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2c8
    .catchall {:try_start_222 .. :try_end_2c8} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_2c8} :catch_300

    .line 1299
    :goto_2c8
    :try_start_2c8
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "events"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1300
    .local v17, eventsUri:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 1302
    .local v26, resultUri:Landroid/net/Uri;
    if-nez v26, :cond_34b

    .line 1304
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Insert fail: inserted id null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e1
    .catchall {:try_start_2c8 .. :try_end_2e1} :catchall_31e

    .line 1305
    const/4 v4, 0x0

    .line 1318
    if-eqz v10, :cond_2e7

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_2e7
    if-eqz v11, :cond_2ec

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_2ec
    if-eqz v12, :cond_15c

    goto/16 :goto_159

    .line 1287
    .end local v17           #eventsUri:Landroid/net/Uri;
    .end local v26           #resultUri:Landroid/net/Uri;
    :cond_2f0
    :try_start_2f0
    const-string v4, "original_sync_id"

    const-string v6, "_sync_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ff
    .catchall {:try_start_2f0 .. :try_end_2ff} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2ff} :catch_300

    goto :goto_28d

    .line 1294
    :catch_300
    move-exception v14

    .line 1295
    .local v14, e:Ljava/lang/Exception;
    :try_start_301
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31d
    .catchall {:try_start_301 .. :try_end_31d} :catchall_31e

    goto :goto_2c8

    .line 1318
    .end local v5           #eventUri:Landroid/net/Uri;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #eventId:I
    .end local v16           #eventStartDate:Ljava/lang/String;
    .end local v18           #firstInSeries:Z
    .end local v19           #instanceEndTime:J
    .end local v22           #instanceStartDate:Ljava/lang/String;
    .end local v23           #instanceStartTime:J
    .end local v27           #rrule:Ljava/lang/String;
    .end local v30           #syncId:Ljava/lang/String;
    :catchall_31e
    move-exception v4

    if-eqz v10, :cond_324

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_324
    if-eqz v11, :cond_329

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_329
    if-eqz v12, :cond_32e

    .line 1323
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_32e
    throw v4

    .line 1311
    .restart local v5       #eventUri:Landroid/net/Uri;
    .restart local v15       #eventId:I
    .restart local v19       #instanceEndTime:J
    .restart local v23       #instanceStartTime:J
    :cond_32f
    :try_start_32f
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34b
    .catchall {:try_start_32f .. :try_end_34b} :catchall_31e

    .line 1318
    .end local v5           #eventUri:Landroid/net/Uri;
    .end local v15           #eventId:I
    .end local v19           #instanceEndTime:J
    .end local v23           #instanceStartTime:J
    :cond_34b
    if-eqz v10, :cond_350

    .line 1319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_350
    if-eqz v11, :cond_355

    .line 1321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_355
    if-eqz v12, :cond_35a

    .line 1323
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_35a
    const/4 v4, 0x1

    goto/16 :goto_15c
.end method

.method public static deleteTask(J)Z
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1863
    sget-object v6, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v7, "Java delete Task"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1867
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v3

    .line 1868
    .local v3, taskUriBase:Landroid/net/Uri;
    if-nez v3, :cond_19

    .line 1885
    :cond_18
    :goto_18
    return v4

    .line 1870
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1874
    .local v2, taskUri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1876
    .local v1, numRows:I
    if-ne v1, v5, :cond_29

    move v4, v5

    .line 1877
    goto :goto_18

    .line 1878
    :cond_29
    if-nez v1, :cond_18

    goto :goto_18
.end method

.method private static edit(Lcom/samsung/swift/service/calendar/CalendarEvent;)Z
    .registers 34
    .parameter "event"

    .prologue
    .line 874
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java edit called"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 878
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 880
    .local v13, calendarUri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 881
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->calendarId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v4, "dtstart"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtStart()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtEnd()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_109

    .line 884
    const-string v4, "dtend"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->dtEnd()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    :goto_66
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v4, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->description()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v4, "eventTimezone"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->timezone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v4, "duration"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->duration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v4, "rrule"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->rrule()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v4, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->location()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->allday()Z

    move-result v4

    if-eqz v4, :cond_110

    .line 894
    const-string v4, "allDay"

    const-string v6, "1"

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_a9
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->privacy()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->timeShownAs()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->numAttendees()I

    move-result v24

    .line 901
    .local v24, numAttendees:I
    if-lez v24, :cond_118

    .line 902
    const-string v4, "hasAttendeeData"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->numReminders()I

    move-result v25

    .line 906
    .local v25, numReminders:I
    if-lez v25, :cond_123

    .line 907
    const-string v4, "hasAlarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    :goto_e3
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v13, v14, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 913
    .local v26, numRows:I
    if-nez v26, :cond_12e

    .line 915
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event not updated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v4, 0x0

    .line 1106
    :goto_108
    return v4

    .line 886
    .end local v24           #numAttendees:I
    .end local v25           #numReminders:I
    .end local v26           #numRows:I
    :cond_109
    const-string v4, "dtend"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_66

    .line 896
    :cond_110
    const-string v4, "allDay"

    const-string v6, "0"

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 904
    .restart local v24       #numAttendees:I
    :cond_118
    const-string v4, "hasAttendeeData"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d3

    .line 909
    .restart local v25       #numReminders:I
    :cond_123
    const-string v4, "hasAlarm"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e3

    .line 918
    .restart local v26       #numRows:I
    :cond_12e
    const/4 v4, 0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_15d

    .line 919
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple rows update ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when updating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v4, 0x0

    goto :goto_108

    .line 930
    :cond_15d
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 931
    .local v18, existingReminders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/samsung/swift/service/calendar/CalendarReminder;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v23, newReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarReminder;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_169
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_199

    .line 934
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEvent;->reminder(I)Lcom/samsung/swift/service/calendar/CalendarReminder;

    move-result-object v27

    .line 935
    .local v27, r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/swift/service/calendar/CalendarReminder;->id()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 936
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :goto_18a
    add-int/lit8 v19, v19, 0x1

    goto :goto_169

    .line 938
    :cond_18d
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/swift/service/calendar/CalendarReminder;->id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18a

    .line 941
    .end local v27           #r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    :cond_199
    const/16 v28, 0x0

    .line 942
    .local v28, rc:Landroid/database/Cursor;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "reminders"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 945
    .local v3, reminderUri:Landroid/net/Uri;
    const/4 v4, 0x0

    :try_start_1a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 946
    if-eqz v28, :cond_25b

    .line 948
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_262

    .line 951
    :goto_1cb
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_262

    .line 953
    const-string v4, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 954
    .local v16, dbReminderid:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/swift/service/calendar/CalendarReminder;

    .line 955
    .local v32, suppliedReminder:Lcom/samsung/swift/service/calendar/CalendarReminder;
    if-nez v32, :cond_221

    .line 959
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reminders/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 960
    if-nez v26, :cond_21b

    .line 984
    :cond_210
    :goto_210
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_213
    .catchall {:try_start_1a6 .. :try_end_213} :catchall_214

    goto :goto_1cb

    .line 994
    .end local v16           #dbReminderid:Ljava/lang/String;
    .end local v32           #suppliedReminder:Lcom/samsung/swift/service/calendar/CalendarReminder;
    :catchall_214
    move-exception v4

    if-eqz v28, :cond_21a

    .line 995
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 994
    :cond_21a
    throw v4

    .line 964
    .restart local v16       #dbReminderid:Ljava/lang/String;
    .restart local v32       #suppliedReminder:Lcom/samsung/swift/service/calendar/CalendarReminder;
    :cond_21b
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_210

    goto :goto_210

    .line 972
    :cond_221
    :try_start_221
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setEventId(Ljava/lang/String;)V

    .line 973
    invoke-static/range {v32 .. v32}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->reminderToContentValues(Lcom/samsung/swift/service/calendar/CalendarReminder;)Landroid/content/ContentValues;

    move-result-object v29

    .line 974
    .local v29, rcv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reminders/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 975
    if-eqz v26, :cond_210

    .line 979
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_210

    goto :goto_210

    .line 989
    .end local v16           #dbReminderid:Ljava/lang/String;
    .end local v29           #rcv:Landroid/content/ContentValues;
    .end local v32           #suppliedReminder:Lcom/samsung/swift/service/calendar/CalendarReminder;
    :cond_25b
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "reminders cursor null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_262
    .catchall {:try_start_221 .. :try_end_262} :catchall_214

    .line 994
    :cond_262
    if-eqz v28, :cond_267

    .line 995
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 999
    :cond_267
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_26b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/swift/service/calendar/CalendarReminder;

    .line 1003
    .restart local v27       #r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setEventId(Ljava/lang/String;)V

    .line 1004
    invoke-static/range {v27 .. v27}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->reminderToContentValues(Lcom/samsung/swift/service/calendar/CalendarReminder;)Landroid/content/ContentValues;

    move-result-object v29

    .line 1005
    .restart local v29       #rcv:Landroid/content/ContentValues;
    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1008
    .local v30, resultUri:Landroid/net/Uri;
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1010
    .local v21, id:Ljava/lang/String;
    const/16 v4, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 1011
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setId(Ljava/lang/String;)V

    goto :goto_26b

    .line 1022
    .end local v21           #id:Ljava/lang/String;
    .end local v27           #r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    .end local v29           #rcv:Landroid/content/ContentValues;
    .end local v30           #resultUri:Landroid/net/Uri;
    :cond_2a6
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1023
    .local v17, existingAttendees:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/samsung/swift/service/calendar/CalendarAttendee;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v22, newAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarAttendee;>;"
    const/16 v19, 0x0

    :goto_2b2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_2de

    .line 1026
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEvent;->attendee(I)Lcom/samsung/swift/service/calendar/CalendarAttendee;

    move-result-object v10

    .line 1027
    .local v10, a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    invoke-virtual {v10}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->id()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d4

    .line 1028
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    :goto_2d1
    add-int/lit8 v19, v19, 0x1

    goto :goto_2b2

    .line 1030
    :cond_2d4
    invoke-virtual {v10}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d1

    .line 1033
    .end local v10           #a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    :cond_2de
    const/4 v11, 0x0

    .line 1034
    .local v11, ac:Landroid/database/Cursor;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "attendees"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1037
    .local v5, attendeeUri:Landroid/net/Uri;
    const/4 v6, 0x0

    :try_start_2ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1038
    if-eqz v11, :cond_394

    .line 1040
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_39b

    .line 1043
    :goto_310
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_39b

    .line 1045
    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1046
    .local v15, dbAttendeeid:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/samsung/swift/service/calendar/CalendarAttendee;

    .line 1047
    .local v31, suppliedAttendee:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    if-nez v31, :cond_35e

    .line 1051
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attendees/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1052
    if-nez v26, :cond_358

    .line 1076
    :cond_34d
    :goto_34d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_350
    .catchall {:try_start_2ea .. :try_end_350} :catchall_351

    goto :goto_310

    .line 1086
    .end local v15           #dbAttendeeid:Ljava/lang/String;
    .end local v31           #suppliedAttendee:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    :catchall_351
    move-exception v4

    if-eqz v11, :cond_357

    .line 1087
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1086
    :cond_357
    throw v4

    .line 1056
    .restart local v15       #dbAttendeeid:Ljava/lang/String;
    .restart local v31       #suppliedAttendee:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    :cond_358
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_34d

    goto :goto_34d

    .line 1064
    :cond_35e
    :try_start_35e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setEventId(Ljava/lang/String;)V

    .line 1065
    invoke-static/range {v31 .. v31}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->attendeeToContentValues(Lcom/samsung/swift/service/calendar/CalendarAttendee;)Landroid/content/ContentValues;

    move-result-object v12

    .line 1066
    .local v12, acv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attendees/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v12, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1067
    if-eqz v26, :cond_34d

    .line 1071
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_34d

    goto :goto_34d

    .line 1081
    .end local v12           #acv:Landroid/content/ContentValues;
    .end local v15           #dbAttendeeid:Ljava/lang/String;
    .end local v31           #suppliedAttendee:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    :cond_394
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "attendees cursor null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39b
    .catchall {:try_start_35e .. :try_end_39b} :catchall_351

    .line 1086
    :cond_39b
    if-eqz v11, :cond_3a0

    .line 1087
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_3a0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3a4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3db

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/swift/service/calendar/CalendarAttendee;

    .line 1095
    .restart local v10       #a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/calendar/CalendarEvent;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setEventId(Ljava/lang/String;)V

    .line 1096
    invoke-static {v10}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->attendeeToContentValues(Lcom/samsung/swift/service/calendar/CalendarAttendee;)Landroid/content/ContentValues;

    move-result-object v29

    .line 1097
    .restart local v29       #rcv:Landroid/content/ContentValues;
    move-object/from16 v0, v29

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1100
    .restart local v30       #resultUri:Landroid/net/Uri;
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1102
    .restart local v21       #id:Ljava/lang/String;
    const/16 v4, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 1103
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setId(Ljava/lang/String;)V

    goto :goto_3a4

    .line 1106
    .end local v10           #a:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    .end local v21           #id:Ljava/lang/String;
    .end local v29           #rcv:Landroid/content/ContentValues;
    .end local v30           #resultUri:Landroid/net/Uri;
    :cond_3db
    const/4 v4, 0x1

    goto/16 :goto_108
.end method

.method private static editTask(Lcom/samsung/swift/service/calendar/Task;)Z
    .registers 14
    .parameter "task"

    .prologue
    .line 1797
    sget-object v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "Java editTask called"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1801
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v5

    .line 1802
    .local v5, taskUriBase:Landroid/net/Uri;
    if-nez v5, :cond_18

    .line 1803
    const/4 v8, 0x0

    .line 1858
    :goto_17
    return v8

    .line 1804
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1806
    .local v4, taskUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1807
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "subject"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->title()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v8, "body"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->body()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v8, "body_size"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->body()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1810
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->dueDate()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_d4

    .line 1811
    const-string v8, "due_date"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->dueDate()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1816
    :goto_62
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->complete()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 1817
    const-string v8, "complete"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1820
    :goto_72
    const-string v8, "importance"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->priority()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1821
    const-string v8, "accountKey"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->account()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v8

    if-lez v8, :cond_f6

    .line 1823
    sget-object v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "Java editTask: reminderType > 0"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const-string v8, "reminder_set"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1825
    const-string v8, "reminder_type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1826
    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e5

    .line 1827
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1828
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1829
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1830
    .local v6, timeout:J
    const-string v8, "reminder_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1846
    .end local v2           #now:Landroid/text/format/Time;
    .end local v6           #timeout:J
    :cond_c9
    :goto_c9
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1848
    .local v3, numRows:I
    if-nez v3, :cond_120

    .line 1851
    const/4 v8, 0x0

    goto/16 :goto_17

    .line 1814
    .end local v3           #numRows:I
    :cond_d4
    const-string v8, "due_date"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_62

    .line 1819
    :cond_da
    const-string v8, "complete"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_72

    .line 1833
    :cond_e5
    const-string v8, "reminder_time"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_c9

    .line 1837
    :cond_f6
    sget-object v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "Java editTask: reminderType <= 0"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string v8, "reminder_set"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1839
    const-string v8, "reminder_type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/Task;->reminderType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1840
    sget v8, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_c9

    .line 1842
    const-string v8, "reminder_time"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_c9

    .line 1853
    .restart local v3       #numRows:I
    :cond_120
    const/4 v8, 0x1

    if-eq v3, v8, :cond_126

    .line 1855
    const/4 v8, 0x0

    goto/16 :goto_17

    .line 1858
    :cond_126
    const/4 v8, 0x1

    goto/16 :goto_17
.end method

.method private static findOppositeDstDate(Ljava/util/TimeZone;JZ)J
    .registers 14
    .parameter "tz"
    .parameter "time"
    .parameter "before"

    .prologue
    .line 2048
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 2052
    .local v0, dstActive:Z
    if-eqz p3, :cond_22

    .line 2053
    const-wide/32 v7, 0xf099c0

    sub-long v3, p1, v7

    .line 2056
    .local v3, sixmonthsoff:J
    :goto_13
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v3

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    if-eq v0, v7, :cond_28

    .line 2078
    .end local v3           #sixmonthsoff:J
    :goto_21
    return-wide v3

    .line 2055
    :cond_22
    const-wide/32 v7, 0xf099c0

    add-long v3, p1, v7

    .restart local v3       #sixmonthsoff:J
    goto :goto_13

    .line 2061
    :cond_28
    if-eqz p3, :cond_3f

    .line 2062
    const-wide/32 v7, 0x784ce0

    sub-long v5, p1, v7

    .line 2065
    .local v5, threemonthsoff:J
    :goto_2f
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v5

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    if-eq v0, v7, :cond_45

    move-wide v3, v5

    .line 2066
    goto :goto_21

    .line 2064
    .end local v5           #threemonthsoff:J
    :cond_3f
    const-wide/32 v7, 0x784ce0

    add-long v5, p1, v7

    .restart local v5       #threemonthsoff:J
    goto :goto_2f

    .line 2070
    :cond_45
    if-eqz p3, :cond_5c

    .line 2071
    const-wide/32 v7, 0x168e6a0

    sub-long v1, p1, v7

    .line 2074
    .local v1, ninemonthsoff:J
    :goto_4c
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v1

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    if-eq v0, v7, :cond_62

    move-wide v3, v1

    .line 2075
    goto :goto_21

    .line 2073
    .end local v1           #ninemonthsoff:J
    :cond_5c
    const-wide/32 v7, 0x168e6a0

    add-long v1, p1, v7

    .restart local v1       #ninemonthsoff:J
    goto :goto_4c

    :cond_62
    move-wide v3, p1

    .line 2078
    goto :goto_21
.end method

.method private static get(J)Lcom/samsung/swift/service/calendar/CalendarEvent;
    .registers 23
    .parameter "id"

    .prologue
    .line 1336
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java event get"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v15, 0x0

    .line 1340
    .local v15, e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1342
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1343
    .local v13, appendedPath:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1347
    .local v3, calendarUri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 1348
    .local v14, c:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1349
    .local v19, rc:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1351
    .local v12, ac:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_35
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1353
    if-eqz v14, :cond_2b1

    .line 1355
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2a6

    .line 1367
    new-instance v16, Lcom/samsung/swift/service/calendar/CalendarEvent;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/swift/service/calendar/CalendarEvent;-><init>()V
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_2ae

    .line 1369
    .end local v15           #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    .local v16, e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    :try_start_46
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1370
    .local v17, eid:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setId(Ljava/lang/String;)V

    .line 1371
    const-string v4, "calendar_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setCalendarId(Ljava/lang/String;)V

    .line 1372
    const-string v4, "dtstart"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setDtStart(J)V

    .line 1373
    const-string v4, "dtend"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setDtEnd(J)V

    .line 1374
    const-string v4, "title"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setTitle(Ljava/lang/String;)V

    .line 1375
    const-string v4, "description"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setDescription(Ljava/lang/String;)V

    .line 1376
    const-string v4, "eventTimezone"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1377
    .local v20, tz:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setTimezone(Ljava/lang/String;)V

    .line 1378
    invoke-static/range {v20 .. v20}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->getTimezoneOffset(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setTimezoneOffset(I)V

    .line 1379
    const-string v4, "duration"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setDuration(Ljava/lang/String;)V

    .line 1380
    const-string v4, "rrule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setRrule(Ljava/lang/String;)V

    .line 1381
    const-string v4, "eventLocation"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setLocation(Ljava/lang/String;)V

    .line 1382
    const-string v4, "allDay"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1f9

    .line 1384
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setAllday(Z)V

    .line 1389
    :goto_fd
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setPrivacy(I)V

    .line 1391
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setTimeShownAs(I)V

    .line 1394
    const-string v4, "hasAttendeeData"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_208

    .line 1397
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "attendees"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1398
    .local v5, attendeeUri:Landroid/net/Uri;
    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1399
    if-eqz v19, :cond_201

    .line 1401
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_208

    .line 1403
    :goto_156
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_208

    .line 1405
    new-instance v18, Lcom/samsung/swift/service/calendar/CalendarAttendee;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/swift/service/calendar/CalendarAttendee;-><init>()V

    .line 1406
    .local v18, r:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    const-string v4, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setId(Ljava/lang/String;)V

    .line 1407
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setEventId(Ljava/lang/String;)V

    .line 1408
    const-string v4, "attendeeType"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setType(I)V

    .line 1409
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setEmail(Ljava/lang/String;)V

    .line 1410
    const-string v4, "attendeeName"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setName(Ljava/lang/String;)V

    .line 1411
    const-string v4, "attendeeRelationship"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setRelationship(I)V

    .line 1412
    const-string v4, "attendeeStatus"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarAttendee;->setStatus(I)V

    .line 1413
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEvent;->addAttendee(Lcom/samsung/swift/service/calendar/CalendarAttendee;)V

    .line 1414
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1e4
    .catchall {:try_start_46 .. :try_end_1e4} :catchall_1e6

    goto/16 :goto_156

    .line 1459
    .end local v5           #attendeeUri:Landroid/net/Uri;
    .end local v17           #eid:Ljava/lang/String;
    .end local v18           #r:Lcom/samsung/swift/service/calendar/CalendarAttendee;
    .end local v20           #tz:Ljava/lang/String;
    :catchall_1e6
    move-exception v4

    move-object/from16 v15, v16

    .end local v16           #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    .restart local v15       #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    :goto_1e9
    if-eqz v14, :cond_1ee

    .line 1460
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1461
    :cond_1ee
    if-eqz v19, :cond_1f3

    .line 1462
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1463
    :cond_1f3
    if-eqz v12, :cond_1f8

    .line 1464
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1459
    :cond_1f8
    throw v4

    .line 1387
    .end local v15           #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    .restart local v16       #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    .restart local v17       #eid:Ljava/lang/String;
    .restart local v20       #tz:Ljava/lang/String;
    :cond_1f9
    const/4 v4, 0x1

    :try_start_1fa
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarEvent;->setAllday(Z)V

    goto/16 :goto_fd

    .line 1419
    .restart local v5       #attendeeUri:Landroid/net/Uri;
    :cond_201
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "attendees cursor null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .end local v5           #attendeeUri:Landroid/net/Uri;
    :cond_208
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "reminders"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1425
    .local v7, reminderUri:Landroid/net/Uri;
    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1426
    if-eqz v19, :cond_28d

    .line 1428
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_294

    .line 1430
    :goto_237
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_294

    .line 1432
    new-instance v18, Lcom/samsung/swift/service/calendar/CalendarReminder;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/swift/service/calendar/CalendarReminder;-><init>()V

    .line 1433
    .local v18, r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    const-string v4, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setId(Ljava/lang/String;)V

    .line 1434
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setEventId(Ljava/lang/String;)V

    .line 1435
    const-string v4, "minutes"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setMinutes(J)V

    .line 1436
    const-string v4, "method"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarReminder;->setMethod(I)V

    .line 1438
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/calendar/CalendarEvent;->addReminder(Lcom/samsung/swift/service/calendar/CalendarReminder;)V

    .line 1439
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_237

    .line 1444
    .end local v18           #r:Lcom/samsung/swift/service/calendar/CalendarReminder;
    :cond_28d
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "reminders cursor null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_294
    .catchall {:try_start_1fa .. :try_end_294} :catchall_1e6

    :cond_294
    move-object/from16 v15, v16

    .line 1459
    .end local v7           #reminderUri:Landroid/net/Uri;
    .end local v16           #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    .end local v17           #eid:Ljava/lang/String;
    .end local v20           #tz:Ljava/lang/String;
    .restart local v15       #e:Lcom/samsung/swift/service/calendar/CalendarEvent;
    :goto_296
    if-eqz v14, :cond_29b

    .line 1460
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1461
    :cond_29b
    if-eqz v19, :cond_2a0

    .line 1462
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1463
    :cond_2a0
    if-eqz v12, :cond_2a5

    .line 1464
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1467
    :cond_2a5
    return-object v15

    .line 1449
    :cond_2a6
    :try_start_2a6
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "event cursor no entries"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_296

    .line 1459
    :catchall_2ae
    move-exception v4

    goto/16 :goto_1e9

    .line 1454
    :cond_2b1
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "event cursor null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b8
    .catchall {:try_start_2a6 .. :try_end_2b8} :catchall_2ae

    goto :goto_296
.end method

.method private static getCalendarCapabilities()Lcom/samsung/swift/service/calendar/CalendarCapabilities;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2128
    new-instance v0, Lcom/samsung/swift/service/calendar/CalendarCapabilities;

    invoke-direct {v0}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;-><init>()V

    .line 2130
    .local v0, calendarCapabilities:Lcom/samsung/swift/service/calendar/CalendarCapabilities;
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTextSearchSupported(Z)V

    .line 2131
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setEventReminderSupported(Z)V

    .line 2132
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setMultiEventReminderSupported(Z)V

    .line 2133
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskReminderSupported(Z)V

    .line 2134
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setMultiTaskReminderSupported(Z)V

    .line 2135
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setForYearsSupported(Z)V

    .line 2137
    invoke-static {v4}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v2

    .line 2138
    .local v2, taskUriBase:Landroid/net/Uri;
    if-nez v2, :cond_2c

    .line 2140
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskSupported(Z)V

    .line 2141
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskAccountSupported(Z)V

    .line 2154
    :cond_25
    :goto_25
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setRecurrenceSingleDeleteSupport(Z)V

    .line 2155
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setRecurrenceSingleEditSupport(Z)V

    .line 2157
    return-object v0

    .line 2145
    :cond_2c
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskSupported(Z)V

    .line 2146
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskAccountSupported(Z)V

    .line 2147
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->taskAccounts()[Lcom/samsung/swift/service/calendar/TaskAccount;

    move-result-object v1

    .line 2148
    .local v1, ta:[Lcom/samsung/swift/service/calendar/TaskAccount;
    if-eqz v1, :cond_25

    .line 2149
    array-length v3, v1

    if-eqz v3, :cond_25

    .line 2150
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/calendar/CalendarCapabilities;->setTaskAccountSupported(Z)V

    goto :goto_25
.end method

.method private static getDstInfo(JLjava/lang/String;)Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;
    .registers 10
    .parameter "time"
    .parameter "timezone"

    .prologue
    .line 2004
    const/4 v4, 0x0

    .line 2005
    .local v4, tz:Ljava/util/TimeZone;
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_47

    .line 2007
    :cond_9
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Timezone null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 2018
    :goto_14
    new-instance v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;

    invoke-direct {v2}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;-><init>()V

    .line 2021
    .local v2, outDstInfo:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;
    new-instance v3, Ljava/util/Date;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p0

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 2022
    .local v3, suppliedTime:Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;->dstActive:Z

    .line 2023
    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;->dstOffset:J

    .line 2030
    const/4 v5, 0x1

    invoke-static {v4, p0, p1, v5}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->findOppositeDstDate(Ljava/util/TimeZone;JZ)J

    move-result-wide v0

    .line 2033
    .local v0, oppositeDstDate:J
    invoke-static {v4, v0, v1, p0, p1}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->binaryTransitionSearch(Ljava/util/TimeZone;JJ)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;->previousTransition:J

    .line 2038
    const/4 v5, 0x0

    invoke-static {v4, p0, p1, v5}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->findOppositeDstDate(Ljava/util/TimeZone;JZ)J

    move-result-wide v0

    .line 2041
    invoke-static {v4, p0, p1, v0, v1}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->binaryTransitionSearch(Ljava/util/TimeZone;JJ)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;->nextTransition:J

    .line 2043
    return-object v2

    .line 2012
    .end local v0           #oppositeDstDate:J
    .end local v2           #outDstInfo:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;
    .end local v3           #suppliedTime:Ljava/util/Date;
    :cond_47
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    goto :goto_14
.end method

.method private static getSelectedCalendars()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "calendars"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 750
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 751
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 753
    .local v7, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_10
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 757
    :goto_3a
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 758
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_55

    goto :goto_3a

    .line 765
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_55
    move-exception v2

    if-eqz v6, :cond_5b

    .line 766
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_5b
    throw v2

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_5c
    if-eqz v6, :cond_61

    .line 766
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_61
    return-object v7
.end method

.method private static getTask(J)Lcom/samsung/swift/service/calendar/Task;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1650
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "Java getTask"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const/4 v7, 0x0

    .line 1654
    .local v7, task:Lcom/samsung/swift/service/calendar/Task;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1656
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v1

    .line 1657
    .local v1, taskUri:Landroid/net/Uri;
    if-nez v1, :cond_19

    .line 1697
    :goto_18
    return-object v2

    .line 1662
    :cond_19
    const/4 v6, 0x0

    .line 1664
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1666
    if-eqz v6, :cond_56

    .line 1668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1680
    invoke-static {v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->buildTask(Landroid/database/Cursor;)Lcom/samsung/swift/service/calendar/Task;
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_4f

    move-result-object v7

    .line 1693
    :goto_40
    if-eqz v6, :cond_45

    .line 1694
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    move-object v2, v7

    .line 1697
    goto :goto_18

    .line 1683
    :cond_47
    :try_start_47
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "task cursor no entries"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4f

    goto :goto_40

    .line 1693
    :catchall_4f
    move-exception v2

    if-eqz v6, :cond_55

    .line 1694
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1693
    :cond_55
    throw v2

    .line 1688
    :cond_56
    :try_start_56
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "task cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_4f

    goto :goto_40
.end method

.method private static getTimezoneOffset(Ljava/lang/String;)I
    .registers 4
    .parameter "tzName"

    .prologue
    .line 1988
    const/4 v0, 0x0

    .line 1989
    .local v0, tz:Ljava/util/TimeZone;
    if-eqz p0, :cond_7

    .line 1991
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1993
    :cond_7
    if-nez v0, :cond_d

    .line 1996
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1998
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method protected static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 231
    const-class v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 233
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->revision:Ljava/lang/String;

    .line 234
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 235
    monitor-exit v1

    return-void

    .line 234
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 231
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static is24Hour()Z
    .registers 1

    .prologue
    .line 2259
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 483
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 484
    const/4 v1, 0x1

    .line 488
    :goto_4
    return v1

    .line 486
    :catch_5
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static makeInstanceQuery(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Vector;JJLjava/util/ArrayList;)I
    .registers 24
    .parameter "u"
    .parameter "c"
    .parameter "sqlWhereClause"
    .parameter
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/swift/service/calendar/CalendarEventInstance;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 661
    .local p3, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .local p8, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarEventInstance;>;"
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 663
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    .line 667
    .local v6, sa:[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1a
    const-string v7, "_id ASC"

    move-object v3, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 669
    if-eqz p1, :cond_1d5

    .line 671
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-wide/from16 v0, p4

    long-to-int v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 675
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Column count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v10, 0x0

    .line 688
    .local v10, itemCount:I
    :goto_67
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-eqz v3, :cond_72

    int-to-long v3, v10

    cmp-long v3, v3, p6

    if-gez v3, :cond_1cb

    :cond_72
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 689
    new-instance v9, Lcom/samsung/swift/service/calendar/CalendarEventInstance;

    invoke-direct {v9}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;-><init>()V

    .line 691
    .local v9, instance:Lcom/samsung/swift/service/calendar/CalendarEventInstance;
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setId(Ljava/lang/String;)V

    .line 692
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setCalendarId(Ljava/lang/String;)V

    .line 693
    const-string v3, "event_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setEventId(Ljava/lang/String;)V

    .line 694
    const-string v3, "begin"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v3, v13

    invoke-virtual {v9, v3, v4}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setBegin(J)V

    .line 695
    const-string v3, "end"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v3, v13

    invoke-virtual {v9, v3, v4}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setEnd(J)V

    .line 696
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setTitle(Ljava/lang/String;)V

    .line 697
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setDescription(Ljava/lang/String;)V

    .line 698
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 699
    .local v12, tz:Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setTimezone(Ljava/lang/String;)V

    .line 700
    invoke-static {v12}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->getTimezoneOffset(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setTimezoneOffset(I)V

    .line 701
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setLocation(Ljava/lang/String;)V

    .line 702
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1a9

    .line 703
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setAllday(Z)V

    .line 706
    :goto_137
    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1b5

    .line 707
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setHasReminder(Z)V

    .line 710
    :goto_14b
    const-string v3, "hasAttendeeData"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1ba

    .line 711
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setHasAttendees(Z)V

    .line 714
    :goto_15f
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 715
    .local v11, rrule:Ljava/lang/String;
    if-eqz v11, :cond_1bf

    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bf

    .line 716
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setRepeating(Z)V

    .line 719
    :goto_17b
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->visibleColumnName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setPrivacy(I)V

    .line 720
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->availabilityColumnName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setTimeShownAs(I)V

    .line 722
    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 724
    add-int/lit8 v10, v10, 0x1

    .line 725
    goto/16 :goto_67

    .line 705
    .end local v11           #rrule:Ljava/lang/String;
    :cond_1a9
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setAllday(Z)V
    :try_end_1ad
    .catchall {:try_start_1a .. :try_end_1ad} :catchall_1ae

    goto :goto_137

    .line 740
    .end local v9           #instance:Lcom/samsung/swift/service/calendar/CalendarEventInstance;
    .end local v10           #itemCount:I
    .end local v12           #tz:Ljava/lang/String;
    :catchall_1ae
    move-exception v3

    if-eqz p1, :cond_1b4

    .line 741
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_1b4
    throw v3

    .line 709
    .restart local v9       #instance:Lcom/samsung/swift/service/calendar/CalendarEventInstance;
    .restart local v10       #itemCount:I
    .restart local v12       #tz:Ljava/lang/String;
    :cond_1b5
    const/4 v3, 0x1

    :try_start_1b6
    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setHasReminder(Z)V

    goto :goto_14b

    .line 713
    :cond_1ba
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setHasAttendees(Z)V

    goto :goto_15f

    .line 718
    .restart local v11       #rrule:Ljava/lang/String;
    :cond_1bf
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/samsung/swift/service/calendar/CalendarEventInstance;->setRepeating(Z)V

    goto :goto_17b

    .line 728
    .end local v9           #instance:Lcom/samsung/swift/service/calendar/CalendarEventInstance;
    .end local v10           #itemCount:I
    .end local v11           #rrule:Ljava/lang/String;
    .end local v12           #tz:Ljava/lang/String;
    :cond_1c4
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "instance cursor no entries"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1cb
    :goto_1cb
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_1ce
    .catchall {:try_start_1b6 .. :try_end_1ce} :catchall_1ae

    move-result v8

    .line 740
    .local v8, count:I
    if-eqz p1, :cond_1d4

    .line 741
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_1d4
    return v8

    .line 733
    .end local v8           #count:I
    :cond_1d5
    :try_start_1d5
    sget-object v3, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "instance cursor null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catchall {:try_start_1d5 .. :try_end_1dc} :catchall_1ae

    goto :goto_1cb
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 2273
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Java CalendarPlugin loading called..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/calendar/CalendarContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/calendar/CalendarContentObserver;

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->contentObserver:Lcom/samsung/swift/service/calendar/CalendarContentObserver;

    .line 2275
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2266
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->contentObserver:Lcom/samsung/swift/service/calendar/CalendarContentObserver;

    .line 2267
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 2268
    return-void
.end method

.method private static reminderToContentValues(Lcom/samsung/swift/service/calendar/CalendarReminder;)Landroid/content/ContentValues;
    .registers 5
    .parameter "r"

    .prologue
    .line 1111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    .local v0, rcv:Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarReminder;->eventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v1, "minutes"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarReminder;->minutes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1114
    const-string v1, "method"

    invoke-virtual {p0}, Lcom/samsung/swift/service/calendar/CalendarReminder;->method()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    return-object v0
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1891
    sget-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1893
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/calendar/CalendarPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1894
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static search()V
    .registers 0

    .prologue
    .line 1511
    return-void
.end method

.method private static searchInstances(Lcom/samsung/swift/util/SearchQueryFilter;JJIJJ)Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;
    .registers 55
    .parameter "sqf"
    .parameter "startDate"
    .parameter "endDate"
    .parameter "timezone"
    .parameter "startIndex"
    .parameter "maxItems"

    .prologue
    .line 495
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v11, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarEventInstance;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v21, allDayInstances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarEventInstance;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "instances/when/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, p1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, p3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 499
    .local v23, appendedPath:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 501
    .local v3, calendarUri:Landroid/net/Uri;
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instances uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v4, 0x0

    .line 507
    .local v4, c:Landroid/database/Cursor;
    :try_start_56
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->getSelectedCalendars()Ljava/util/Set;

    move-result-object v37

    .line 509
    .local v37, selectedCalendars:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget v5, Lcom/samsung/swift/util/SearchQueryFilter;->calendarId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v25

    .line 510
    .local v25, calendarIds:[Ljava/lang/String;
    if-eqz v25, :cond_a2

    move-object/from16 v0, v25

    array-length v5, v0

    if-eqz v5, :cond_a2

    .line 512
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 514
    .local v36, searchedCalendars:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v24, v25

    .local v24, arr$:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v34, v0

    .local v34, len$:I
    const/16 v33, 0x0

    .local v33, i$:I
    :goto_77
    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_95

    aget-object v26, v24, v33

    .line 516
    .local v26, cid:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 518
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_92
    add-int/lit8 v33, v33, 0x1

    goto :goto_77

    .line 523
    .end local v26           #cid:Ljava/lang/String;
    :cond_95
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_a2

    .line 524
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 528
    .end local v24           #arr$:[Ljava/lang/String;
    .end local v33           #i$:I
    .end local v34           #len$:I
    .end local v36           #searchedCalendars:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_a2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 531
    .local v6, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v38, Ljava/lang/StringBuffer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuffer;-><init>()V

    .line 532
    .local v38, sqlWhereClause:Ljava/lang/StringBuffer;
    const-string v5, "calendar_id IN ("

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v40

    .line 534
    .local v40, startLength:I
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :goto_bb
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 536
    .local v31, i:J
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move/from16 v0, v40

    if-le v5, v0, :cond_da

    const-string v5, ","

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_da
    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_e1
    .catchall {:try_start_56 .. :try_end_e1} :catchall_e2

    goto :goto_bb

    .line 647
    .end local v6           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25           #calendarIds:[Ljava/lang/String;
    .end local v31           #i:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #selectedCalendars:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v38           #sqlWhereClause:Ljava/lang/StringBuffer;
    .end local v40           #startLength:I
    :catchall_e2
    move-exception v5

    if-eqz v4, :cond_e8

    .line 648
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_e8
    throw v5

    .line 539
    .restart local v6       #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v25       #calendarIds:[Ljava/lang/String;
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v37       #selectedCalendars:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v38       #sqlWhereClause:Ljava/lang/StringBuffer;
    .restart local v40       #startLength:I
    :cond_e9
    :try_start_e9
    const-string v5, ")"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    sget v5, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v44

    .line 543
    .local v44, unqArray:[Ljava/lang/String;
    move-object/from16 v0, v44

    array-length v5, v0

    if-lez v5, :cond_16c

    .line 545
    const-string v5, " AND "

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v5, "("

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const/16 v31, 0x0

    .local v31, i:I
    :goto_10d
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v31

    if-ge v0, v5, :cond_165

    .line 551
    if-lez v31, :cond_11d

    .line 553
    const-string v5, " OR "

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    :cond_11d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v44, v31

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 559
    .local v35, s:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title like "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " OR description like "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    add-int/lit8 v31, v31, 0x1

    goto :goto_10d

    .line 564
    .end local v35           #s:Ljava/lang/String;
    :cond_165
    const-string v5, ")"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    .end local v31           #i:I
    :cond_16c
    const/16 v43, 0x0

    .line 571
    .local v43, unlimited:Z
    const-wide/16 v7, 0x0

    cmp-long v5, p8, v7

    if-nez v5, :cond_176

    .line 572
    const/16 v43, 0x1

    .line 575
    :cond_176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND allDay = 0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v3 .. v11}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->makeInstanceQuery(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Vector;JJLjava/util/ArrayList;)I

    move-result v27

    .line 587
    .local v27, estimatedResultSize:I
    new-instance v29, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, p1

    move-object/from16 v0, v29

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 588
    .local v29, eventStart:Ljava/util/Date;
    new-instance v28, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, p3

    move-object/from16 v0, v28

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 590
    .local v28, eventEnd:Ljava/util/Date;
    new-instance v41, Ljava/util/SimpleTimeZone;

    const/4 v5, 0x0

    const-string v7, "UTC"

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 592
    .local v41, tz:Ljava/util/TimeZone;
    new-instance v30, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 593
    .local v30, gc:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 596
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 599
    const v5, 0x186a0

    move/from16 v0, p5

    if-ne v0, v5, :cond_348

    .line 600
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v41

    .line 605
    :goto_1d7
    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 606
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 609
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 614
    new-instance v42, Ljava/util/SimpleTimeZone;

    const/4 v5, 0x0

    const-string v7, "UTC"

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 615
    .local v42, tzUtc:Ljava/util/TimeZone;
    new-instance v12, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v42

    invoke-direct {v12, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 616
    .local v12, ADSearchStart:Ljava/util/GregorianCalendar;
    new-instance v22, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 618
    .local v22, ADSearchEnd:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 619
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    const/4 v5, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 620
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 621
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    const/4 v5, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v16

    const/16 v17, 0x17

    const/16 v18, 0x3b

    const/16 v19, 0x3b

    move-object/from16 v13, v22

    invoke-virtual/range {v13 .. v19}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "instances/when/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 627
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 629
    .local v13, allDayCalendarUri:Landroid/net/Uri;
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allday search URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-wide/16 v7, 0x0

    cmp-long v5, p8, v7

    if-eqz v5, :cond_2aa

    .line 633
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v7, v5

    sub-long p8, p8, v7

    .line 634
    :cond_2aa
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v7, v5

    add-long v7, v7, p6

    move/from16 v0, v27

    int-to-long v9, v0

    sub-long p6, v7, v9

    .line 636
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "All-day query: startIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " maxItems: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND allDay = 1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v14, v4

    move-object/from16 v16, v6

    move-wide/from16 v17, p6

    move-wide/from16 v19, p8

    invoke-static/range {v13 .. v21}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->makeInstanceQuery(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Vector;JJLjava/util/ArrayList;)I

    move-result v5

    add-int v27, v27, v5

    .line 640
    if-nez v43, :cond_308

    const-wide/16 v7, 0x0

    cmp-long v5, p8, v7

    if-lez v5, :cond_30d

    .line 642
    :cond_308
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_30d
    .catchall {:try_start_e9 .. :try_end_30d} :catchall_e2

    .line 647
    :cond_30d
    if-eqz v4, :cond_312

    .line 648
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_312
    new-instance v39, Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;

    invoke-direct/range {v39 .. v39}, Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;-><init>()V

    .line 652
    .local v39, sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/samsung/swift/service/calendar/CalendarEventInstance;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/samsung/swift/service/calendar/CalendarEventInstance;

    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;->resultArray:[Lcom/samsung/swift/service/calendar/CalendarEventInstance;

    .line 653
    move/from16 v0, v27

    int-to-long v7, v0

    move-object/from16 v0, v39

    iput-wide v7, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;->estimatedResultSize:J

    .line 654
    sget-object v5, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Estimated Result Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v39

    iget-wide v8, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;->estimatedResultSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-object v39

    .line 602
    .end local v12           #ADSearchStart:Ljava/util/GregorianCalendar;
    .end local v13           #allDayCalendarUri:Landroid/net/Uri;
    .end local v22           #ADSearchEnd:Ljava/util/GregorianCalendar;
    .end local v39           #sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$SearchResult;
    .end local v42           #tzUtc:Ljava/util/TimeZone;
    :cond_348
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x3e8

    :try_start_34c
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->setRawOffset(I)V
    :try_end_351
    .catchall {:try_start_34c .. :try_end_351} :catchall_e2

    goto/16 :goto_1d7
.end method

.method private static searchTasks(Lcom/samsung/swift/util/SearchQueryFilter;JJ)Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;
    .registers 30
    .parameter "sqf"
    .parameter "startIndex"
    .parameter "maxItems"

    .prologue
    .line 1516
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .local v18, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/Task;>;"
    const/16 v19, 0x0

    .line 1519
    .local v19, totalSize:I
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1521
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;

    move-result-object v3

    .line 1522
    .local v3, tasksUri:Landroid/net/Uri;
    if-nez v3, :cond_19

    .line 1523
    const/16 v16, 0x0

    .line 1645
    :goto_18
    return-object v16

    .line 1527
    :cond_19
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 1528
    .local v15, sqlWhereClause:Ljava/lang/StringBuffer;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1530
    .local v14, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->before:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1531
    .local v9, before:[Ljava/lang/String;
    if-eqz v9, :cond_64

    array-length v4, v9

    if-eqz v4, :cond_64

    .line 1534
    const/4 v4, 0x0

    :try_start_31
    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v23, 0x3e8

    mul-long v21, v4, v23

    .line 1536
    .local v21, value:J
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_46

    .line 1537
    const-string v4, " AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1539
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(due_date < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_64} :catch_113

    .line 1547
    .end local v21           #value:J
    :cond_64
    :goto_64
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->after:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v8

    .line 1548
    .local v8, after:[Ljava/lang/String;
    if-eqz v8, :cond_a5

    array-length v4, v8

    if-eqz v4, :cond_a5

    .line 1551
    const/4 v4, 0x0

    :try_start_72
    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v23, 0x3e8

    mul-long v21, v4, v23

    .line 1553
    .restart local v21       #value:J
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_87

    .line 1554
    const-string v4, " AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1556
    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(due_date >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_a5} :catch_131

    .line 1565
    .end local v21           #value:J
    :cond_a5
    :goto_a5
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v20

    .line 1566
    .local v20, unqArray:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v4, v0

    if-lez v4, :cond_154

    .line 1568
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_bd

    .line 1569
    const-string v4, " AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1571
    :cond_bd
    const-string v4, "("

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1573
    const/4 v12, 0x0

    .local v12, i:I
    :goto_c3
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v12, v4, :cond_14f

    .line 1575
    if-lez v12, :cond_cf

    .line 1577
    const-string v4, " OR "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1583
    :cond_cf
    const-string v4, "subject like ? OR body like ?"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v20, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v20, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    add-int/lit8 v12, v12, 0x1

    goto :goto_c3

    .line 1541
    .end local v8           #after:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v20           #unqArray:[Ljava/lang/String;
    :catch_113
    move-exception v11

    .line 1543
    .local v11, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing before parameter: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 1558
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #after:[Ljava/lang/String;
    :catch_131
    move-exception v11

    .line 1560
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing after parameter: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v8, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 1587
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #i:I
    .restart local v20       #unqArray:[Ljava/lang/String;
    :cond_14f
    const-string v4, ")"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1591
    .end local v12           #i:I
    :cond_154
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    .line 1593
    .local v6, sa:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1595
    .local v10, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_165
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1597
    if-eqz v10, :cond_1d1

    .line 1601
    move-wide/from16 v0, p1

    long-to-int v4, v0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1c2

    .line 1615
    const/4 v13, 0x0

    .line 1616
    .local v13, itemCount:I
    :goto_17a
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_185

    int-to-long v4, v13

    cmp-long v4, v4, p3

    if-gez v4, :cond_19c

    :cond_185
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_19c

    .line 1617
    invoke-static {v10}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->buildTask(Landroid/database/Cursor;)Lcom/samsung/swift/service/calendar/Task;

    move-result-object v17

    .line 1619
    .local v17, task:Lcom/samsung/swift/service/calendar/Task;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1621
    add-int/lit8 v13, v13, 0x1

    .line 1622
    goto :goto_17a

    .line 1624
    .end local v17           #task:Lcom/samsung/swift/service/calendar/Task;
    :cond_19c
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_19f
    .catchall {:try_start_165 .. :try_end_19f} :catchall_1ca

    move-result v19

    .line 1637
    .end local v13           #itemCount:I
    :goto_1a0
    if-eqz v10, :cond_1a5

    .line 1638
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1641
    :cond_1a5
    new-instance v16, Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;-><init>()V

    .line 1642
    .local v16, sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/samsung/swift/service/calendar/Task;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/swift/service/calendar/Task;

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;->resultArray:[Lcom/samsung/swift/service/calendar/Task;

    .line 1643
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;->estimatedResultSize:J

    goto/16 :goto_18

    .line 1627
    .end local v16           #sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;
    :cond_1c2
    :try_start_1c2
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "task cursor no entries"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_1ca

    goto :goto_1a0

    .line 1637
    :catchall_1ca
    move-exception v4

    if-eqz v10, :cond_1d0

    .line 1638
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1637
    :cond_1d0
    throw v4

    .line 1632
    :cond_1d1
    :try_start_1d1
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "task cursor null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catchall {:try_start_1d1 .. :try_end_1d8} :catchall_1ca

    goto :goto_1a0
.end method

.method public static selectCalendar(JZ)Z
    .registers 12
    .parameter "id"
    .parameter "selected"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1476
    sget-object v6, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v7, "Java selectCalendar"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1480
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calendars/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, appendedPath:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1485
    .local v1, calendarUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1486
    .local v3, cv:Landroid/content/ContentValues;
    if-eqz p2, :cond_44

    .line 1487
    sget-object v6, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :goto_3a
    invoke-virtual {v2, v1, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1493
    .local v4, numRows:I
    if-ne v4, v5, :cond_4c

    .line 1495
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->invalidateCache()V

    .line 1505
    :goto_43
    return v5

    .line 1489
    .end local v4           #numRows:I
    :cond_44
    sget-object v6, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarSelectedColumnName:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 1498
    .restart local v4       #numRows:I
    :cond_4c
    if-nez v4, :cond_4e

    .line 1505
    :cond_4e
    const/4 v5, 0x0

    goto :goto_43
.end method

.method private static taskAccounts()[Lcom/samsung/swift/service/calendar/TaskAccount;
    .registers 16

    .prologue
    .line 2163
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "java taskAccounts() called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2167
    .local v14, taskAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/TaskAccount;>;"
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2169
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->calendarUriBase()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "TasksAccounts"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2171
    .local v1, taskAccountsUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2173
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_23
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2175
    if-eqz v6, :cond_be

    .line 2177
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2179
    :goto_2f
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_af

    .line 2190
    const-string v2, "_sync_account_key"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2191
    .local v9, id:Ljava/lang/String;
    const-string v2, "displayName"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2192
    .local v10, name:Ljava/lang/String;
    const/4 v15, 0x0

    .line 2193
    .local v15, taskName:Ljava/lang/String;
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->MY_TASK:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2195
    const-string v2, "my_task"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2198
    :cond_58
    if-nez v15, :cond_5b

    .line 2199
    move-object v15, v10

    .line 2201
    :cond_5b
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2202
    .local v11, numericId:I
    if-gez v11, :cond_68

    const/4 v11, 0x0

    .line 2203
    :cond_68
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->taskAccountColours:[Ljava/lang/String;

    array-length v2, v2

    if-lt v11, v2, :cond_6e

    const/4 v11, 0x0

    .line 2204
    :cond_6e
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->taskAccountColours:[Ljava/lang/String;

    aget-object v7, v2, v11

    .line 2205
    .local v7, color:Ljava/lang/String;
    const-string v2, "selected"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a6

    const/4 v12, 0x1

    .line 2207
    .local v12, selected:Z
    :goto_7f
    new-instance v13, Lcom/samsung/swift/service/calendar/TaskAccount;

    invoke-direct {v13}, Lcom/samsung/swift/service/calendar/TaskAccount;-><init>()V

    .line 2208
    .local v13, ta:Lcom/samsung/swift/service/calendar/TaskAccount;
    invoke-virtual {v13, v9}, Lcom/samsung/swift/service/calendar/TaskAccount;->setId(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v13, v15}, Lcom/samsung/swift/service/calendar/TaskAccount;->setName(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v13, v7}, Lcom/samsung/swift/service/calendar/TaskAccount;->setColour(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v13, v12}, Lcom/samsung/swift/service/calendar/TaskAccount;->setSelected(Z)V

    .line 2213
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_96
    .catchall {:try_start_23 .. :try_end_96} :catchall_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_96} :catch_97

    goto :goto_2f

    .line 2227
    .end local v7           #color:Ljava/lang/String;
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numericId:I
    .end local v12           #selected:Z
    .end local v13           #ta:Lcom/samsung/swift/service/calendar/TaskAccount;
    .end local v15           #taskName:Ljava/lang/String;
    :catch_97
    move-exception v8

    .line 2229
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_98
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "taskAccounts: IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_c6

    .line 2230
    const/4 v2, 0x0

    .line 2234
    if-eqz v6, :cond_a5

    .line 2235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2238
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_a5
    :goto_a5
    return-object v2

    .line 2205
    .restart local v7       #color:Ljava/lang/String;
    .restart local v9       #id:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #numericId:I
    .restart local v15       #taskName:Ljava/lang/String;
    :cond_a6
    const/4 v12, 0x0

    goto :goto_7f

    .line 2219
    .end local v7           #color:Ljava/lang/String;
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numericId:I
    .end local v15           #taskName:Ljava/lang/String;
    :cond_a8
    :try_start_a8
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "taskAccounts cursor no entries"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_af} :catch_97

    .line 2234
    :cond_af
    :goto_af
    if-eqz v6, :cond_b4

    .line 2235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2238
    :cond_b4
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/samsung/swift/service/calendar/TaskAccount;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/swift/service/calendar/TaskAccount;

    goto :goto_a5

    .line 2224
    :cond_be
    :try_start_be
    sget-object v2, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "taskAccounts cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c5} :catch_97

    goto :goto_af

    .line 2234
    :catchall_c6
    move-exception v2

    if-eqz v6, :cond_cc

    .line 2235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2234
    :cond_cc
    throw v2
.end method

.method public static tasksUriBase(Z)Landroid/net/Uri;
    .registers 8
    .parameter "writing"

    .prologue
    .line 266
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriRead:Landroid/net/Uri;

    if-nez v4, :cond_78

    .line 267
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 277
    .local v1, model:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, taskUrisToTry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;>;"
    sget v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->androidVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_7d

    .line 281
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://tasks/tasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://tasks/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://com.android.calendar/syncTasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://com.android.calendar/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://tasks/syncTasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://tasks/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :goto_4d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    .line 293
    .local v2, pair:Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;
    iget-object v4, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;->readUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/samsung/swift/service/calendar/CalendarPlugin;->tryTaskUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 295
    iget-object v4, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;->readUri:Landroid/net/Uri;

    sput-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriRead:Landroid/net/Uri;

    .line 296
    iget-object v4, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;->writeUri:Landroid/net/Uri;

    sput-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriWrite:Landroid/net/Uri;

    .line 301
    .end local v2           #pair:Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;
    :cond_6d
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriRead:Landroid/net/Uri;

    if-nez v4, :cond_78

    .line 303
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Failed to find tasks provider. All tasks API functions will fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #model:Ljava/lang/String;
    .end local v3           #taskUrisToTry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;>;"
    :cond_78
    if-eqz p0, :cond_ba

    .line 309
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriWrite:Landroid/net/Uri;

    .line 310
    :goto_7c
    return-object v4

    .line 286
    .restart local v1       #model:Ljava/lang/String;
    .restart local v3       #taskUrisToTry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;>;"
    :cond_7d
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://com.android.calendar/syncTasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://com.android.calendar/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://tasks/syncTasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://tasks/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v4, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;

    const-string v5, "content://tasks/tasks"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "content://tasks/syncTasks"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 310
    .end local v1           #model:Ljava/lang/String;
    .end local v3           #taskUrisToTry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;>;"
    :cond_ba
    sget-object v4, Lcom/samsung/swift/service/calendar/CalendarPlugin;->_tasksUriRead:Landroid/net/Uri;

    goto :goto_7c
.end method

.method private static timezone()Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    .registers 4

    .prologue
    .line 1953
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 1955
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    invoke-direct {v0}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;-><init>()V

    .line 1956
    .local v0, ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->name:Ljava/lang/String;

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->offset:I

    .line 1958
    return-object v0
.end method

.method private static timezoneByID(Ljava/lang/String;)Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    .registers 10
    .parameter "timezone"

    .prologue
    .line 1964
    const/4 v2, 0x0

    .line 1965
    .local v2, ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    const/4 v1, 0x0

    .line 1967
    .local v1, count:I
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_2b

    aget-object v6, v0, v3

    .line 1969
    .local v6, tzName:Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1971
    new-instance v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    .end local v2           #ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    invoke-direct {v2}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;-><init>()V

    .line 1972
    .restart local v2       #ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1974
    .local v5, tz:Ljava/util/TimeZone;
    iput-object v6, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->name:Ljava/lang/String;

    .line 1975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    iput v7, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->offset:I

    .line 1976
    iput v1, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->index:I

    .line 1983
    .end local v5           #tz:Ljava/util/TimeZone;
    .end local v6           #tzName:Ljava/lang/String;
    :cond_2b
    return-object v2

    .line 1980
    .restart local v6       #tzName:Ljava/lang/String;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 1967
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private static timezones(JJ)Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;
    .registers 16
    .parameter "startIndex"
    .parameter "maxItems"

    .prologue
    .line 1900
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .local v6, returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;>;"
    const/4 v1, 0x0

    .line 1902
    .local v1, count:I
    const/4 v5, 0x0

    .line 1904
    .local v5, maxLimit:I
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-nez v10, :cond_3e

    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-nez v10, :cond_3e

    .line 1906
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_19
    if-ge v3, v4, :cond_4d

    aget-object v9, v0, v3

    .line 1908
    .local v9, tzName:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 1910
    .local v8, tz:Ljava/util/TimeZone;
    new-instance v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    invoke-direct {v2}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;-><init>()V

    .line 1911
    .local v2, ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    iput-object v9, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->name:Ljava/lang/String;

    .line 1912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    iput v10, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->offset:I

    .line 1913
    iput v1, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->index:I

    .line 1914
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    add-int/lit8 v1, v1, 0x1

    .line 1906
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1921
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #tz:Ljava/util/TimeZone;
    .end local v9           #tzName:Ljava/lang/String;
    :cond_3e
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_44
    if-ge v3, v4, :cond_4d

    aget-object v9, v0, v3

    .line 1923
    .restart local v9       #tzName:Ljava/lang/String;
    int-to-long v10, v5

    cmp-long v10, v10, p2

    if-ltz v10, :cond_66

    .line 1942
    .end local v9           #tzName:Ljava/lang/String;
    :cond_4d
    new-instance v7, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;

    invoke-direct {v7}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;-><init>()V

    .line 1943
    .local v7, sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    iput-object v10, v7, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;->resultArray:[Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    .line 1944
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    iput-wide v10, v7, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;->estimatedResultSize:J

    .line 1947
    return-object v7

    .line 1926
    .end local v7           #sr:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezoneResult;
    .restart local v9       #tzName:Ljava/lang/String;
    :cond_66
    int-to-long v10, v1

    cmp-long v10, v10, p0

    if-ltz v10, :cond_89

    .line 1928
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 1930
    .restart local v8       #tz:Ljava/util/TimeZone;
    new-instance v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;

    invoke-direct {v2}, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;-><init>()V

    .line 1931
    .restart local v2       #ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    iput-object v9, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->name:Ljava/lang/String;

    .line 1932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    iput v10, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->offset:I

    .line 1933
    iput v1, v2, Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;->index:I

    .line 1934
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    add-int/lit8 v5, v5, 0x1

    .line 1938
    .end local v2           #ctz:Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
    .end local v8           #tz:Ljava/util/TimeZone;
    :cond_89
    add-int/lit8 v1, v1, 0x1

    .line 1921
    add-int/lit8 v3, v3, 0x1

    goto :goto_44
.end method

.method private static tryTaskUri(Landroid/net/Uri;)Z
    .registers 9
    .parameter "u"

    .prologue
    .line 315
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 316
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 318
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_e
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_37

    .line 322
    sget-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found tasks provider at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_30} :catch_5a

    .line 323
    const/4 v1, 0x1

    .line 335
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_36
    :goto_36
    return v1

    .line 326
    :cond_37
    :try_start_37
    sget-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tasks provider at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_53} :catch_5a

    .line 335
    if-eqz v6, :cond_58

    :goto_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_58
    const/4 v1, 0x0

    goto :goto_36

    .line 329
    :catch_5a
    move-exception v7

    .line 331
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_5b
    sget-object v1, Lcom/samsung/swift/service/calendar/CalendarPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Exception trying uri "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_65

    .line 335
    if-eqz v6, :cond_58

    goto :goto_55

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_65
    move-exception v1

    if-eqz v6, :cond_6b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v1
.end method
