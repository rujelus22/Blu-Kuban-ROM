.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$LengthFilter;
    }
.end annotation


# static fields
.field public static AS_FLAG:Z

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final CALENDAR_COLOR_FACEBOOK:I

.field public static final CALENDAR_TYPE_IMAGE:[I

.field public static final CALENDAR_TYPE_IMAGE_EVENT:[I

.field public static final CALENDAR_TYPE_IMAGE_SMALL:[I

.field public static final CALENDAR_TYPE_TEXT:[I

.field public static CHECK_ACCOUNT:Z

.field public static final CONTACT_EVENTS_URI:Landroid/net/Uri;

.field public static final CONTENT_VCALENDAR_URI:Landroid/net/Uri;

.field public static DEBUG:Z

.field public static final EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

.field public static final FACEBOOK_URI:Landroid/net/Uri;

.field public static HORIZONTAL_SCROLL_THRESHOLD:I

.field public static final MAP_URI:Landroid/net/Uri;

.field public static final SNS_EVENT_COUNT_URI:Landroid/net/Uri;

.field static final SNS_EVENT_PROJECTION:[Ljava/lang/String;

.field public static final SNS_EVENT_URI:Landroid/net/Uri;

.field static final SNS_RSVP_PROJECTION:[Ljava/lang/String;

.field public static final SNS_RSVP_URI:Landroid/net/Uri;

.field public static VERTICAL_SCROLL_THRESHOLD:I

.field public static builder:Landroid/app/AlertDialog$Builder;

.field public static final englishNthDay:[Ljava/lang/String;

.field private static final mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

.field public static sMySingle:Ljava/lang/String;

.field public static sTaskId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 91
    sput-boolean v5, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    .line 93
    sput-boolean v3, Lcom/android/calendar/Utils;->DEBUG:Z

    .line 95
    sput-boolean v3, Lcom/android/calendar/Utils;->AS_FLAG:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    .line 105
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    .line 106
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/Utils;->VERTICAL_SCROLL_THRESHOLD:I

    .line 114
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 248
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "1st"

    aput-object v1, v0, v3

    const-string v1, "2nd"

    aput-object v1, v0, v6

    const-string v1, "3rd"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "4th"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const-string v1, "8th"

    aput-object v1, v0, v4

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

    sput-object v0, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    .line 671
    new-array v0, v4, [I

    fill-array-data v0, :array_1b4

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_TEXT:[I

    .line 677
    new-array v0, v4, [I

    fill-array-data v0, :array_1c8

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE:[I

    .line 685
    new-array v0, v4, [I

    fill-array-data v0, :array_1dc

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    .line 693
    new-array v0, v4, [I

    fill-array-data v0, :array_1f0

    sput-object v0, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_EVENT:[I

    .line 731
    const/16 v0, 0x44

    const/16 v1, 0x7d

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/calendar/Utils;->CALENDAR_COLOR_FACEBOOK:I

    .line 741
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->CONTACT_EVENTS_URI:Landroid/net/Uri;

    .line 744
    const-string v0, "content://com.android.calendar/maps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    .line 746
    const-string v0, "content://com.android.calendar/facebooks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    .line 749
    const-string v0, "content://com.android.calendar/events_have_attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

    .line 752
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "as_vcalendar"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->CONTENT_VCALENDAR_URI:Landroid/net/Uri;

    .line 813
    const-string v0, "content://com.sec.android.app.provider.sns/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    .line 815
    const-string v0, "content://com.sec.android.app.provider.sns/event/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_COUNT_URI:Landroid/net/Uri;

    .line 821
    const-string v0, "content://com.sec.android.app.provider.sns/event_rsvp_map/eventid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    .line 827
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "service_provider"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const-string v1, "post_time"

    aput-object v1, v0, v4

    const/16 v1, 0x9

    const-string v2, "place"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->SNS_EVENT_PROJECTION:[Ljava/lang/String;

    .line 832
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "event_type"

    aput-object v1, v0, v5

    const-string v1, "event_rsvp_map.event_member_name AS event_member_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    .line 1220
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v6

    const-string v1, "calendar_color"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void

    .line 671
    nop

    :array_1b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x12t 0x1t 0xat 0x7ft
        0x12t 0x1t 0xat 0x7ft
        0x13t 0x1t 0xat 0x7ft
        0x14t 0x1t 0xat 0x7ft
        0x15t 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 677
    :array_1c8
    .array-data 0x4
        0x3ft 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 685
    :array_1dc
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 693
    :array_1f0
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    return-void
.end method

.method public static GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1461
    const-string v0, "W"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 1462
    div-int v1, p2, v0

    move v0, v1

    .line 1469
    :goto_b
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {p1, p0, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_f} :catch_22

    move-result v2

    float-to-int v2, v2

    if-ge p2, v2, :cond_1d

    .line 1470
    if-ge v1, v0, :cond_1a

    .line 1489
    :cond_15
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0

    .line 1473
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1475
    :cond_1d
    if-gt v1, v0, :cond_15

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1480
    :catch_22
    move-exception v0

    .line 1481
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_19

    .line 1483
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_19
.end method

.method public static GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 4
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 1454
    const/4 v0, 0x0

    .line 1455
    .local v0, ret:I
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 1456
    return v0
.end method

.method public static IsScreenPortrait(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 1313
    if-eqz p0, :cond_21

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1315
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1317
    .local v0, getOrient:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1318
    const/4 v1, 0x1

    .line 1322
    .end local v0           #getOrient:Landroid/view/Display;
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public static addToContact(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter "context"
    .parameter "address"
    .parameter "requestCode"

    .prologue
    .line 1561
    invoke-static {p1}, Lcom/android/calendar/Utils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1562
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_d

    .line 1563
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1566
    :goto_c
    return-void

    .line 1565
    .restart local p0
    :cond_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 1583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1586
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    :goto_12
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    return-object v0

    .line 1588
    :cond_18
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12
.end method

.method public static dateFormat(III)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1645
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1646
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1647
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 1648
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1650
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE, dd/MMM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .registers 21
    .parameter "property"

    .prologue
    .line 1097
    const/4 v15, 0x0

    .line 1099
    .local v15, value:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    .line 1100
    const/16 v17, 0x0

    .line 1166
    :goto_9
    return-object v17

    .line 1103
    :cond_a
    const-string v17, "ENCODING"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v8

    .line 1104
    .local v8, encodingP:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v17, "CHARSET"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v5

    .line 1105
    .local v5, charsetP:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v5, :cond_62

    iget-object v0, v5, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_62

    iget-object v4, v5, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 1111
    .local v4, charset:Ljava/lang/String;
    :goto_28
    if-eqz v8, :cond_fd

    iget-object v0, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_fd

    .line 1112
    const-string v17, "BASE64"

    iget-object v0, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_48

    const-string v17, "B"

    iget-object v0, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 1114
    :cond_48
    :try_start_48
    new-instance v16, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_5b} :catch_65

    .end local v15           #value:Ljava/lang/String;
    .local v16, value:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1166
    .end local v16           #value:Ljava/lang/String;
    .restart local v15       #value:Ljava/lang/String;
    :cond_5d
    :goto_5d
    if-nez v15, :cond_103

    const/16 v17, 0x0

    goto :goto_9

    .line 1105
    .end local v4           #charset:Ljava/lang/String;
    :cond_62
    const-string v4, "UTF-8"

    goto :goto_28

    .line 1115
    .restart local v4       #charset:Ljava/lang/String;
    :catch_65
    move-exception v7

    .line 1116
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5d

    .line 1118
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6a
    const-string v17, "QUOTED-PRINTABLE"

    iget-object v0, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5d

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "= "

    const-string v19, " "

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "=\t"

    const-string v19, "\t"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1125
    .local v13, quotedPrintable:Ljava/lang/String;
    const-string v17, "\r\n"

    const-string v18, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\r"

    const-string v19, "\n"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1127
    .local v12, lines:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    .local v3, builder:Ljava/lang/StringBuilder;
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_ac
    if-ge v9, v10, :cond_d0

    aget-object v11, v2, v9

    .line 1129
    .local v11, line:Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ca

    .line 1130
    const/16 v17, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1132
    :cond_ca
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    .line 1135
    .end local v11           #line:Ljava/lang/String;
    :cond_d0
    const/4 v14, 0x0

    .line 1137
    .local v14, source:[B
    :try_start_d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_da
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d1 .. :try_end_da} :catch_ec

    move-result-object v14

    .line 1142
    :goto_db
    invoke-static {v14}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v6

    .line 1152
    .local v6, data:[B
    if-eqz v6, :cond_f7

    .line 1154
    :try_start_e1
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e1 .. :try_end_e8} :catch_f1

    .end local v15           #value:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1157
    .end local v16           #value:Ljava/lang/String;
    .restart local v15       #value:Ljava/lang/String;
    goto/16 :goto_5d

    .line 1138
    .end local v6           #data:[B
    :catch_ec
    move-exception v7

    .line 1139
    .restart local v7       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_db

    .line 1155
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #data:[B
    :catch_f1
    move-exception v7

    .line 1156
    .restart local v7       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_5d

    .line 1159
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :cond_f7
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5d

    .line 1163
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v6           #data:[B
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #lines:[Ljava/lang/String;
    .end local v13           #quotedPrintable:Ljava/lang/String;
    .end local v14           #source:[B
    :cond_fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5d

    .line 1166
    :cond_103
    const-string v17, "\r"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_9
.end method

.method public static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 1089
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_b

    .line 1091
    invoke-static {v0}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 1511
    const-string v0, " ()-./,"

    .line 1513
    if-nez p0, :cond_6

    .line 1514
    const/4 v0, 0x0

    .line 1530
    :goto_5
    return-object v0

    .line 1517
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1520
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_25

    .line 1521
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1523
    const-string v4, " ()-./,"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1520
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1530
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 553
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 549
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;
    .registers 22
    .parameter "context"
    .parameter "allday"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "displaySameDate"
    .parameter "forceUTC"

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, systemDateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, dateFormat:Ljava/lang/String;
    if-eqz v11, :cond_2a

    .line 433
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 440
    :cond_2a
    :goto_2a
    if-eqz p1, :cond_7b

    .line 441
    cmp-long v2, p2, p4

    if-nez v2, :cond_4f

    .line 442
    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    :goto_3a
    return-object v2

    .line 435
    :cond_3b
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2a

    .line 444
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 448
    :cond_7b
    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 451
    .local v9, fromDate:Ljava/lang/String;
    move-wide/from16 v0, p2

    invoke-static {p0, v8, v0, v1}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 455
    .local v12, toDate:Ljava/lang/String;
    const/16 v7, 0x201

    .line 456
    .local v7, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 457
    or-int/lit16 v7, v7, 0x80

    .line 459
    :cond_99
    if-eqz p7, :cond_9d

    .line 460
    or-int/lit16 v7, v7, 0x2000

    :cond_9d
    move-object v2, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p2

    .line 462
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v10

    .local v10, fromTime:Ljava/lang/String;
    move-object v2, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p4

    .line 463
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    .line 465
    .local v13, toTime:Ljava/lang/String;
    cmp-long v2, p2, p4

    if-nez v2, :cond_cc

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3a

    .line 467
    :cond_cc
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 468
    if-eqz p6, :cond_f7

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3a

    .line 471
    :cond_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3a

    .line 473
    :cond_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3a
.end method

.method public static getCalendarType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "accountType"
    .parameter "ownerAccount"

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 703
    .local v0, calendarType:I
    if-eqz p0, :cond_d

    const-string v1, "LOCAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 704
    const/4 v0, 0x1

    .line 722
    :cond_c
    :goto_c
    return v0

    .line 705
    :cond_d
    if-eqz p0, :cond_19

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 706
    const/4 v0, 0x5

    goto :goto_c

    .line 707
    :cond_19
    if-eqz p0, :cond_25

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 708
    const/4 v0, 0x7

    goto :goto_c

    .line 709
    :cond_25
    if-eqz p0, :cond_31

    const-string v1, "com.seven.Z7.work"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 710
    const/4 v0, 0x6

    goto :goto_c

    .line 711
    :cond_31
    if-eqz p0, :cond_3d

    const-string v1, "com.seven.Z7.gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 712
    const/4 v0, 0x3

    goto :goto_c

    .line 713
    :cond_3d
    if-eqz p0, :cond_47

    const-string v1, "com.seven.Z7.yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    :cond_47
    if-eqz p1, :cond_5b

    const-string v1, "yahoo.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "ymail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 716
    :cond_59
    const/4 v0, 0x4

    goto :goto_c

    .line 717
    :cond_5b
    if-eqz p1, :cond_75

    const-string v1, "gmail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "google.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "googlemail.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    :cond_75
    if-eqz p0, :cond_c

    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 720
    :cond_7f
    const/4 v0, 0x2

    goto :goto_c
.end method

.method public static getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1255
    .line 1256
    sget-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    sget-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 1258
    const-string v0, "account_name=\'%s\'"

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    :goto_2b
    return-object v0

    .line 1260
    :cond_2c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1261
    const-string v0, "preference_default_calendar_sync_account"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string v1, "preference_default_calendar_owner_account"

    invoke-interface {v6, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string v2, "preference_default_calendar_sync_account_type"

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1268
    if-nez v0, :cond_aa

    .line 1269
    const-string v3, "account_type=\'com.google\' AND calendar_access_level>=500 AND sync_events=1"

    .line 1278
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1280
    if-eqz v1, :cond_99

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_99

    .line 1281
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1282
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1284
    const-string v2, "preference_default_calendar_sync_account"

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1286
    const-string v2, "preference_default_calendar_owner_account"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1288
    const-string v2, "preference_default_calendar_sync_account_type"

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1292
    const-string v0, "_id=%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2b

    .line 1296
    :cond_99
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 1299
    :cond_aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name=\'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ownerAccount=\'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type=\'%s\'"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b
.end method

.method public static getConvName(Ljava/util/List;CILandroid/graphics/Paint;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;CI",
            "Landroid/graphics/Paint;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1380
    if-gtz p2, :cond_7

    .line 1381
    const-string v0, ""

    .line 1449
    :goto_6
    return-object v0

    .line 1383
    :cond_7
    if-nez p0, :cond_b

    .line 1384
    const/4 v0, 0x0

    goto :goto_6

    .line 1386
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v1, v2

    .line 1387
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 1388
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    .line 1387
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 1390
    :cond_24
    const-string v0, "%c "

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1392
    array-length v0, v5

    if-ne v0, v9, :cond_3c

    .line 1393
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    .line 1396
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    array-length v4, v5

    .line 1399
    if-gtz v4, :cond_47

    .line 1400
    const-string v0, ""

    goto :goto_6

    .line 1401
    :cond_47
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1402
    const v3, 0x7f0a0034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v3, v4

    .line 1405
    :goto_53
    if-ltz v3, :cond_7f

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    if-nez v3, :cond_8a

    .line 1412
    new-array v1, v9, [Ljava/lang/Object;

    add-int/lit8 v3, v4, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-static {v1, p3}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    sub-int v3, p2, v3

    .line 1415
    if-lez v3, :cond_84

    .line 1417
    aget-object v2, v5, v2

    invoke-static {v2, p3, v3}, Lcom/android/calendar/Utils;->GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    .line 1420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :cond_7f
    :goto_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1422
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7f

    .line 1427
    :cond_8a
    if-ne v3, v4, :cond_9c

    move v1, v2

    .line 1428
    :goto_8d
    if-ge v1, v3, :cond_bd

    .line 1429
    if-lez v1, :cond_94

    .line 1430
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_94
    aget-object v8, v5, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_9c
    move v1, v2

    .line 1436
    :goto_9d
    if-ge v1, v3, :cond_ac

    .line 1437
    if-lez v1, :cond_a4

    .line 1438
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    :cond_a4
    aget-object v8, v5, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 1442
    :cond_ac
    new-array v1, v9, [Ljava/lang/Object;

    sub-int v8, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    :cond_bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    if-gt p2, v1, :cond_7f

    .line 1405
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_53
.end method

.method public static getHideContactsEvents(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 1624
    invoke-static {p0}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1625
    const-string v1, "preferences_hide_contacts_events"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1629
    invoke-static {p0}, Lcom/android/calendar/Utils;->getHideContactsEvents(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1640
    :goto_6
    return-object p1

    .line 1632
    :cond_7
    const-string v0, "contact_data_id is null"

    .line 1634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1635
    const-string v0, "contact_data_id is null"

    :goto_11
    move-object p1, v0

    .line 1640
    goto :goto_6

    .line 1637
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_data_id is null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 383
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 384
    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    .line 386
    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 387
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 388
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method public static getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1535
    invoke-static {}, Lcom/android/calendar/ContactInfoCache;->getInstance()Lcom/android/calendar/ContactInfoCache;

    move-result-object v0

    .line 1537
    .local v0, cache:Lcom/android/calendar/ContactInfoCache;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/calendar/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 1540
    .local v1, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iget-object v2, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1541
    const/4 v2, 0x0

    .line 1543
    :goto_12
    return-object v2

    :cond_13
    iget-object v2, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    goto :goto_12
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 615
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTodayMillis(Landroid/content/Context;)J
    .registers 9
    .parameter "context"

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    .local v2, now:J
    new-instance v4, Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, time:Landroid/text/format/Time;
    iget-wide v6, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    .line 336
    .local v5, today:I
    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 337
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 338
    .local v0, millis:J
    return-wide v0
.end method

.method public static hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 5
    .parameter "dialog"
    .parameter "config"
    .parameter "imm"

    .prologue
    .line 920
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 922
    :cond_a
    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 923
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 924
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 927
    :cond_2f
    return-void
.end method

.method public static insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;
    .registers 28
    .parameter "cr"
    .parameter "event"
    .parameter "calendarId"
    .parameter "status"
    .parameter "values"

    .prologue
    .line 939
    invoke-virtual/range {p5 .. p5}, Landroid/content/ContentValues;->clear()V

    .line 942
    const-string v19, "SUMMARY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 943
    .local v15, title:Ljava/lang/String;
    if-eqz v15, :cond_2c

    .line 944
    const-string v19, "=0D"

    const-string v20, "\r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "=0A"

    const-string v21, "\n"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 945
    const-string v19, "title"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_2c
    const-string v19, "eventStatus"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    const-string v19, "DESCRIPTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, description:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_54

    .line 954
    const-string v19, "description"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_54
    const-string v19, "LOCATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 959
    .local v18, where:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6f

    .line 960
    const-string v19, "eventLocation"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_6f
    const-string v19, "calendar_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 966
    const/4 v14, 0x0

    .line 971
    .local v14, timesSet:Z
    new-instance v13, Landroid/text/format/Time;

    const-string v19, "UTC"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 972
    .local v13, time:Landroid/text/format/Time;
    const/4 v6, 0x0

    .line 973
    .local v6, dtstart:Ljava/lang/String;
    const/4 v4, 0x0

    .line 974
    .local v4, dtend:Ljava/lang/String;
    const/4 v8, 0x0

    .line 975
    .local v8, duration:Ljava/lang/String;
    const/16 v16, 0x0

    .line 976
    .local v16, tzid:Ljava/lang/String;
    const-string v19, "DTSTART"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v7

    .line 978
    .local v7, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v7, :cond_14f

    .line 979
    invoke-virtual {v7}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 980
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_100

    .line 981
    const-string v19, "TZID"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v17

    .line 982
    .local v17, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v17, :cond_c0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c0

    .line 983
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 986
    :cond_c0
    :try_start_c0
    invoke-virtual {v13, v6}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_164

    .line 994
    iget-boolean v0, v13, Landroid/text/format/Time;->allDay:Z

    move/from16 v19, v0

    if-eqz v19, :cond_da

    .line 995
    const-string v19, "allDay"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    :cond_da
    const-string v19, "dtstart"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 998
    const-string v19, "eventTimezone"

    iget-object v0, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .end local v17           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_100
    const-string v19, "DTEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    .line 1002
    .local v5, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v5, :cond_130

    .line 1003
    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1004
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_130

    .line 1008
    :try_start_116
    invoke-virtual {v13, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_168

    .line 1016
    const-string v19, "dtend"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1021
    :cond_130
    const-string v19, "DUE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v9

    .line 1022
    .local v9, durationProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v9, :cond_14f

    .line 1023
    invoke-virtual {v9}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1024
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_14f

    .line 1026
    const-string v19, "duration"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .end local v5           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v9           #durationProp:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_14f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_161

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_16c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_16c

    .line 1065
    :cond_161
    const/16 v19, 0x0

    .line 1084
    :goto_163
    return-object v19

    .line 987
    .restart local v17       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_164
    move-exception v10

    .line 992
    .local v10, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_163

    .line 1009
    .end local v10           #e:Ljava/lang/Exception;
    .end local v17           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v5       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :catch_168
    move-exception v10

    .line 1014
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_163

    .line 1069
    .end local v5           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_16c
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v11}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1071
    .local v11, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_171
    const-string v19, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1072
    .local v12, rrule:Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1073
    const-string v19, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_18b} :catch_1b9

    .line 1080
    .end local v12           #rrule:Ljava/lang/String;
    :goto_18b
    const-string v19, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1ac

    const-string v19, "rrule"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1ac

    .line 1081
    const-string v19, "dtend"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1084
    :cond_1ac
    sget-object v19, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    goto :goto_163

    .line 1074
    :catch_1b9
    move-exception v19

    goto :goto_18b
.end method

.method public static isExistsInContact(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1618
    invoke-static {}, Lcom/android/calendar/ContactInfoCache;->getInstance()Lcom/android/calendar/ContactInfoCache;

    move-result-object v0

    .line 1619
    .local v0, cache:Lcom/android/calendar/ContactInfoCache;
    invoke-virtual {v0, p0, v2}, Lcom/android/calendar/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 1620
    .local v1, entry:Lcom/android/calendar/ContactInfoCache$CacheEntry;
    iget-object v3, v1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-eqz v3, :cond_e

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 858
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 861
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 862
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1493
    const-string v0, "0123456789()-./+ "

    .line 1497
    if-eqz p0, :cond_25

    move v0, v1

    move v2, v1

    .line 1498
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 1499
    const-string v3, "0123456789()-./+ "

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1500
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    .line 1507
    :goto_1a
    return v1

    .line 1503
    :cond_1b
    if-nez v2, :cond_22

    const/16 v4, 0x9

    if-gt v3, v4, :cond_22

    .line 1504
    const/4 v2, 0x1

    .line 1498
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_25
    move v2, v1

    :cond_26
    move v1, v2

    .line 1507
    goto :goto_1a
.end method

.method public static isValidRange(Landroid/text/format/Time;)Z
    .registers 6
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    .line 373
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 375
    .local v0, millis:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_21

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x24dc87

    if-lt v3, v4, :cond_21

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x259d23

    if-le v3, v4, :cond_22

    .line 378
    :cond_21
    const/4 v2, 0x0

    .line 379
    :cond_22
    return v2
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 567
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 568
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_1f

    .line 569
    const/4 v1, 0x0

    .line 573
    :goto_17
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 571
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 575
    .end local v3           #thing:Ljava/lang/Object;
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static keypadShow(Landroid/content/Context;Landroid/view/View;)V
    .registers 8
    .parameter "ct"
    .parameter "v"

    .prologue
    .line 1327
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1328
    .local v1, h:Landroid/os/Handler;
    move-object v2, p1

    .line 1329
    .local v2, view:Landroid/view/View;
    move-object v0, p0

    .line 1331
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/android/calendar/Utils$1;

    invoke-direct {v3, v0, v2}, Lcom/android/calendar/Utils$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1350
    return-void
.end method

.method public static sendEmail(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    const-string v1, "mailto"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1553
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v1, "Send mail..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1558
    return-void
.end method

.method public static setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I
    .registers 14
    .parameter
    .parameter "firstday"
    .parameter "lastday"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;II",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v9, 0x1

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, dirty:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, longEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, annEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, alldayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v6, norEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_1a

    .line 278
    const/4 v7, 0x0

    .line 329
    :goto_19
    return v7

    .line 281
    :cond_1a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 287
    .local v3, event:Lcom/android/calendar/Event;
    const/4 v7, -0x1

    if-eq p1, v7, :cond_37

    .line 288
    iget v7, v3, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, p2, :cond_35

    iget v7, v3, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, p1, :cond_37

    .line 289
    :cond_35
    const/4 v2, 0x1

    .line 290
    goto :goto_1e

    .line 295
    :cond_37
    iget v7, v3, Lcom/android/calendar/Event;->eventType:I

    if-eqz v7, :cond_44

    .line 296
    iput-boolean v9, v3, Lcom/android/calendar/Event;->allDay:Z

    .line 297
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    if-nez v2, :cond_1e

    .line 299
    const/4 v2, 0x1

    goto :goto_1e

    .line 300
    :cond_44
    iget v7, v3, Lcom/android/calendar/Event;->startDay:I

    iget v8, v3, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, v8, :cond_57

    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v7, :cond_57

    .line 302
    iput-boolean v9, v3, Lcom/android/calendar/Event;->allDay:Z

    .line 303
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    if-nez v2, :cond_1e

    .line 305
    const/4 v2, 0x1

    goto :goto_1e

    .line 306
    :cond_57
    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_62

    .line 307
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    if-nez v2, :cond_1e

    .line 309
    const/4 v2, 0x1

    goto :goto_1e

    .line 311
    :cond_62
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    if-nez v2, :cond_1e

    .line 313
    const/4 v2, 0x1

    goto :goto_1e

    .line 317
    .end local v3           #event:Lcom/android/calendar/Event;
    :cond_69
    if-eqz v2, :cond_7d

    .line 318
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 320
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 326
    invoke-static {p0, p3}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 329
    :cond_7d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_19
.end method

.method public static setDayView(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "dayView"

    .prologue
    .line 583
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setDayView(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static setFirstdayOfWeek(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "firstdayOfWeek"

    .prologue
    .line 579
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setFirstDayOfWeek(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public static setJulianDay(Landroid/text/format/Time;I)J
    .registers 11
    .parameter "time"
    .parameter "julianDay"

    .prologue
    const/4 v8, 0x0

    .line 392
    const v4, 0x253d8c

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 393
    .local v2, millis:J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 395
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 396
    .local v0, approximateDay:I
    sub-int v1, p1, v0

    .line 397
    .local v1, diff:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 399
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 400
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 401
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 402
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 403
    return-wide v2
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .registers 2
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 263
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 264
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 265
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 266
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 596
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1600
    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_27

    .line 1602
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    .line 1605
    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1606
    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1607
    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/Utils$2;

    invoke-direct {v2}, Lcom/android/calendar/Utils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1612
    sget-object v0, Lcom/android/calendar/Utils;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1615
    :cond_27
    return-void
.end method

.method public static showToast(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 895
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .parameter "context"
    .parameter "className"
    .parameter "time"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public static startActivityForDelete(Landroid/content/Context;JJIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const-class v1, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    const-string v1, "event_start_day"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "event_end_day"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v1, "delete_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/format/Time;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, time:Landroid/text/format/Time;
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 175
    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, data:Landroid/net/Uri;
    const-string v6, "beginTime"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 187
    .local v2, millis:J
    cmp-long v6, v2, v8

    if-nez v6, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 188
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 189
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3e

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 191
    :try_start_32
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3d} :catch_65

    move-result-wide v2

    .line 198
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    cmp-long v6, v2, v8

    if-nez v6, :cond_46

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 203
    :cond_46
    new-instance v5, Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 204
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 205
    invoke-static {v5}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 206
    const v6, 0x256859

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 207
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 211
    :cond_64
    return-wide v2

    .line 192
    .end local v5           #time:Landroid/text/format/Time;
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_65
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "Calendar"

    const-string v7, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method
