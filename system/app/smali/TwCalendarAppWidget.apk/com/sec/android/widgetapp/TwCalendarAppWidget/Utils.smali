.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static AS_FLAG:Z

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final CALENDAR_COLOR_FACEBOOK:I

.field public static final CONTACT_EVENTS_URI:Landroid/net/Uri;

.field public static final CONTENT_VCALENDAR_URI:Landroid/net/Uri;

.field public static DEBUG:Z

.field public static final EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

.field public static final FACEBOOK_URI:Landroid/net/Uri;

.field public static final MAP_URI:Landroid/net/Uri;

.field public static final SNS_EVENT_COUNT_URI:Landroid/net/Uri;

.field static final SNS_EVENT_PROJECTION:[Ljava/lang/String;

.field public static final SNS_EVENT_URI:Landroid/net/Uri;

.field static final SNS_RSVP_PROJECTION:[Ljava/lang/String;

.field public static final SNS_RSVP_URI:Landroid/net/Uri;

.field public static final englishNthDay:[Ljava/lang/String;

.field public static sMySingle:Ljava/lang/String;

.field public static sTaskId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    sput-boolean v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->DEBUG:Z

    .line 75
    sput-boolean v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->AS_FLAG:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->sMySingle:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->sTaskId:Ljava/lang/Integer;

    .line 175
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "1st"

    aput-object v1, v0, v3

    const-string v1, "2nd"

    aput-object v1, v0, v5

    const-string v1, "3rd"

    aput-object v1, v0, v6

    const-string v1, "4th"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->englishNthDay:[Ljava/lang/String;

    .line 521
    const/16 v0, 0x44

    const/16 v1, 0x7d

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->CALENDAR_COLOR_FACEBOOK:I

    .line 530
    const-string v0, "content://com.android.calendar/contact_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->CONTACT_EVENTS_URI:Landroid/net/Uri;

    .line 531
    const-string v0, "content://com.android.calendar/maps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->MAP_URI:Landroid/net/Uri;

    .line 532
    const-string v0, "content://com.android.calendar/facebooks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    .line 533
    const-string v0, "content://com.android.calendar/events_have_attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

    .line 534
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "as_vcalendar"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->CONTENT_VCALENDAR_URI:Landroid/net/Uri;

    .line 575
    const-string v0, "content://com.sec.android.app.provider.sns/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    .line 576
    const-string v0, "content://com.sec.android.app.provider.sns/event/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SNS_EVENT_COUNT_URI:Landroid/net/Uri;

    .line 579
    const-string v0, "content://com.sec.android.app.provider.sns/event_rsvp_map/eventid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    .line 582
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "service_provider"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "post_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "place"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SNS_EVENT_PROJECTION:[Ljava/lang/String;

    .line 596
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_type"

    aput-object v1, v0, v4

    const-string v1, "event_rsvp_map.event_member_name AS event_member_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    .line 657
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "account_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 828
    const-string v1, "preferfromCalendar"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 831
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static SetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 818
    const-string v2, "preferfromCalendar"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 819
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 821
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 822
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 824
    return-void
.end method

.method public static arrangeEventList(Ljava/util/ArrayList;ILandroid/app/Activity;)V
    .registers 9
    .parameter
    .parameter "currentDay"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;I",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    const/4 v1, 0x0

    .line 767
    .local v1, dirty:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, alldayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v4, norEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 771
    .local v2, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_26

    .line 772
    iget v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    if-gt v5, p1, :cond_f

    iget v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    if-lt v5, p1, :cond_f

    .line 776
    :cond_26
    iget-boolean v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-eqz v5, :cond_31

    .line 777
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    if-nez v1, :cond_f

    .line 779
    const/4 v1, 0x1

    goto :goto_f

    .line 781
    :cond_31
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    if-nez v1, :cond_f

    .line 783
    const/4 v1, 0x1

    goto :goto_f

    .line 787
    .end local v2           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_38
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 788
    if-eqz v1, :cond_46

    .line 789
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 790
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 791
    invoke-static {p0, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 794
    :cond_46
    return-void
.end method

.method public static convertEventTimezoneToLocal(JLjava/lang/String;)J
    .registers 6
    .parameter "millis"
    .parameter "timezone"

    .prologue
    .line 207
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 208
    .local v0, recycle:Landroid/text/format/Time;
    iput-object p2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 210
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method static formatDateTimeString(Landroid/content/Context;ZJJZLjava/lang/String;)Ljava/lang/String;
    .registers 21
    .parameter "context"
    .parameter "allday"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "displaySameDate"
    .parameter "timezone"

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "date_format"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, systemDateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, dateFormat:Ljava/lang/String;
    if-eqz v7, :cond_2a

    .line 278
    const-string v10, "MM-dd-yyyy"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080020

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_2a
    :goto_2a
    if-eqz p1, :cond_7f

    .line 286
    cmp-long v10, p2, p4

    if-nez v10, :cond_50

    .line 287
    move-wide v0, p2

    move-object/from16 v2, p7

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    :cond_3b
    :goto_3b
    return-object v6

    .line 280
    :cond_3c
    const-string v10, "yyyy-MM-dd"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 289
    :cond_50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v0, p2

    move-object/from16 v2, p7

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    move-object/from16 v2, p7

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3b

    .line 292
    :cond_7f
    move-wide v0, p2

    move-object/from16 v2, p7

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, fromDate:Ljava/lang/String;
    move-wide/from16 v0, p4

    move-object/from16 v2, p7

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, toDate:Ljava/lang/String;
    const/16 v4, 0x201

    .line 296
    .local v4, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 297
    or-int/lit16 v4, v4, 0x80

    .line 299
    :cond_a0
    move-wide v0, p2

    move-object/from16 v2, p7

    invoke-static {p0, v0, v1, v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "pm"

    const-string v12, " PM"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "am"

    const-string v12, " AM"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, fromTime:Ljava/lang/String;
    move-wide/from16 v0, p4

    move-object/from16 v2, p7

    invoke-static {p0, v0, v1, v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "pm"

    const-string v12, " PM"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "am"

    const-string v12, " AM"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, toTime:Ljava/lang/String;
    cmp-long v10, p2, p4

    if-eqz v10, :cond_3b

    .line 305
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_117

    .line 306
    if-eqz p6, :cond_fe

    .line 307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3b

    .line 309
    :cond_fe
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3b

    .line 311
    :cond_117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3b
.end method

.method public static getCalendarPreferenceHideDeclined(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 705
    const-string v0, "preferences_hide_declined"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, cal:Landroid/content/Context;
    :try_start_1
    const-string v3, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_14

    move-result-object v0

    .line 715
    :goto_8
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 717
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_notification_moment"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 712
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :catch_14
    move-exception v1

    .line 713
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static getHideContactsEvents(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 721
    const-string v0, "preferences_hide_contacts_events"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "originalWhere"

    .prologue
    .line 725
    invoke-static {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getHideContactsEvents(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 736
    .end local p1
    :goto_6
    return-object p1

    .line 728
    .restart local p1
    :cond_7
    const-string v0, "contact_data_id is null"

    .line 730
    .local v0, hideWhere:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 731
    const-string v1, "contact_data_id is null"

    .local v1, result:Ljava/lang/String;
    :goto_11
    move-object p1, v1

    .line 736
    goto :goto_6

    .line 733
    .end local v1           #result:Ljava/lang/String;
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .restart local v1       #result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contact_data_id is null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 244
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 245
    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    .line 247
    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 248
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 249
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method public static launchEditEvent(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 123
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 124
    .local v5, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 125
    iget v6, v5, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/text/format/Time;->hour:I

    .line 126
    iput v8, v5, Landroid/text/format/Time;->minute:I

    .line 127
    iput v8, v5, Landroid/text/format/Time;->second:I

    .line 128
    iput-boolean v8, v5, Landroid/text/format/Time;->allDay:Z

    .line 129
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 130
    .local v3, startMillis:J
    const-wide/32 v6, 0x36ee80

    add-long v0, v3, v6

    .line 131
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.android.calendar"

    const-string v7, "com.android.calendar.EditEvent"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/high16 v6, 0x1420

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    const-string v6, "beginTime"

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v6, "endTime"

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public static setJulianDay(Landroid/text/format/Time;I)J
    .registers 11
    .parameter "time"
    .parameter "julianDay"

    .prologue
    const/4 v8, 0x0

    .line 253
    const v4, 0x253d8c

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 254
    .local v2, millis:J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 256
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 257
    .local v0, approximateDay:I
    sub-int v1, p1, v0

    .line 258
    .local v1, diff:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 260
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 261
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 262
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 263
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 264
    return-wide v2
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .registers 2
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 191
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 192
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 193
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 194
    return-void
.end method
