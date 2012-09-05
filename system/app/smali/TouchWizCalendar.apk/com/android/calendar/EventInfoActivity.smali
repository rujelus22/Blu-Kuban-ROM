.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;,
        Lcom/android/calendar/EventInfoActivity$Attendee;,
        Lcom/android/calendar/EventInfoActivity$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_VALUES:[I

.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static HAS_REPLY_MENU:Z

.field private static HORIZONTAL_FLING_THRESHOLD:I

.field private static final MAP_PROJECTION:[Ljava/lang/String;

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DIALOG_RESPONSE:I

.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field private address:Landroid/widget/TextView;

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field private mColor:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDayMillis:J

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mEventJulianDay:I

.field private mEventListType:I

.field private mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFromAlert:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasAttendeeData:Z

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mInstancesCursor:Landroid/database/Cursor;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBusyFreeCalendar:Z

.field private mIsOrganizer:Z

.field private mIsRepeating:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoader:Landroid/content/CursorLoader;

.field private mMoreEventId:J

.field private mNumOfAttendees:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrganizer:Ljava/lang/String;

.field private mOriginalAttendeeResponse:I

.field private mOriginalMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

.field mQuickContactListener:Landroid/view/View$OnClickListener;

.field private mReminderAdder:Landroid/widget/LinearLayout;

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersContainer:Landroid/widget/LinearLayout;

.field private mResponseContainer:Landroid/view/View;

.field private mResponseOffset:I

.field private mResponseTextView:Landroid/widget/TextView;

.field private mResponseType:I

.field private mResponseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartMillis:J

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTempResponseType:I

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field private mUpdateCounts:I

.field private mUri:Landroid/net/Uri;

.field private mViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/EventInfoActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWildcardPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const-string v1, "calendar_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "facebook_service_provider"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "facebook_owner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 277
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "attendee_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 308
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 321
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "startDay"

    aput-object v1, v0, v5

    const-string v1, "endDay"

    aput-object v1, v0, v7

    const-string v1, "begin"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->PROJECTION:[Ljava/lang/String;

    .line 373
    sput-boolean v3, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    .line 384
    new-array v0, v6, [I

    fill-array-data v0, :array_110

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    .line 501
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 511
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 526
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/EventInfoActivity;->HORIZONTAL_FLING_THRESHOLD:I

    .line 907
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->MAP_PROJECTION:[Ljava/lang/String;

    return-void

    .line 384
    :array_110
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 182
    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->DIALOG_RESPONSE:I

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    .line 461
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 475
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    .line 503
    iput v2, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    .line 505
    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    .line 507
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    .line 509
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    .line 546
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mHandler:Landroid/os/Handler;

    .line 2840
    new-instance v0, Lcom/android/calendar/EventInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoActivity$5;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mQuickContactListener:Landroid/view/View$OnClickListener;

    .line 3436
    new-instance v0, Lcom/android/calendar/EventInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoActivity$9;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3452
    new-instance v0, Lcom/android/calendar/EventInfoActivity$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/EventInfoActivity$10;-><init>(Lcom/android/calendar/EventInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private UpdateView(Landroid/view/View;)V
    .registers 27
    .parameter

    .prologue
    .line 1641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v3, :cond_7

    .line 2555
    :goto_6
    return-void

    .line 1645
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1648
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b7c

    .line 1649
    :cond_1c
    const v3, 0x7f0a0025

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1652
    :goto_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4e9

    const/4 v3, 0x1

    move v10, v3

    .line 1653
    :goto_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1655
    if-eqz v3, :cond_b79

    .line 1657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x3e8

    if-le v3, v5, :cond_4ed

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1674
    :goto_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_502

    const/4 v3, 0x1

    move v12, v3

    .line 1676
    :goto_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    .line 1678
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    if-nez v3, :cond_b0

    .line 1679
    const v3, -0x222223

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    .line 1681
    :cond_b0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    const v5, -0x44000001

    and-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 1684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 1685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x13

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x14

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 1687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x16

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x15

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x17

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1694
    if-nez v20, :cond_10b

    if-eqz v19, :cond_506

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_506

    :cond_10b
    const/4 v3, 0x1

    move v13, v3

    .line 1697
    :goto_10d
    const v3, 0x7f0f001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1698
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1783
    if-eqz v4, :cond_12b

    .line 1784
    const v3, 0x7f0f0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1789
    :cond_12b
    const v3, 0x7f0f0087

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1848
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1849
    if-eqz v4, :cond_b76

    .line 1850
    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50a

    .line 1851
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 1857
    :goto_162
    if-eqz v10, :cond_576

    .line 1858
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1859
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1860
    iget-object v5, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1861
    const-string v6, "UTC"

    iput-object v6, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1862
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v3, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1863
    iput-object v5, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1864
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1865
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 1867
    const-string v3, "UTC"

    iput-object v3, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1868
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1869
    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1870
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1872
    iget v3, v4, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_1ad

    iget v3, v4, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_1ad

    .line 1873
    iget v3, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroid/text/format/Time;->monthDay:I

    .line 1874
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1877
    :cond_1ad
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1914
    cmp-long v3, v8, v5

    if-nez v3, :cond_520

    .line 1929
    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1931
    const/4 v3, 0x0

    .line 1939
    :goto_1bf
    const v5, 0x7f0f0083

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1940
    const v5, 0x7f0f0084

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1941
    const v5, 0x7f0f0085

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2108
    :goto_1e3
    const v5, 0x7f0f0081

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2109
    const v4, 0x7f0f0081

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2111
    if-nez v3, :cond_8bd

    .line 2112
    const v3, 0x7f0f0082

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2120
    :goto_206
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2121
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2128
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2129
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2131
    const/4 v4, 0x0

    .line 2132
    const/4 v3, 0x0

    .line 2133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_b72

    .line 2134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/EventInfoActivity;->startManagingCursor(Landroid/database/Cursor;)V

    move-object v14, v3

    move-object v3, v4

    .line 2143
    :goto_27a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    if-nez v4, :cond_286

    .line 2144
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2148
    :cond_286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 2149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_8fb

    .line 2176
    const v3, 0x7f0f007f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    .line 2177
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2178
    if-eqz v20, :cond_8d4

    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2180
    sget-object v4, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2183
    if-eqz v3, :cond_2f8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2f8

    .line 2184
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2f5

    .line 2185
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 2186
    array-length v5, v4

    if-lez v5, :cond_2f5

    .line 2187
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2189
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2190
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2193
    :cond_2f5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2195
    :cond_2f8
    const v3, 0x7f0f001f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2209
    :goto_303
    if-eqz v14, :cond_322

    .line 2211
    const-string v3, "My calendar"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_318

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2220
    :cond_318
    const v3, 0x7f0f004d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2226
    :cond_322
    :goto_322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    .line 2228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_909

    const/4 v3, 0x1

    :goto_345
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    .line 2230
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 2231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_90c

    const/4 v3, 0x1

    :goto_35c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    .line 2232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_90f

    const/4 v3, 0x1

    :goto_36f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    .line 2234
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v3, :cond_912

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v3, :cond_38b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_912

    :cond_38b
    const/4 v3, 0x1

    :goto_38c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    .line 2237
    const/4 v5, 0x0

    .line 2239
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 2241
    const/4 v4, 0x0

    .line 2243
    if-nez v18, :cond_9f0

    .line 2245
    const v3, 0x7f0f002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    .line 2246
    if-eqz v17, :cond_924

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_924

    .line 2247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    if-eqz v3, :cond_3ea

    .line 2253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/EventInfoActivity;->locationPhoneNumberMatch(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_915

    .line 2290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 2298
    :goto_3dc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/calendar/EventInfoActivity$4;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2310
    :cond_3ea
    const v3, 0x7f0f002b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2311
    const/4 v4, 0x1

    .line 2312
    const/4 v3, 0x1

    .line 2317
    :goto_3f7
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/EventInfoActivity;->setMapImage(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_934

    .line 2318
    const v3, 0x7f0f0055

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2319
    const/4 v4, 0x1

    .line 2320
    const/4 v3, 0x1

    .line 2324
    :goto_40b
    if-eqz v3, :cond_942

    .line 2325
    const v3, 0x7f0f0052

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2330
    :goto_418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x17

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2335
    if-eqz v3, :cond_950

    .line 2336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x19

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2337
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Lcom/android/calendar/EventInfoActivity;->initFacebookAttendeesCursor(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2350
    :goto_448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2355
    const/4 v5, 0x1

    if-eq v3, v5, :cond_459

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v0, v3, :cond_983

    .line 2356
    :cond_459
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/EventInfoActivity;->updateAttendeesStr(IZ)Ljava/lang/String;

    move-result-object v4

    .line 2357
    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 2361
    if-eqz v3, :cond_975

    .line 2363
    const v5, 0x7f0f008d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2365
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2366
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    const v6, 0x7f0f008e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2368
    const v5, 0x7f0f008f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2388
    :goto_4c1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 2400
    :goto_4c5
    if-eqz v12, :cond_abc

    .line 2401
    const v3, 0x7f070001

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2402
    array-length v5, v4

    .line 2403
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2405
    const/4 v3, 0x0

    :goto_4d7
    if-ge v3, v5, :cond_a16

    .line 2406
    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d7

    .line 1652
    :cond_4e9
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_33

    .line 1661
    :cond_4ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_75

    .line 1675
    :cond_502
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_8c

    .line 1694
    :cond_506
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_10d

    .line 1852
    :cond_50a
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b76

    .line 1853
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_162

    .line 1933
    :cond_520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f0a0046

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1bf

    .line 1944
    :cond_576
    if-eqz v13, :cond_6b5

    .line 1945
    const-string v3, "UTC"

    .line 1971
    :goto_57a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 1972
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v21, v0

    .line 1974
    invoke-static {v7, v5, v6, v3}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1977
    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1, v3}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1981
    const/16 v4, 0x201

    .line 1982
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_5a0

    .line 1983
    const/16 v4, 0x281

    .line 1985
    :cond_5a0
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v3}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1986
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1997
    cmp-long v5, v5, v21

    if-nez v5, :cond_745

    .line 2012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2014
    const/4 v5, 0x0

    .line 2029
    :goto_5cc
    if-nez v13, :cond_895

    if-eqz v8, :cond_895

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_895

    .line 2030
    const v3, 0x7f0f0083

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2031
    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v3, v8}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v3

    .line 2034
    const/4 v4, -0x1

    if-ne v3, v4, :cond_7d1

    .line 2035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2040
    :goto_610
    const v4, 0x7f0f0083

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2042
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2043
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2047
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2048
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v21

    .line 2050
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2051
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v23

    .line 2053
    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1, v8}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2056
    move-wide/from16 v0, v23

    invoke-static {v7, v0, v1, v8}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2060
    const/16 v3, 0x201

    .line 2061
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_662

    .line 2062
    const/16 v3, 0x281

    .line 2064
    :cond_662
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2066
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2069
    cmp-long v8, v21, v23

    if-nez v8, :cond_7f8

    .line 2070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2071
    const/4 v3, 0x0

    .line 2084
    :goto_68e
    const v7, 0x7f0f0084

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2085
    const v4, 0x7f0f0084

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v7}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2087
    if-nez v3, :cond_87e

    .line 2088
    const v3, 0x7f0f0085

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    :goto_6b1
    move-object v3, v5

    move-object v4, v6

    .line 2093
    goto/16 :goto_1e3

    .line 1947
    :cond_6b5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    .line 1950
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1954
    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_736

    .line 1955
    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 1956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v3, v4}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v3

    .line 1958
    const/4 v5, -0x1

    if-ne v3, v5, :cond_710

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1964
    :goto_6f8
    const v5, 0x7f0f0080

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1965
    const v5, 0x7f0f0080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    move-object v3, v4

    .line 1966
    goto/16 :goto_57a

    .line 1961
    :cond_710
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v5, v3}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6f8

    .line 1967
    :cond_736
    const v3, 0x7f0f0080

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object v3, v4

    goto/16 :goto_57a

    .line 2016
    :cond_745
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_771

    .line 2017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2018
    const/4 v5, 0x0

    goto/16 :goto_5cc

    .line 2020
    :cond_771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v21, 0x7f0a0046

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v21, 0x7f0a0045

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5cc

    .line 2037
    :cond_7d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v4, v3}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 2038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_610

    .line 2073
    :cond_7f8
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_822

    .line 2074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2075
    const/4 v3, 0x0

    goto/16 :goto_68e

    .line 2077
    :cond_822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v21, 0x7f0a0046

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0a0045

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_68e

    .line 2090
    :cond_87e
    const v4, 0x7f0f0085

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2091
    const v3, 0x7f0f0085

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_6b1

    .line 2094
    :cond_895
    const v3, 0x7f0f0083

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2095
    const v3, 0x7f0f0084

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2096
    const v3, 0x7f0f0085

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_1e3

    .line 2114
    :cond_8bd
    const v4, 0x7f0f0082

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2115
    const v3, 0x7f0f0082

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_206

    .line 2196
    :cond_8d4
    if-eqz v19, :cond_8ed

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8ed

    .line 2200
    const v3, 0x7f0f001f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_303

    .line 2206
    :cond_8ed
    const v3, 0x7f0f001f

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_303

    .line 2223
    :cond_8fb
    const v3, 0x7f0f004c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_322

    .line 2228
    :cond_909
    const/4 v3, 0x0

    goto/16 :goto_345

    .line 2231
    :cond_90c
    const/4 v3, 0x0

    goto/16 :goto_35c

    .line 2232
    :cond_90f
    const/4 v3, 0x0

    goto/16 :goto_36f

    .line 2234
    :cond_912
    const/4 v3, 0x0

    goto/16 :goto_38c

    .line 2292
    :cond_915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    const-string v5, "geo:0,0?q="

    invoke-static {v3, v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto/16 :goto_3dc

    .line 2314
    :cond_924
    const v3, 0x7f0f002b

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    move v3, v4

    move v4, v5

    goto/16 :goto_3f7

    .line 2322
    :cond_934
    const v5, 0x7f0f0055

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_40b

    .line 2327
    :cond_942
    const v3, 0x7f0f0052

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_418

    .line 2343
    :cond_950
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mLoader:Landroid/content/CursorLoader;

    .line 2344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v3}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    .line 2346
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/calendar/EventInfoActivity;->initAttendeesCursor(Z)V

    goto/16 :goto_448

    .line 2370
    :cond_975
    const v4, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_4c1

    .line 2373
    :cond_983
    const v3, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2374
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/EventInfoActivity;->updateAttendees(IZ)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 2378
    if-eqz v3, :cond_9e2

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2381
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2382
    const v5, 0x7f0f008e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2383
    const v4, 0x7f0f008c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_4c1

    .line 2385
    :cond_9e2
    const v4, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_4c1

    .line 2393
    :cond_9f0
    const v3, 0x7f0f0052

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2394
    const v3, 0x7f0f008c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2395
    const v3, 0x7f0f008d

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_4c5

    .line 2408
    :cond_a16
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    .line 2409
    const/high16 v3, 0x7f07

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2410
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    .line 2412
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 2413
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "event_id=%d AND (method=1 OR method=0)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2414
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2417
    const v3, 0x7f0f0092

    :try_start_a56
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2421
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2422
    const/4 v4, -0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2423
    :goto_a69
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ab9

    .line 2424
    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {v4, v5, v8}, Lcom/android/calendar/EditEvent;->reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 2427
    if-nez v4, :cond_b6f

    .line 2428
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 2432
    :goto_a8a
    const v4, 0x7f03001e

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2434
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v14, -0x2

    invoke-direct {v8, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2436
    const/16 v9, 0x14

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2437
    const/16 v9, 0x14

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2438
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_aad

    .line 2439
    const/16 v9, 0xc

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2443
    :cond_aad
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2472
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_ab3
    .catchall {:try_start_a56 .. :try_end_ab3} :catchall_ab4

    goto :goto_a69

    .line 2476
    :catchall_ab4
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_ab9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2480
    :cond_abc
    const v4, 0x7f0f0090

    if-eqz v12, :cond_b4b

    const/4 v3, 0x0

    :goto_ac2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2494
    if-eqz v15, :cond_b6d

    .line 2495
    new-instance v3, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 2497
    :try_start_ad0
    invoke-virtual {v3, v15}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_ad3
    .catch Ljava/lang/Exception; {:try_start_ad0 .. :try_end_ad3} :catch_b4f

    move-object v4, v15

    .line 2502
    :goto_ad4
    if-eqz v4, :cond_b6b

    .line 2503
    new-instance v5, Landroid/text/format/Time;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2504
    if-eqz v10, :cond_ae8

    .line 2505
    const-string v6, "UTC"

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2507
    :cond_ae8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 2508
    invoke-virtual {v3, v5}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 2514
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v13}, Lcom/android/calendar/EventInfoActivity;->isCustomRecurrence(Lcom/android/calendarcommon/EventRecurrence;ZZ)Z

    move-result v5

    if-eqz v5, :cond_b52

    .line 2515
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/EventRecurrenceFormatter;->getCustomRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v3

    .line 2517
    if-nez v3, :cond_b0d

    .line 2518
    const v3, 0x7f0a0066

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2525
    :cond_b0d
    :goto_b0d
    const v5, 0x7f0f0093

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    move-object v3, v4

    .line 2531
    :goto_b18
    const v4, 0x7f0f005b

    if-eqz v3, :cond_b5b

    const/4 v3, 0x0

    :goto_b1e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2535
    if-eqz v11, :cond_b5e

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b5e

    .line 2536
    const v3, 0x7f0f0062

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v11}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2537
    const v3, 0x7f0f0094

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2546
    :goto_b46
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateResponse()V

    goto/16 :goto_6

    .line 2480
    :cond_b4b
    const/16 v3, 0x8

    goto/16 :goto_ac2

    .line 2498
    :catch_b4f
    move-exception v4

    .line 2499
    const/4 v4, 0x0

    goto :goto_ad4

    .line 2520
    :cond_b52
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b0d

    .line 2531
    :cond_b5b
    const/16 v3, 0x8

    goto :goto_b1e

    .line 2542
    :cond_b5e
    const v3, 0x7f0f0094

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_b46

    :cond_b6b
    move-object v3, v4

    goto :goto_b18

    :cond_b6d
    move-object v3, v15

    goto :goto_b18

    :cond_b6f
    move-object v5, v4

    goto/16 :goto_a8a

    :cond_b72
    move-object v14, v3

    move-object v3, v4

    goto/16 :goto_27a

    :cond_b76
    move-object v7, v3

    goto/16 :goto_162

    :cond_b79
    move-object v11, v3

    goto/16 :goto_75

    :cond_b7c
    move-object v4, v3

    goto/16 :goto_26
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 136
    sget v0, Lcom/android/calendar/EventInfoActivity;->HORIZONTAL_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/EventInfoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mTempResponseType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/EventInfoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/calendar/EventInfoActivity;->mTempResponseType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/EventInfoActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/EventInfoActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoActivity;->setAllDayEvents(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->setMoreEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->goTo(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->UpdateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoActivity;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2853
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 3005
    :cond_6
    return-void

    .line 2857
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    .line 2876
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data1 IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2878
    new-array v0, v2, [Ljava/lang/String;

    .line 2882
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v2, :cond_6

    .line 2883
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 2884
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2885
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2915
    const/high16 v4, 0x41b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2920
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    if-eqz v4, :cond_113

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_113

    .line 2921
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2929
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2931
    iget-boolean v5, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v5, :cond_8e

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_8e

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0107

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2933
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2937
    :cond_8e
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2938
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2939
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2940
    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2943
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2945
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2946
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2947
    invoke-virtual {v5, v7, v6, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2948
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2949
    const/high16 v5, 0x3f80

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2951
    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2955
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2956
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2959
    const/4 v0, 0x1

    if-eq p1, v0, :cond_ee

    .line 2960
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2961
    const v0, 0x7f02002d

    .line 2962
    packed-switch p4, :pswitch_data_12e

    .line 2970
    :goto_e3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2971
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2973
    :cond_ee
    if-lez v1, :cond_104

    .line 2974
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2975
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2978
    :cond_104
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2882
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_19

    .line 2922
    :cond_113
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_4a

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4a

    .line 2923
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4a

    .line 2964
    :pswitch_126
    const v0, 0x7f02002b

    .line 2965
    goto :goto_e3

    .line 2967
    :pswitch_12a
    const v0, 0x7f02002c

    goto :goto_e3

    .line 2962
    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_126
        :pswitch_12a
    .end packed-switch
.end method

.method private addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2819
    const-string v0, ""

    .line 2820
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 2837
    :goto_8
    return-object v0

    .line 2823
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2825
    const/4 v1, 0x0

    move v3, v1

    move-object v2, v0

    :goto_10
    if-ge v3, v4, :cond_52

    .line 2826
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 2827
    const-string v1, ""

    .line 2828
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    if-eqz v5, :cond_43

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_43

    .line 2829
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 2835
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2825
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    .line 2830
    :cond_43
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_54

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_54

    .line 2831
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    goto :goto_28

    :cond_52
    move-object v0, v2

    .line 2837
    goto :goto_8

    :cond_54
    move-object v0, v1

    goto :goto_28
.end method

.method private canAddReminders()Z
    .registers 3

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private createExceptionResponse(Landroid/content/ContentResolver;JJI)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1573
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1574
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1575
    if-nez v2, :cond_13

    .line 1606
    :goto_12
    return-void

    .line 1580
    :cond_13
    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1581
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1583
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1584
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1585
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1586
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a6

    const/4 v0, 0x1

    move v1, v0

    .line 1587
    :goto_33
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1589
    const-string v0, "title"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v0, "eventTimezone"

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v4, "allDay"

    if-eqz v1, :cond_a9

    const/4 v0, 0x1

    :goto_47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    const-string v0, "calendar_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string v0, "dtstart"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1594
    const-string v0, "dtend"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    const-string v0, "original_id"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v0, "originalInstanceTime"

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1597
    const-string v4, "originalAllDay"

    if-eqz v1, :cond_ab

    const/4 v0, 0x1

    :goto_82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1598
    const-string v0, "eventStatus"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    const-string v0, "selfAttendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a1
    .catchall {:try_start_13 .. :try_end_a1} :catchall_ad

    .line 1604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    .line 1586
    :cond_a6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_33

    .line 1591
    :cond_a9
    const/4 v0, 0x0

    goto :goto_47

    .line 1597
    :cond_ab
    const/4 v0, 0x0

    goto :goto_82

    .line 1604
    :catchall_ad
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private doDelete()V
    .registers 8

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    .line 1630
    return-void
.end method

.method private doEdit()V
    .registers 5

    .prologue
    .line 1619
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1620
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1621
    const-string v0, "beginTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1622
    const-string v0, "endTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1623
    const-class v0, Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1624
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1625
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 1626
    return-void
.end method

.method private findResponseIndexFor(I)I
    .registers 5
    .parameter "response"

    .prologue
    .line 1609
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    array-length v1, v2

    .line 1610
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    if-ge v0, v1, :cond_10

    .line 1611
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_d

    .line 1615
    .end local v0           #index:I
    :goto_c
    return v0

    .line 1610
    .restart local v0       #index:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1615
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private goTo(Z)V
    .registers 16
    .parameter "isNext"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    .line 788
    .local v6, current:Landroid/view/View;
    const/4 v7, -0x1

    .line 792
    .local v7, currentEvent:I
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12d

    .line 794
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    if-nez v0, :cond_29

    .line 795
    new-instance v12, Landroid/text/format/Time;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 797
    .local v12, local:Landroid/text/format/Time;
    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 798
    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    iget-wide v2, v12, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    .line 801
    .end local v12           #local:Landroid/text/format/Time;
    :cond_29
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v0, "visible=1 AND "

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 802
    .local v13, selection:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_6e

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endDay>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    :goto_4a
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.calendar/instances"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    .line 814
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_87

    .line 905
    .end local v13           #selection:Ljava/lang/StringBuffer;
    :cond_6d
    :goto_6d
    return-void

    .line 805
    .restart local v13       #selection:Ljava/lang/StringBuffer;
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDay<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 819
    :cond_87
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 820
    .local v9, eventSize:I
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 822
    const/4 v7, 0x0

    :goto_93
    if-ge v7, v9, :cond_b8

    .line 823
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 825
    .local v10, eventUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_124

    .line 851
    .end local v10           #eventUri:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/StringBuffer;
    :cond_b8
    if-eqz p1, :cond_154

    .line 852
    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_6d

    .line 855
    add-int/lit8 v7, v7, 0x1

    .line 857
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 858
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 868
    :goto_ce
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_168

    .line 869
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 870
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 872
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    .line 873
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 874
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 875
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 887
    :goto_108
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 888
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_194

    .line 890
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    goto/16 :goto_6d

    .line 829
    .restart local v10       #eventUri:Landroid/net/Uri;
    .restart local v13       #selection:Ljava/lang/StringBuffer;
    :cond_124
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInstancesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 822
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_93

    .line 833
    .end local v9           #eventSize:I
    .end local v10           #eventUri:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/StringBuffer;
    :cond_12d
    iget-object v11, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    .line 834
    .local v11, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v8, 0x0

    .line 835
    .local v8, event:Lcom/android/calendar/Event;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 837
    .restart local v9       #eventSize:I
    const/4 v7, 0x0

    :goto_135
    if-ge v7, v9, :cond_14d

    .line 838
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #event:Lcom/android/calendar/Event;
    check-cast v8, Lcom/android/calendar/Event;

    .line 840
    .restart local v8       #event:Lcom/android/calendar/Event;
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/calendar/Event;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 841
    .restart local v10       #eventUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 846
    .end local v10           #eventUri:Landroid/net/Uri;
    :cond_14d
    if-nez v8, :cond_b8

    goto/16 :goto_6d

    .line 837
    .restart local v10       #eventUri:Landroid/net/Uri;
    :cond_151
    add-int/lit8 v7, v7, 0x1

    goto :goto_135

    .line 860
    .end local v8           #event:Lcom/android/calendar/Event;
    .end local v10           #eventUri:Landroid/net/Uri;
    .end local v11           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :cond_154
    if-lez v7, :cond_6d

    .line 863
    add-int/lit8 v7, v7, -0x1

    .line 864
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 865
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_ce

    .line 877
    :cond_168
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v2, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 878
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 879
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    goto/16 :goto_108

    .line 894
    :cond_194
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->setMapImage(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a8

    .line 895
    const v0, 0x7f0f0055

    const/4 v1, 0x0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 897
    :cond_1a8
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$2;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6d
.end method

.method private initAttendeesCursor(Z)V
    .registers 14
    .parameter "groupExists"

    .prologue
    .line 995
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 996
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 998
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_59

    .line 1000
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 1003
    :cond_13
    const/4 v4, -0x1

    .line 1004
    .local v4, isSame:I
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1005
    .local v7, status:I
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1006
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1010
    .local v1, contactId:I
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1014
    .local v6, relationship:I
    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5a

    :cond_3f
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5a

    .line 1078
    :cond_47
    :goto_47
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1079
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1084
    .end local v1           #contactId:I
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #isSame:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #relationship:I
    .end local v7           #status:I
    :cond_54
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_59
    return-void

    .line 1019
    .restart local v1       #contactId:I
    .restart local v2       #email:Ljava/lang/String;
    .restart local v4       #isSame:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #relationship:I
    .restart local v7       #status:I
    :cond_5a
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6e

    .line 1021
    if-eqz v5, :cond_108

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_108

    .line 1022
    iput-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 1029
    :cond_6e
    :goto_6e
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 1030
    .local v0, att:Lcom/android/calendar/EventInfoActivity$Attendee;
    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1031
    move v4, v7

    .line 1035
    .end local v0           #att:Lcom/android/calendar/EventInfoActivity$Attendee;
    :cond_91
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 1036
    .restart local v0       #att:Lcom/android/calendar/EventInfoActivity$Attendee;
    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 1037
    move v4, v7

    .line 1041
    .end local v0           #att:Lcom/android/calendar/EventInfoActivity$Attendee;
    :cond_b4
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 1042
    .restart local v0       #att:Lcom/android/calendar/EventInfoActivity$Attendee;
    iget-object v8, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 1043
    move v4, v7

    .line 1048
    .end local v0           #att:Lcom/android/calendar/EventInfoActivity$Attendee;
    :cond_d7
    const/4 v8, -0x1

    if-ne v4, v8, :cond_47

    .line 1053
    iget-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_114

    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v8

    if-eqz v8, :cond_114

    const/4 v8, 0x2

    if-ne v6, v8, :cond_114

    .line 1055
    :cond_f3
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 1056
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    goto/16 :goto_47

    .line 1023
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_108
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6e

    .line 1024
    iput-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1063
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_114
    packed-switch v7, :pswitch_data_13c

    .line 1074
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 1066
    :pswitch_123
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 1070
    :pswitch_12f
    iget-object v8, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v9, v5, v2, v1}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 1063
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_123
        :pswitch_12f
    .end packed-switch
.end method

.method private initCalendarsCursor()V
    .registers 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 1185
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1187
    :cond_19
    return-void
.end method

.method private initEventCursor()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 951
    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v4, v3

    .line 967
    :goto_f
    return v4

    .line 954
    :cond_10
    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 955
    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 956
    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, rRule:Ljava/lang/String;
    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 959
    .local v1, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_2a
    invoke-virtual {v1, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_32

    .line 964
    :goto_2d
    if-eqz v2, :cond_35

    :goto_2f
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    goto :goto_f

    .line 960
    :catch_32
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2d

    .end local v0           #e:Ljava/lang/Exception;
    :cond_35
    move v3, v4

    .line 964
    goto :goto_2f
.end method

.method private initFacebookAttendeesCursor(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18
    .parameter "fbEventId"
    .parameter "fbOwnerId"
    .parameter "groupExists"

    .prologue
    .line 1099
    const/4 v9, 0x0

    .line 1101
    .local v9, eventId:I
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1103
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/calendar/Utils;->SNS_EVENT_URI:Landroid/net/Uri;

    .line 1104
    .local v1, fbEventUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1107
    .local v11, fbEventCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_a3

    .line 1108
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1109
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1112
    :cond_35
    sget-object v2, Lcom/android/calendar/Utils;->SNS_RSVP_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1113
    .local v3, fbRsvpUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/calendar/Utils;->SNS_RSVP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1119
    .local v12, rsvpCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_a0

    .line 1125
    :goto_5a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1161
    const-string v2, "event_member_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1163
    .local v10, event_member_name:Ljava/lang/String;
    const-string v2, "event_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1165
    .local v13, type:Ljava/lang/String;
    new-instance v8, Lcom/android/calendar/EventInfoActivity$Attendee;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v10, v2, v4}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1166
    .local v8, attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    const-string v2, "attending"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 1167
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1168
    :cond_89
    const-string v2, "declined"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1169
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1171
    :cond_97
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1174
    .end local v8           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v10           #event_member_name:Ljava/lang/String;
    .end local v13           #type:Ljava/lang/String;
    :cond_9d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_a0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1178
    .end local v3           #fbRsvpUri:Landroid/net/Uri;
    .end local v12           #rsvpCursor:Landroid/database/Cursor;
    :cond_a3
    return-void
.end method

.method private isCustomRecurrence(Lcom/android/calendarcommon/EventRecurrence;ZZ)Z
    .registers 9
    .parameter "eventRecurrence"
    .parameter "allday"
    .parameter "facebook"

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2676
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_11

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_11

    .line 2724
    :cond_10
    :goto_10
    :pswitch_10
    return v0

    .line 2681
    :cond_11
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_21

    .line 2683
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/EventInfoActivity;->isWeekdayEvent(ZZ)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2690
    :cond_21
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-nez v2, :cond_2d

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-eq v2, v1, :cond_2d

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-le v2, v1, :cond_2f

    :cond_2d
    move v0, v1

    .line 2692
    goto :goto_10

    .line 2695
    :cond_2f
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_10

    .line 2699
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-nez v2, :cond_3d

    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_3d

    move v0, v1

    .line 2700
    goto :goto_10

    .line 2702
    :cond_3d
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_6a

    :cond_42
    move v0, v1

    .line 2724
    goto :goto_10

    .line 2706
    :pswitch_44
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/EventInfoActivity;->isWeekdayEvent(ZZ)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2708
    :cond_50
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_42

    goto :goto_10

    .line 2713
    :pswitch_55
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2715
    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_42

    iget v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_42

    goto :goto_10

    .line 2720
    :pswitch_64
    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    if-eqz v2, :cond_42

    goto :goto_10

    .line 2702
    nop

    :pswitch_data_6a
    .packed-switch 0x4
        :pswitch_10
        :pswitch_44
        :pswitch_55
        :pswitch_64
    .end packed-switch
.end method

.method private isExchangeCalendar()Z
    .registers 4

    .prologue
    .line 3168
    const/4 v0, 0x0

    .line 3170
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1a

    .line 3171
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3172
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3174
    const/4 v0, 0x1

    .line 3176
    :cond_1a
    return v0
.end method

.method private isLocalCalendar()Z
    .registers 4

    .prologue
    .line 3156
    const/4 v0, 0x0

    .line 3158
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1a

    .line 3159
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3160
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOCAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3162
    const/4 v0, 0x1

    .line 3164
    :cond_1a
    return v0
.end method

.method private isWeekdayEvent(ZZ)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2728
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2730
    if-eqz p1, :cond_27

    .line 2732
    iget-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2733
    const-string v3, "UTC"

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2734
    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2735
    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2736
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 2750
    :goto_1d
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-eqz v2, :cond_40

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_40

    .line 2753
    :goto_26
    return v0

    .line 2739
    :cond_27
    if-eqz p2, :cond_3a

    .line 2740
    iget-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2741
    const-string v3, "UTC"

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2742
    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2743
    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2744
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_1d

    .line 2746
    :cond_3a
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_1d

    .line 2753
    :cond_40
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private final locationPhoneNumberMatch(Landroid/widget/TextView;)Z
    .registers 8
    .parameter "text"

    .prologue
    .line 3714
    const/4 v0, 0x0

    .line 3715
    .local v0, digitCount:I
    const/4 v4, 0x0

    .line 3716
    .local v4, start:I
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 3719
    .local v1, end:I
    const/16 v5, 0xf

    if-lt v1, v5, :cond_c

    .line 3720
    const/16 v1, 0xf

    .line 3723
    :cond_c
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 3725
    .local v3, s:Ljava/lang/CharSequence;
    move v2, v4

    .local v2, i:I
    :goto_11
    if-ge v2, v1, :cond_28

    .line 3726
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3727
    add-int/lit8 v0, v0, 0x1

    .line 3728
    const/16 v5, 0xa

    if-lt v0, v5, :cond_25

    .line 3729
    const/4 v5, 0x1

    .line 3733
    :goto_24
    return v5

    .line 3725
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3733
    :cond_28
    const/4 v5, 0x0

    goto :goto_24
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3666
    .line 3668
    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3670
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v2

    .line 3671
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    .line 3701
    :cond_12
    :goto_12
    return-object v0

    .line 3676
    :cond_13
    const-string v2, "Invite.vcs"

    .line 3678
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 3680
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3689
    :try_start_23
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3690
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/EventInfoActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3693
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3694
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3695
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_3c

    move-result-object v0

    goto :goto_12

    .line 3696
    :catch_3c
    move-exception v1

    goto :goto_12
.end method

.method private relpy(Z)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3506
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3509
    if-eqz p1, :cond_80

    move v1, v4

    .line 3510
    :goto_f
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 3511
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3512
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 3513
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3510
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_34
    move v1, v4

    .line 3517
    :goto_35
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 3518
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3519
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_56

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_56

    .line 3520
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3517
    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35

    :cond_5a
    move v1, v4

    .line 3524
    :goto_5b
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    .line 3525
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3526
    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_7c

    iget-object v5, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7c

    .line 3527
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    :cond_7c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 3532
    :cond_80
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8f

    .line 3533
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3535
    :cond_8f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 3536
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3537
    array-length v1, v0

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3540
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 3542
    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3543
    if-eqz v0, :cond_157

    .line 3544
    array-length v0, v0

    move v6, v0

    .line 3547
    :goto_ab
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3548
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 3554
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3556
    if-eqz v0, :cond_cb

    .line 3557
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v6, v1

    .line 3558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3562
    :cond_cb
    if-nez v6, :cond_dd

    .line 3563
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3564
    const-string v1, "com.android.email"

    const-string v2, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3565
    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 3593
    :goto_dc
    return-void

    .line 3568
    :cond_dd
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3569
    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.MessageCompose"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3571
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_138

    .line 3572
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3573
    if-eqz v0, :cond_13c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 3574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3579
    :goto_11d
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3587
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3588
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3591
    :cond_138
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_dc

    .line 3577
    :cond_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a0025

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11d

    :cond_157
    move v6, v4

    goto/16 :goto_ab
.end method

.method private saveResponse(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 1480
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_b

    .line 1526
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 1484
    :cond_b
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v7

    .line 1485
    .local v7, isLocal:Z
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v1, :cond_a

    :cond_1b
    if-nez v7, :cond_a

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 1492
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    sub-int v8, v1, v2

    .line 1493
    .local v8, position:I
    if-lez v8, :cond_a

    .line 1497
    sget-object v1, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v6, v1, v8

    .line 1500
    .local v6, status:I
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v6, v1, :cond_a

    .line 1504
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-nez v1, :cond_44

    .line 1506
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1507
    goto :goto_a

    .line 1511
    :cond_44
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v9

    .line 1512
    .local v9, whichEvents:I
    packed-switch v9, :pswitch_data_64

    goto :goto_a

    .line 1516
    :pswitch_4e
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->createExceptionResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1517
    goto :goto_a

    .line 1519
    :pswitch_59
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1520
    goto :goto_a

    .line 1512
    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_a
        :pswitch_4e
        :pswitch_59
    .end packed-switch
.end method

.method private sendToParticipants()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 3599
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 3600
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3601
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_28

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_28

    .line 3602
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3599
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_2c
    move v1, v2

    .line 3606
    :goto_2d
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 3607
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3608
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_4e

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4e

    .line 3609
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3606
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    :cond_52
    move v1, v2

    .line 3613
    :goto_53
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    .line 3614
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 3615
    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_74

    iget-object v4, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    .line 3616
    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3613
    :cond_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 3620
    :cond_78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3621
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 3622
    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3624
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3625
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 3629
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3636
    const-string v3, "text/x-vCalendar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3637
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3639
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALENDAR_SEND_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3658
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3660
    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 3661
    return-void
.end method

.method private sendVia()V
    .registers 5

    .prologue
    .line 3489
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3490
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3492
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3493
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3494
    const-string v0, "_id"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3497
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALENDAR_SEND_CHOOSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3499
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3501
    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 3502
    return-void
.end method

.method private setAllDayEvents(Ljava/util/ArrayList;II)V
    .registers 10
    .parameter
    .parameter "firstday"
    .parameter "lastday"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3382
    .local p1, ordEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3384
    .local v3, longEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3386
    .local v0, annEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3388
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 3389
    .local v1, event:Lcom/android/calendar/Event;
    const/4 v4, -0x1

    if-eq p2, v4, :cond_2a

    .line 3390
    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v4, p3, :cond_13

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-lt v4, p2, :cond_13

    .line 3396
    :cond_2a
    iget v4, v1, Lcom/android/calendar/Event;->eventType:I

    if-eqz v4, :cond_32

    .line 3397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3398
    :cond_32
    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    iget v5, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v4, v5, :cond_40

    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-nez v4, :cond_40

    .line 3400
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3403
    :cond_40
    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v4, :cond_13

    .line 3404
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3408
    .end local v1           #event:Lcom/android/calendar/Event;
    :cond_4a
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3409
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3411
    return-void
.end method

.method private setMapImage(Landroid/view/View;)Z
    .registers 14
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 916
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 919
    .local v8, id:I
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 920
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 921
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 923
    .local v10, raw:[B
    array-length v0, v10

    invoke-static {v10, v11, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 924
    .local v6, bm:Landroid/graphics/Bitmap;
    const v0, 0x7f0f0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 925
    .local v9, map:Landroid/widget/ImageView;
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 926
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 928
    const/4 v0, 0x1

    .line 932
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v9           #map:Landroid/widget/ImageView;
    .end local v10           #raw:[B
    :goto_4c
    return v0

    .line 929
    :cond_4d
    if-eqz v7, :cond_52

    .line 930
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_52
    move v0, v11

    .line 932
    goto :goto_4c
.end method

.method private setMoreEvents(Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ordEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v3, -0x1

    .line 3414
    invoke-static {p1, v3, v3, p0}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    .line 3416
    const/4 v1, 0x0

    .line 3417
    .local v1, groupId:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3418
    .local v0, event:Lcom/android/calendar/Event;
    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoActivity;->mMoreEventId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3419
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v1

    .line 3424
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_21
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3426
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3427
    .restart local v0       #event:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 3428
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 3431
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_42
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 6
    .parameter "eventInfoView"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 3195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3242
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 3290
    :cond_8
    :goto_8
    return-void

    .line 3287
    :cond_9
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3288
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    .line 3289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .registers 5
    .parameter "eventInfoView"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 3293
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3294
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 3295
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 3297
    :cond_9
    return-void
.end method

.method private updateAttendees(IZ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f030030

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2781
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 2782
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2784
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 2785
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    .line 2787
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_91

    .line 2789
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 2790
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2791
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2794
    :cond_54
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    .line 2796
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6f

    .line 2797
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2798
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2801
    :cond_6f
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    .line 2803
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8b

    .line 2804
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2805
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2808
    :cond_8b
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    .line 2815
    :cond_91
    return-void
.end method

.method private updateAttendeesStr(IZ)Ljava/lang/String;
    .registers 7
    .parameter "calendarType"
    .parameter "groupExists"

    .prologue
    .line 2766
    const-string v0, ""

    .line 2767
    .local v0, attendeeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_60

    .line 2769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToStr(ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2776
    :cond_60
    return-object v0
.end method

.method private updateRemindersVisibility()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 1464
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-eqz v2, :cond_d

    .line 1465
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1470
    :goto_c
    return-void

    .line 1467
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1468
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderAdder:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->canAddReminders()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1a
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_1a
.end method

.method private updateResponse(Landroid/content/ContentResolver;JJI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1560
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1563
    const-string v1, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1564
    const-string v1, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1566
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1567
    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1568
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 3336
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3337
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3339
    const v0, 0x7f0f007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoScrollView;

    new-instance v2, Lcom/android/calendar/EventInfoActivity$7;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoActivity$7;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/EventInfoScrollView;->setOnFlingListener(Lcom/android/calendar/EventInfoScrollView$OnFlingListener;)V

    .line 3347
    return-object v1
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 1191
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1192
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1193
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1194
    .local v0, changed:Z
    if-eqz v0, :cond_18

    .line 1195
    const v2, 0x7f0a00fb

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1197
    :cond_18
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 586
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 587
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 588
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 590
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 623
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 627
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 628
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 629
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "beginTime"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 630
    const-string v0, "endTime"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 631
    const-string v0, "event_day_time"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    .line 632
    const-string v0, "eventlist_type"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    .line 633
    const-string v0, "more_event_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mMoreEventId:J

    .line 634
    const-string v0, "FROM_ALERT"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mFromAlert:Z

    .line 635
    const-string v0, "event_julianday"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventJulianDay:I

    .line 654
    const-string v0, "attendeeStatus"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 655
    new-instance v0, Lcom/android/calendar/EventLoader;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 656
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 658
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 661
    const-string v3, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    .line 667
    .local v3, select:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 668
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 670
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 717
    :goto_89
    return-void

    .line 673
    :cond_8a
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 675
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->setContentView(I)V

    .line 676
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 677
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 678
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->UpdateView(Landroid/view/View;)V

    .line 679
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 681
    new-instance v0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    invoke-direct {v0, p0, p0, v6}, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;-><init>(Lcom/android/calendar/EventInfoActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    .line 682
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 683
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 685
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    .line 686
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    .line 687
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 688
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 690
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$1;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_89
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 1399
    packed-switch p1, :pswitch_data_2e

    .line 1454
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1401
    :pswitch_8
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v0, :cond_29

    const v0, 0x7f070009

    .line 1404
    :goto_f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0109

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/EventInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoActivity$3;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 1401
    :cond_29
    const v0, 0x7f07000a

    goto :goto_f

    .line 1399
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1534
    packed-switch p1, :pswitch_data_28

    move-object v0, v5

    .line 1541
    :goto_5
    return-object v0

    .line 1536
    :pswitch_6
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 1537
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "event_id=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1538
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v6, "attendeeName ASC, attendeeEmail ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1534
    nop

    :pswitch_data_28
    .packed-switch 0x6
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1229
    const v0, 0x7f0a002b

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1230
    const v1, 0x202014c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1231
    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1233
    const v0, 0x7f0a002c

    invoke-interface {p1, v4, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1234
    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1235
    const v0, 0x7f0a007c

    invoke-interface {p1, v5, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1236
    const v1, 0x202016a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1238
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_48

    .line 1239
    const v0, 0x7f0a007e

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1240
    const v1, 0x7f0200ac

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1259
    :goto_43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1242
    :cond_48
    const v0, 0x7f0a0169

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1243
    const v1, 0x7f0200aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1244
    const/16 v0, 0x9

    const/16 v1, 0x9

    const v2, 0x7f0a0168

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1245
    const v1, 0x7f0200ab

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_43
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v1, :cond_b

    .line 615
    :cond_a
    :goto_a
    return-void

    .line 601
    :cond_b
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v1, :cond_a

    .line 607
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    .line 608
    .local v0, index:I
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v1, v0

    if-eq p3, v1, :cond_a

    .line 614
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1390
    const/16 v0, 0x43

    if-ne p1, v0, :cond_9

    .line 1391
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    .line 1392
    const/4 v0, 0x1

    .line 1394
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1550
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/EventInfoActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1555
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1325
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 1372
    :cond_b
    :goto_b
    :pswitch_b
    return v1

    .line 1331
    :pswitch_c
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doEdit()V

    goto :goto_b

    .line 1334
    :pswitch_10
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    goto :goto_b

    .line 1348
    :pswitch_14
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->sendVia()V

    goto :goto_b

    .line 1352
    :pswitch_18
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_20

    .line 1353
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->sendToParticipants()V

    goto :goto_b

    .line 1355
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->relpy(Z)V

    goto :goto_b

    .line 1358
    :pswitch_24
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-eqz v0, :cond_b

    .line 1359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->relpy(Z)V

    goto :goto_b

    .line 1326
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_c
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_14
        :pswitch_18
        :pswitch_24
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 1201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1203
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1204
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 1207
    :cond_e
    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v2, :cond_1e

    .line 1210
    :try_start_12
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_25

    .line 1215
    :goto_19
    :try_start_19
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/calendar/EventInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_2a

    .line 1221
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1224
    :cond_24
    return-void

    .line 1211
    :catch_25
    move-exception v1

    .line 1212
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 1216
    .end local v1           #e1:Ljava/lang/Exception;
    :catch_2a
    move-exception v0

    .line 1217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1460
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1461
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1271
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    .line 1272
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    .line 1273
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1274
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1275
    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1276
    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1278
    const/4 v0, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1281
    sget-boolean v0, Lcom/android/calendar/EventInfoActivity;->HAS_REPLY_MENU:Z

    if-nez v0, :cond_34

    .line 1282
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1283
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1316
    :goto_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1285
    :cond_34
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v0, :cond_52

    .line 1286
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_4e

    move v0, v1

    :goto_3d
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1287
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_50

    :goto_44
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1289
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1290
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2f

    :cond_4e
    move v0, v2

    .line 1286
    goto :goto_3d

    :cond_50
    move v1, v2

    .line 1287
    goto :goto_44

    .line 1292
    :cond_52
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-le v0, v1, :cond_72

    move v0, v1

    :goto_57
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1293
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-le v0, v1, :cond_74

    move v0, v1

    :goto_5f
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1295
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_76

    move v0, v1

    :goto_67
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1296
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-lez v0, :cond_78

    :goto_6e
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2f

    :cond_72
    move v0, v2

    .line 1292
    goto :goto_57

    :cond_74
    move v0, v2

    .line 1293
    goto :goto_5f

    :cond_76
    move v0, v2

    .line 1295
    goto :goto_67

    :cond_78
    move v1, v2

    .line 1296
    goto :goto_6e
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 730
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 733
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 734
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->address:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 736
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 738
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->reloadEvents()V

    .line 740
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 742
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 766
    :cond_1d
    :goto_1d
    return-void

    .line 745
    :cond_1e
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initCalendarsCursor()V

    .line 747
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v1, :cond_1d

    .line 748
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/EventInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 774
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-nez v0, :cond_9

    .line 775
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 781
    :goto_8
    return v0

    .line 777
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 778
    const/4 v0, 0x1

    goto :goto_8

    .line 781
    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method reloadEvents()V
    .registers 8

    .prologue
    .line 3354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3356
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 3378
    :cond_a
    :goto_a
    return-void

    .line 3358
    :cond_b
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventListType:I

    if-eqz v0, :cond_a

    .line 3359
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    const/4 v1, 0x1

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mDayMillis:J

    new-instance v5, Lcom/android/calendar/EventInfoActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/EventInfoActivity$8;-><init>(Lcom/android/calendar/EventInfoActivity;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public showContactInfo(Lcom/android/calendar/EventInfoActivity$Attendee;Landroid/graphics/Rect;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3306
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3307
    iget-object v1, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    .line 3308
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3310
    invoke-static {v0, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3312
    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 3314
    const/4 v1, 0x2

    invoke-static {p0, p2, v0, v1, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 3332
    :goto_1d
    return-void

    .line 3317
    :cond_1e
    const-string v0, "mailto"

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3321
    new-instance v0, Landroid/text/util/Rfc822Token;

    iget-object v2, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    const-string v2, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3325
    iget-object v0, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 3326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 3327
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3330
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d
.end method

.method updateResponse()V
    .registers 13

    .prologue
    const v11, 0x7f0f0088

    const/16 v10, 0x8

    const v9, 0x7f0f0089

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 3062
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 3074
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isLocalCalendar()Z

    move-result v1

    .line 3075
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->isExchangeCalendar()Z

    move-result v2

    .line 3077
    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v3, :cond_30

    :cond_24
    if-nez v1, :cond_30

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_30

    if-eqz v2, :cond_37

    .line 3081
    :cond_30
    invoke-direct {p0, v0, v9, v10}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 3082
    invoke-direct {p0, v0, v11, v10}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 3153
    :goto_36
    return-void

    .line 3086
    :cond_37
    invoke-direct {p0, v0, v9, v8}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 3087
    invoke-direct {p0, v0, v11, v8}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(Landroid/view/View;II)V

    .line 3088
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseContainer:Landroid/view/View;

    .line 3089
    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    .line 3122
    iput v8, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 3123
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3124
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    .line 3131
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8b

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v0, v7, :cond_8b

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eqz v0, :cond_8b

    .line 3134
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3135
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    .line 3136
    iput v7, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 3141
    :cond_8b
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    if-eq v0, v7, :cond_b4

    .line 3142
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    .line 3146
    :goto_95
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    .line 3147
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoActivity;->mResponseType:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3148
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mResponseContainer:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/EventInfoActivity$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoActivity$6;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_36

    .line 3144
    :cond_b4
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    goto :goto_95
.end method
