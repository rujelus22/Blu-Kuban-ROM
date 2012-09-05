.class public Lcom/android/calendar/EditEvent;
.super Landroid/app/Activity;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EditEvent$LengthFilter;,
        Lcom/android/calendar/EditEvent$InvalidCharsFiler;,
        Lcom/android/calendar/EditEvent$MyWatcher;,
        Lcom/android/calendar/EditEvent$Attendee;,
        Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;,
        Lcom/android/calendar/EditEvent$RepeatDateListener;,
        Lcom/android/calendar/EditEvent$DateClickListener;,
        Lcom/android/calendar/EditEvent$DateListener;,
        Lcom/android/calendar/EditEvent$DateChangeListener;,
        Lcom/android/calendar/EditEvent$TimeClickListener;,
        Lcom/android/calendar/EditEvent$TimeListener;
    }
.end annotation


# static fields
.field private static final ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static DEFAULT_DOMAIN:Ljava/lang/String;

.field private static EVENT_INDEX_SET_LUNAR:I

.field private static EVENT_PROJECTION:[Ljava/lang/String;

.field private static final LOCATIONMAP_PROJECTION:[Ljava/lang/String;

.field private static final MAP_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field public static mF:Ljava/util/Formatter;

.field public static mSB:Ljava/lang/StringBuilder;


# instance fields
.field private final ACCOUNT_LOGIN:I

.field private final CONTACTSCONTRACT_DATA_FIELD:I

.field private final CONTACTSCONTRACT_PROJECTION:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_EMAIL_DATA:[Ljava/lang/String;

.field private final CONTACTSCONTRACT_PROJECTION_PHONE_NUMBER:[Ljava/lang/String;

.field private final CONTACTS_INDEX_DISPLAY_NAME:I

.field private final CONTACTS_INDEX_ID:I

.field private final CONTACTS_INDEX_REVERSE_NAME:I

.field private final CONTACTS_LOOKUP_KEY:I

.field private final CONTACTS_ROW_ID:I

.field private final COnTACTS_INDEX_DATA1:I

.field private final DELETE_ALARM:I

.field private final MAP_PICK_BITMAP:I

.field private final MAP_PICK_LOCATION:I

.field private final MAX_ATTENDEE_SIZE:I

.field private final MENU_GROUP_HIDE_OPTIONS:I

.field private final MENU_GROUP_SHOW_OPTIONS:I

.field private final MENU_ITEM_HIDE_OPTIONS:I

.field private final MENU_ITEM_SHOW_OPTIONS:I

.field private final PARTICIPANTS_PICK_CONTACT:I

.field private final PARTICIPANTS_PICK_GROUP:I

.field private final PARTICIPANTS_PICK_RECENTLY:I

.field private final SELECT_CALENDAR_ID:I

.field deleteContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isNoData:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

.field private mAlarmCustomizeDialog:Landroid/app/Dialog;

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mAllDayCheckText:Landroid/view/View;

.field private mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

.field private mAvailability:I

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailabilityTextView:Landroid/widget/TextView;

.field private mCalendarId:I

.field private mCalendarPosition:I

.field private mCalendarsContainer:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

.field private mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

.field private mDatePicker:Landroid/app/Dialog;

.field private mDescriptionEditText:Landroid/widget/EditText;

.field private mDialog:Landroid/app/Dialog;

.field private mDiscardButton:Landroid/widget/Button;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndDateHome:Landroid/widget/TextView;

.field private mEndTime:Landroid/text/format/Time;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mEndTimeHome:Landroid/widget/TextView;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mExtraOptions:Landroid/widget/LinearLayout;

.field private mFirstDayOfWeek:I

.field private mGoogleEventDialog:Landroid/app/AlertDialog;

.field private mGoogleEventDialogChecked:Z

.field private mGoogleLogin:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAttendeeData:Z

.field private mHasRepeatCount:Z

.field private mInitialValues:Landroid/content/ContentValues;

.field private mIsExchangeCalendar:Z

.field private mIsGoogleCalendar:Z

.field private mIsGooglemailDomain:Z

.field private mIsLeapMonth:Z

.field private mIsLocalCalendar:Z

.field private mIsRingtone:Z

.field private mLatitude:I

.field private mLocationBitmap:Landroid/graphics/Bitmap;

.field private mLocationEditText:Landroid/widget/EditText;

.field private mLocationSearchButton:Landroid/widget/ImageButton;

.field private mLongitude:I

.field private mMap:Landroid/widget/ImageView;

.field private mMapContainer:Landroid/view/View;

.field private mMapDeleteButton:Landroid/widget/ImageView;

.field private mMessageAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageUri:Landroid/net/Uri;

.field private mModification:I

.field private mNewEventDialog:Landroid/app/AlertDialog;

.field private mNewEventDialogChecked:Z

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field private mOriginalAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EditEvent$Attendee;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOwnerAccount:Ljava/lang/String;

.field private mParticipantsContactButton:Landroid/widget/ImageButton;

.field private mPresenceContainer:Landroid/view/View;

.field private mPrevCalendarId:J

.field private mPrevRepeatSelection:I

.field private mPrevRepeatUntilDate:Landroid/text/format/Time;

.field private mPrevRepeatUntilType:I

.field private mPrevRepeatUserSelection:I

.field private mPrivacyContainer:Landroid/view/View;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderAddButton:Landroid/widget/ImageButton;

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

.field private mReminderMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderNextIndex:I

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

.field private mRepeatArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatContainer:Landroid/view/View;

.field private mRepeatSelection:I

.field private mRepeatTypeTextView:Landroid/widget/TextView;

.field private mRepeatUntilDate:Landroid/text/format/Time;

.field private mRepeatUntilDateButton:Landroid/widget/Button;

.field private mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilDayButton:Landroid/widget/Button;

.field private mRepeatUntilDayDialog:Landroid/app/Dialog;

.field private mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

.field private mRepeatUntilType:I

.field private mRepeatUserSelection:I

.field private mRingtoneIndex:I

.field private mRrule:Ljava/lang/String;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaving:Z

.field public mScheduleButton:Landroid/widget/ImageView;

.field private mSelectedReminderItem:I

.field private mSelectedReminderValue:I

.field private mSetLunarCalendar:Z

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartDateHome:Landroid/widget/TextView;

.field private mStartTime:Landroid/text/format/Time;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mStartTimeHome:Landroid/widget/TextView;

.field private mStatus:Landroid/view/View;

.field private mStatusContainer:Landroid/view/View;

.field private mStatusLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusTypeText:Landroid/widget/TextView;

.field private mStatusValue:I

.field private mSyncId:Ljava/lang/String;

.field private mTimePicker:Landroid/app/Dialog;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field private mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneContainer:Landroid/widget/LinearLayout;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field private mTimezoneFooterView:Landroid/widget/TextView;

.field private mTimezoneSeperator:Landroid/view/View;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mUtillRepeatCount:I

.field private mVisibility:I

.field private mVisibilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/EditEvent;->EVENT_INDEX_SET_LUNAR:I

    .line 228
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 248
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendee_contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 269
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id=? AND attendeeEmail IN ("

    aput-object v1, v0, v3

    const-string v1, "event_id=? AND attendeePhoneNumber IN ("

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    .line 631
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    .line 3370
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/EditEvent;->LOCATIONMAP_PROJECTION:[Ljava/lang/String;

    .line 6173
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 311
    iput v4, p0, Lcom/android/calendar/EditEvent;->MENU_GROUP_SHOW_OPTIONS:I

    .line 313
    iput v5, p0, Lcom/android/calendar/EditEvent;->MENU_GROUP_HIDE_OPTIONS:I

    .line 315
    iput v4, p0, Lcom/android/calendar/EditEvent;->MENU_ITEM_SHOW_OPTIONS:I

    .line 317
    iput v5, p0, Lcom/android/calendar/EditEvent;->MENU_ITEM_HIDE_OPTIONS:I

    .line 373
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 403
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    .line 418
    iput v1, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    .line 422
    iput v3, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    .line 424
    iput v3, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    .line 439
    iput-boolean v4, p0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    .line 441
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 454
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    .line 455
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    .line 465
    iput-boolean v4, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    .line 467
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    .line 469
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    .line 482
    iput v3, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    .line 489
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 505
    iput v1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 507
    iput v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    .line 519
    iput v3, p0, Lcom/android/calendar/EditEvent;->mModification:I

    .line 575
    iput v3, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    .line 586
    iput v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    .line 588
    iput v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    .line 598
    iput v3, p0, Lcom/android/calendar/EditEvent;->mRingtoneIndex:I

    .line 600
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsRingtone:Z

    .line 602
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    .line 607
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    .line 609
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    .line 617
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    .line 634
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    .line 644
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    .line 646
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    .line 650
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 668
    new-instance v0, Lcom/android/calendar/EditEvent$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditEvent$1;-><init>(Lcom/android/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mHandler:Landroid/os/Handler;

    .line 2176
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    .line 6133
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAP_PICK_LOCATION:I

    .line 6135
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAP_PICK_BITMAP:I

    .line 6137
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_CONTACT:I

    .line 6139
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_GROUP:I

    .line 6141
    const/16 v0, 0xca

    iput v0, p0, Lcom/android/calendar/EditEvent;->PARTICIPANTS_PICK_RECENTLY:I

    .line 6143
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/calendar/EditEvent;->ACCOUNT_LOGIN:I

    .line 6146
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/calendar/EditEvent;->SELECT_CALENDAR_ID:I

    .line 6148
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/EditEvent;->DELETE_ALARM:I

    .line 6150
    iput v5, p0, Lcom/android/calendar/EditEvent;->CONTACTS_LOOKUP_KEY:I

    .line 6152
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->CONTACTS_ROW_ID:I

    .line 6154
    iput v3, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_DATA_FIELD:I

    .line 6156
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_PHONE_NUMBER:[Ljava/lang/String;

    .line 6160
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_EMAIL_DATA:[Ljava/lang/String;

    .line 6164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

    .line 6171
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/calendar/EditEvent;->MAX_ATTENDEE_SIZE:I

    .line 6571
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->CONTACTSCONTRACT_PROJECTION:[Ljava/lang/String;

    .line 6578
    iput v3, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_ID:I

    .line 6580
    iput v4, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_DISPLAY_NAME:I

    .line 6582
    iput v5, p0, Lcom/android/calendar/EditEvent;->CONTACTS_INDEX_REVERSE_NAME:I

    .line 6584
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->COnTACTS_INDEX_DATA1:I

    .line 7115
    iput-boolean v3, p0, Lcom/android/calendar/EditEvent;->isNoData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/EditEvent;Landroid/view/View;IIIZZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/EditEvent;->processDataSetEvent(Landroid/view/View;IIIZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/TimezoneAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/EditEvent;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/calendar/EditEvent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->sendToParticipants()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/calendar/EditEvent;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->hideSoftInput(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/calendar/EditEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/calendar/EditEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveEvent()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/calendar/EditEvent;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EditEvent;->setAlarmCustomize(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/calendar/EditEvent;Landroid/view/View;IIIZZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/EditEvent;->processDataSetRepeatDate(Landroid/view/View;IIIZZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/calendar/EditEvent;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setParticipantsSchedule()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->checkleap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/calendar/EditEvent;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    return p1
.end method

.method static synthetic access$7202(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    return p1
.end method

.method static synthetic access$7300(Lcom/android/calendar/EditEvent;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/calendar/EditEvent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/calendar/EditEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getExchangeCal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    return v0
.end method

.method static synthetic access$7900(Lcom/android/calendar/EditEvent;IZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EditEvent;->addReminder(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/calendar/EditEvent;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$8402(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/calendar/EditEvent;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method

.method private addAttendee(Lcom/android/calendar/EditEvent$Attendee;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3306
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    .line 3307
    const-string v1, ""

    .line 3315
    const/16 v4, 0x14

    if-gt v0, v4, :cond_4e

    .line 3317
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EditEvent$Attendee;

    .line 3318
    iget-object v5, v0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3320
    iget v5, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12

    .line 3329
    iput v2, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    .line 3330
    invoke-virtual {v0}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 3336
    :goto_42
    if-nez v1, :cond_4d

    .line 3337
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3338
    invoke-virtual {p1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v0

    .line 3345
    :cond_4d
    :goto_4d
    return-object v0

    .line 3342
    :cond_4e
    const v0, 0x7f0a00b1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    goto :goto_4d

    :cond_5a
    move-object v0, v1

    move v1, v3

    goto :goto_42
.end method

.method private addRecurrenceRule(Landroid/content/ContentValues;)V
    .registers 9
    .parameter

    .prologue
    const-wide/32 v5, 0x5265c00

    const/4 v3, 0x1

    .line 5794
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->updateRecurrenceRule(Landroid/text/format/Time;)V

    .line 5797
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 5815
    :goto_d
    return-void

    .line 5801
    :cond_e
    const-string v0, "rrule"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5802
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 5803
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 5806
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 5807
    if-eqz v4, :cond_4e

    .line 5808
    sub-long/2addr v0, v2

    add-long/2addr v0, v5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v5

    .line 5809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5814
    :goto_48
    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 5811
    :cond_4e
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 5812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48
.end method

.method private addReminder(IZ)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 4655
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4657
    const/4 v1, 0x3

    if-le v0, v1, :cond_94

    .line 4658
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4663
    :goto_10
    if-eqz p2, :cond_3a

    .line 4664
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 4665
    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    .line 4666
    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_9b

    .line 4668
    :goto_25
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4669
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4672
    :cond_3a
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4673
    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4674
    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4675
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4676
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4677
    const v0, 0x7f0f0038

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4678
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {v2, p1, v3}, Lcom/android/calendar/EditEvent;->reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 4679
    if-nez v2, :cond_70

    .line 4680
    invoke-static {p0, p1, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 4682
    :cond_70
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4684
    new-instance v2, Lcom/android/calendar/EditEvent$73;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$73;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4693
    const v0, 0x7f0f0039

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4694
    new-instance v1, Lcom/android/calendar/EditEvent$74;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$74;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4707
    return v4

    .line 4660
    :cond_94
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_10

    .line 4666
    :cond_9b
    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    rem-int v0, v1, v0

    goto :goto_25
.end method

.method private checkTimeDependentFields(Landroid/content/ContentValues;)V
    .registers 19
    .parameter

    .prologue
    .line 5561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "beginTime"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "endTime"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x1

    .line 5564
    :goto_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v7, "rrule"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v8, "eventTimezone"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5567
    const-string v2, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 5568
    const-string v2, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 5569
    const-string v2, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_8f

    const/4 v2, 0x1

    .line 5570
    :goto_68
    const-string v13, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5571
    const-string v14, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5573
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_91

    if-eqz v7, :cond_91

    const-string v15, "COUNT"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_91

    .line 5609
    :cond_8c
    :goto_8c
    return-void

    .line 5563
    :cond_8d
    const/4 v1, 0x0

    goto :goto_2d

    .line 5569
    :cond_8f
    const/4 v2, 0x0

    goto :goto_68

    .line 5577
    :cond_91
    cmp-long v15, v3, v9

    if-nez v15, :cond_d2

    cmp-long v5, v5, v11

    if-nez v5, :cond_d2

    if-ne v1, v2, :cond_d2

    invoke-static {v7, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 5580
    const-string v1, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5581
    const-string v1, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5582
    const-string v1, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5583
    const-string v1, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5584
    const-string v1, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5585
    const-string v1, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_8c

    .line 5589
    :cond_d2
    if-eqz v7, :cond_8c

    if-eqz v13, :cond_8c

    .line 5600
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8c

    .line 5601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 5602
    cmp-long v5, v3, v9

    if-eqz v5, :cond_ed

    .line 5604
    sub-long v3, v9, v3

    .line 5605
    add-long/2addr v1, v3

    .line 5607
    :cond_ed
    const-string v3, "dtstart"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8c
.end method

.method private checkleap()V
    .registers 5

    .prologue
    .line 3296
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3297
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "preferences_confirm_leap_event"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3299
    .local v0, confirmed:Z
    if-nez v0, :cond_12

    .line 3300
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    .line 3302
    :cond_12
    return-void
.end method

.method static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4753
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4756
    rem-int/lit8 v0, p1, 0x3c

    if-eqz v0, :cond_41

    .line 4758
    if-eqz p2, :cond_3e

    .line 4759
    const v0, 0x7f0c0001

    .line 4774
    :goto_d
    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 4779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4761
    :cond_3e
    const/high16 v0, 0x7f0c

    goto :goto_d

    .line 4763
    :cond_41
    rem-int/lit16 v0, p1, 0x5a0

    if-eqz v0, :cond_4b

    .line 4764
    div-int/lit8 p1, p1, 0x3c

    .line 4765
    const v0, 0x7f0c0002

    goto :goto_d

    .line 4766
    :cond_4b
    rem-int/lit16 v0, p1, 0x2760

    if-eqz v0, :cond_55

    .line 4767
    div-int/lit16 p1, p1, 0x5a0

    .line 4768
    const v0, 0x7f0c0003

    goto :goto_d

    .line 4770
    :cond_55
    div-int/lit16 p1, p1, 0x2760

    .line 4771
    const v0, 0x7f0c0004

    goto :goto_d
.end method

.method private createAlarmCustomizeDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 1701
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1702
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1704
    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1705
    const v2, 0x7f0f0011

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1706
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00af

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a00b9

    new-instance v4, Lcom/android/calendar/EditEvent$44;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/calendar/EditEvent$44;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0087

    new-instance v2, Lcom/android/calendar/EditEvent$43;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$43;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$42;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$42;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    .line 1733
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$45;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$45;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1740
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createRepeatCustomizeDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 1596
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1597
    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1600
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b9

    new-instance v3, Lcom/android/calendar/EditEvent$37;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$37;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0087

    new-instance v2, Lcom/android/calendar/EditEvent$36;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$36;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    .line 1631
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$38;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$38;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1639
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$39;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$39;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1648
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createRepeatUntilDialog()Landroid/app/Dialog;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1853
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1856
    const v1, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 1858
    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    .line 1859
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$49;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$49;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1868
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    .line 1869
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$50;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$50;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1877
    const v0, 0x7f0f00c3

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    .line 1878
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    new-instance v3, Lcom/android/calendar/EditEvent$51;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$51;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1900
    const v6, 0x7f0a0076

    .line 1904
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0098

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$53;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$53;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    new-instance v2, Lcom/android/calendar/EditEvent$52;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$52;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1929
    return-object v0
.end method

.method private finishWithResult()V
    .registers 5

    .prologue
    .line 5553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5554
    const-string v1, "date"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5555
    const-string v1, "allday"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5556
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/EditEvent;->setResult(ILandroid/content/Intent;)V

    .line 5557
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 5558
    return-void
.end method

.method private getAttendeesCount()I
    .registers 3

    .prologue
    .line 6565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6567
    .local v0, listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/TextUtil/Rfc822TokenCal;>;"
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 6568
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getContentValuesFromUi()Landroid/content/ContentValues;
    .registers 16

    .prologue
    .line 5987
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 5988
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 5989
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 5990
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 5992
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 5998
    if-eqz v11, :cond_109

    .line 6001
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 6002
    const-string v9, "UTC"

    .line 6003
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 6004
    iput-object v9, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6005
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 6007
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 6008
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 6009
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v0, :cond_fb

    .line 6011
    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    int-to-long v0, v0

    :goto_77
    move-wide v4, v7

    move-object v6, v9

    .line 6031
    :goto_79
    const-string v7, "calendar_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6032
    const-string v0, "eventTimezone"

    invoke-virtual {v14, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6033
    const-string v0, "title"

    invoke-virtual {v14, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6034
    const-string v1, "allDay"

    if-eqz v11, :cond_138

    const/4 v0, 0x1

    :goto_91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6035
    const-string v0, "dtstart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6036
    const-string v0, "dtend"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6037
    const-string v0, "description"

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6038
    const-string v0, "availability"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6039
    const-string v0, "contactEventType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6040
    const-string v0, "eventLocation"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6041
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6042
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6044
    iget v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    if-lez v0, :cond_13b

    iget v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    add-int/lit8 v0, v0, 0x1

    .line 6045
    :goto_e6
    const-string v1, "accessLevel"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6046
    const-string v0, "availability"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6048
    return-object v14

    .line 6013
    :cond_fb
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v1, "calendar_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_77

    .line 6016
    :cond_109
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 6017
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput-object v6, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6018
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iput-object v6, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6019
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 6020
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 6021
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_133

    .line 6022
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v1, "calendar_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_79

    .line 6025
    :cond_133
    iget v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    int-to-long v0, v0

    goto/16 :goto_79

    .line 6034
    :cond_138
    const/4 v0, 0x0

    goto/16 :goto_91

    .line 6044
    :cond_13b
    iget v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    goto :goto_e6
.end method

.method private getExchangeCal()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3271
    const/4 v0, 0x0

    .line 3272
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_20

    .line 3273
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3274
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3276
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3278
    :cond_20
    return-object v0
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 6719
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6720
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_16

    .line 6721
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6731
    :cond_16
    return-void
.end method

.method private hideSoftInput(Landroid/app/Dialog;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 6692
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6693
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 6694
    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6695
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_19

    .line 6696
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 6697
    :cond_19
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6699
    .end local v1           #view:Landroid/view/View;
    :cond_29
    return-void
.end method

.method private initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x2760

    const/4 v8, -0x1

    .line 1744
    invoke-virtual {p1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 1745
    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 1746
    const v0, 0x7f0f0010

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 1748
    const-string v0, ""

    .line 1750
    iget v1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    .line 1751
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1752
    const v2, 0x7f0a00aa

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1753
    const v3, 0x7f0a00ab

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1754
    const v4, 0x7f0a00ac

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1755
    const v9, 0x7f0a00ad

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1757
    if-lez v1, :cond_df

    .line 1758
    const/16 v9, 0x3c

    if-ge v1, v9, :cond_9f

    move-object v8, v2

    move v9, v1

    .line 1788
    :goto_47
    new-instance v0, Lcom/android/calendar/EditEvent$46;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$46;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    if-lez v9, :cond_d1

    .line 1805
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1806
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1807
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1813
    :goto_67
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_da

    .line 1814
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1818
    :goto_79
    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 1822
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1823
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1826
    new-instance v0, Lcom/android/calendar/EditEvent$47;

    invoke-direct {v0, p0, v7, v10}, Lcom/android/calendar/EditEvent$47;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1841
    new-instance v0, Lcom/android/calendar/EditEvent$48;

    invoke-direct {v0, p0, v7}, Lcom/android/calendar/EditEvent$48;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;)V

    .line 1848
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1849
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1850
    return-void

    .line 1761
    :cond_9f
    const/16 v9, 0x5a0

    if-ge v1, v9, :cond_af

    .line 1762
    rem-int/lit8 v0, v1, 0x3c

    if-eqz v0, :cond_aa

    move-object v8, v2

    move v9, v1

    .line 1764
    goto :goto_47

    .line 1767
    :cond_aa
    div-int/lit8 v0, v1, 0x3c

    move-object v8, v3

    move v9, v0

    goto :goto_47

    .line 1769
    :cond_af
    if-ge v1, v11, :cond_bf

    .line 1770
    rem-int/lit16 v0, v1, 0x5a0

    if-eqz v0, :cond_ba

    .line 1772
    div-int/lit8 v0, v1, 0x3c

    move-object v8, v3

    move v9, v0

    goto :goto_47

    .line 1775
    :cond_ba
    div-int/lit16 v0, v1, 0x5a0

    move-object v8, v4

    move v9, v0

    goto :goto_47

    .line 1777
    :cond_bf
    if-lt v1, v11, :cond_df

    .line 1778
    rem-int/lit16 v0, v1, 0x2760

    if-eqz v0, :cond_cb

    .line 1780
    div-int/lit16 v0, v1, 0x5a0

    move-object v8, v4

    move v9, v0

    goto/16 :goto_47

    .line 1783
    :cond_cb
    div-int/lit16 v0, v1, 0x2760

    move-object v8, v5

    move v9, v0

    goto/16 :goto_47

    .line 1809
    :cond_d1
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 1816
    :cond_da
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_79

    :cond_df
    move v9, v8

    move-object v8, v0

    goto/16 :goto_47
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 3449
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3450
    if-eqz v0, :cond_f

    .line 3451
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3454
    :cond_f
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3455
    if-eqz v0, :cond_1c

    .line 3456
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3459
    :cond_1c
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3460
    if-eqz v0, :cond_29

    .line 3461
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3464
    :cond_29
    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3465
    if-eqz v0, :cond_38

    .line 3466
    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 3467
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 3470
    :cond_38
    const-string v0, "beginTime"

    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3471
    const-string v2, "endTime"

    invoke-virtual {p1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3472
    const-string v4, "allDay"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3474
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DatefromEmail start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " all: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    cmp-long v5, v0, v8

    if-eqz v5, :cond_89

    cmp-long v5, v2, v8

    if-eqz v5, :cond_89

    .line 3477
    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3478
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 3502
    :cond_89
    if-eqz v4, :cond_8e

    .line 3503
    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    .line 3505
    :cond_8e
    return-void
.end method

.method private initMultiAutoCompleteTextView(I)Lcom/android/calendar/EnterActionMultiEdit;
    .registers 5
    .parameter "res"

    .prologue
    .line 3419
    invoke-virtual {p0, p1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EnterActionMultiEdit;

    .line 3421
    .local v0, list:Lcom/android/calendar/EnterActionMultiEdit;
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3422
    new-instance v1, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;

    invoke-direct {v1}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 3430
    new-instance v1, Lcom/android/calendar/EditEvent$MyWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/EditEvent$MyWatcher;-><init>(Lcom/android/calendar/EditEvent;Lcom/android/calendar/EditEvent$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3431
    return-object v0
.end method

.method private initRepeatUntilDialog(Landroid/app/Dialog;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x7f4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1933
    const v0, 0x7f0f00c1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    .line 1934
    const v0, 0x7f0f00c2

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    .line 1935
    const v0, 0x7f0f000a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    .line 1936
    const v0, 0x7f0f00c3

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    .line 1937
    const v0, 0x7f0f00c4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    .line 1939
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1940
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/calendar/EditEvent$54;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$54;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1952
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07001e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1954
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_198

    move v0, v1

    .line 1971
    :goto_62
    if-eqz v4, :cond_6e

    array-length v5, v4

    if-ge v0, v5, :cond_6e

    .line 1972
    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    aget-object v0, v4, v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1974
    :cond_6e
    iget v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    iget v4, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    if-ne v0, v4, :cond_11f

    .line 1975
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-eq v0, v2, :cond_7c

    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-nez v0, :cond_f9

    .line 1976
    :cond_7c
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1977
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1978
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2073
    :cond_8b
    :goto_8b
    new-instance v3, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2079
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "date_format"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2082
    if-eqz v2, :cond_c5

    .line 2083
    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 2084
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2090
    :cond_c5
    :goto_c5
    iget v2, v3, Landroid/text/format/Time;->year:I

    if-le v2, v7, :cond_d3

    .line 2091
    iput v7, v3, Landroid/text/format/Time;->year:I

    .line 2092
    const/16 v2, 0xb

    iput v2, v3, Landroid/text/format/Time;->month:I

    .line 2093
    const/16 v2, 0x1f

    iput v2, v3, Landroid/text/format/Time;->monthDay:I

    .line 2096
    :cond_d3
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/EditEvent$55;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$55;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2108
    return-void

    :pswitch_ed
    move v0, v1

    .line 1957
    goto/16 :goto_62

    :pswitch_f0
    move v0, v2

    .line 1962
    goto/16 :goto_62

    :pswitch_f3
    move v0, v3

    .line 1966
    goto/16 :goto_62

    .line 1968
    :pswitch_f6
    const/4 v0, 0x3

    goto/16 :goto_62

    .line 1979
    :cond_f9
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v3, :cond_10e

    .line 1980
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1981
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1982
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_8b

    .line 1984
    :cond_10e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1985
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1986
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_8b

    .line 1989
    :cond_11f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1990
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1991
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1993
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2051
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_1aa

    .line 2068
    :goto_13e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2069
    :cond_152
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_8b

    .line 2053
    :pswitch_15f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    goto :goto_13e

    .line 2058
    :pswitch_168
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x6

    iput v3, v0, Landroid/text/format/Time;->month:I

    goto :goto_13e

    .line 2062
    :pswitch_171
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->year:I

    goto :goto_13e

    .line 2065
    :pswitch_17a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Landroid/text/format/Time;->year:I

    goto :goto_13e

    .line 2085
    :cond_183
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 2086
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c5

    .line 1954
    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f3
        :pswitch_f3
        :pswitch_f6
    .end packed-switch

    .line 2051
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_168
        :pswitch_168
        :pswitch_168
        :pswitch_171
        :pswitch_171
        :pswitch_17a
    .end packed-switch
.end method

.method private isCustomRecurrence()Z
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6078
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_17

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_17

    .line 6123
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 6083
    :cond_17
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v2, v4, :cond_2b

    .line 6085
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_16

    .line 6092
    :cond_2b
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-eq v2, v1, :cond_3d

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-le v2, v1, :cond_3f

    :cond_3d
    move v0, v1

    .line 6094
    goto :goto_16

    .line 6097
    :cond_3f
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_16

    .line 6101
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_78

    :cond_4c
    move v0, v1

    .line 6123
    goto :goto_16

    .line 6105
    :pswitch_4e
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_16

    .line 6107
    :cond_5c
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_4c

    goto :goto_16

    .line 6112
    :pswitch_63
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_16

    .line 6114
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_4c

    goto :goto_16

    .line 6101
    :pswitch_data_78
    .packed-switch 0x4
        :pswitch_16
        :pswitch_4e
        :pswitch_63
        :pswitch_16
    .end packed-switch
.end method

.method private isEmpty()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 6052
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_16

    .line 6053
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6054
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .line 6073
    .end local v2           #title:Ljava/lang/String;
    :cond_15
    :goto_15
    return v3

    .line 6059
    :cond_16
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_2a

    .line 6060
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6061
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_15

    .line 6066
    .end local v1           #location:Ljava/lang/String;
    :cond_2a
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_3e

    .line 6067
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6068
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_15

    .line 6073
    .end local v0           #description:Ljava/lang/String;
    :cond_3e
    const/4 v3, 0x1

    goto :goto_15
.end method

.method private isExchangeCalendar()Z
    .registers 4

    .prologue
    .line 3282
    const/4 v0, 0x0

    .line 3284
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2a

    .line 3286
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3287
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3289
    const/4 v0, 0x1

    .line 3291
    :cond_2a
    return v0
.end method

.method private isGoogleCalendar()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4192
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 4194
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4196
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4199
    if-eqz v1, :cond_2c

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4200
    const/4 v0, 0x1

    .line 4204
    :cond_2c
    return v0
.end method

.method private isLocalCalendar()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 4795
    const/4 v1, 0x0

    .line 4796
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 4797
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4798
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOCAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4805
    :cond_2f
    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f
.end method

.method private isOverlap()Z
    .registers 11

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v7, 0x1

    .line 6705
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    div-long/2addr v3, v8

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    div-long/2addr v5, v8

    sub-long v0, v3, v5

    .line 6706
    .local v0, days:J
    const/4 v2, 0x0

    .line 6708
    .local v2, isOvelap:Z
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    if-ne v3, v7, :cond_1f

    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gtz v3, :cond_55

    :cond_1f
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_29

    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    :cond_29
    const-wide/16 v3, 0x7

    cmp-long v3, v0, v3

    if-gtz v3, :cond_55

    :cond_2f
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3a

    const-wide/16 v3, 0xe

    cmp-long v3, v0, v3

    if-gtz v3, :cond_55

    :cond_3a
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_44

    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4a

    :cond_44
    const-wide/16 v3, 0x1f

    cmp-long v3, v0, v3

    if-gtz v3, :cond_55

    :cond_4a
    iget v3, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_56

    const-wide/16 v3, 0x164

    cmp-long v3, v0, v3

    if-lez v3, :cond_56

    .line 6713
    :cond_55
    const/4 v2, 0x1

    .line 6715
    :cond_56
    return v2
.end method

.method private isWeekdayEvent()Z
    .registers 3

    .prologue
    .line 6127
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 6128
    const/4 v0, 0x1

    .line 6130
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private populateReminder()V
    .registers 4

    .prologue
    .line 4641
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 4648
    :cond_8
    return-void

    .line 4644
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4645
    .local v1, minute:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 4646
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent;->addReminder(IZ)Z

    goto :goto_f
.end method

.method private populateRepeats()V
    .registers 15

    .prologue
    .line 4318
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 4319
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 4323
    const/16 v0, 0xa

    .line 4333
    :goto_18
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x2

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x3

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x4

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x6

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const/4 v5, 0x7

    invoke-static {v5, v0}, Lcom/android/calendar/util/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 4342
    const v0, 0x7f070008

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 4348
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v8

    .line 4349
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v3

    .line 4351
    new-instance v9, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4352
    new-instance v10, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4354
    const v5, 0x7f0a005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4355
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4357
    const v5, 0x7f0a005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4358
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4360
    if-eqz v3, :cond_aa

    iget-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v3, :cond_aa

    .line 4361
    const v3, 0x7f0a005f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4362
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4365
    :cond_aa
    const v3, 0x7f0a0060

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4366
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "%A"

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4367
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4369
    const v3, 0x7f0a00c9

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4370
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "%A"

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4371
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4375
    iget-boolean v3, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v3, :cond_11d

    .line 4376
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x7

    .line 4377
    const v5, 0x7f0a0061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4378
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v0, v0, v3

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget v3, v1, Landroid/text/format/Time;->weekDay:I

    aget-object v2, v2, v3

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4379
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4383
    :cond_11d
    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 4390
    const v2, 0x7f0a0064

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4391
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4392
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4394
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 4396
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    if-nez v0, :cond_185

    .line 4404
    const v0, 0x7f0a0065

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4405
    const/4 v6, 0x0

    .line 4406
    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 4407
    const/16 v6, 0x80

    .line 4411
    :cond_158
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 4412
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v0, p0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4415
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4418
    :cond_185
    if-eqz v8, :cond_19d

    .line 4421
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-static {v0, v1}, Lcom/android/calendar/EventRecurrenceFormatter;->getCustomRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v0

    .line 4423
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4424
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4426
    :cond_19d
    iput-object v10, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 4427
    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    .line 4429
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4430
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v1, :cond_1ba

    .line 4431
    if-eqz v8, :cond_1fa

    .line 4432
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4462
    :cond_1ba
    :goto_1ba
    if-ltz v0, :cond_1c2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_262

    .line 4463
    :cond_1c2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 4466
    :goto_1c5
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1ce

    .line 4467
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 4469
    :cond_1ce
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1de

    .line 4470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 4471
    :cond_1de
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4473
    return-void

    .line 4325
    :cond_1f6
    const/16 v0, 0x14

    goto/16 :goto_18

    .line 4434
    :cond_1fa
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v1, :pswitch_data_270

    goto :goto_1ba

    .line 4436
    :pswitch_202
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1ba

    .line 4439
    :pswitch_20c
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 4440
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1ba

    .line 4442
    :cond_21e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22f

    .line 4443
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1ba

    .line 4445
    :cond_22f
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1ba

    .line 4450
    :pswitch_239
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v0

    if-eqz v0, :cond_24c

    .line 4451
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1ba

    .line 4453
    :cond_24c
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1ba

    .line 4457
    :pswitch_257
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_1ba

    .line 4465
    :cond_262
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    goto/16 :goto_1c5

    .line 4434
    :pswitch_data_270
    .packed-switch 0x4
        :pswitch_202
        :pswitch_20c
        :pswitch_239
        :pswitch_257
    .end packed-switch
.end method

.method private populateTimezone()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 4497
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/calendar/EditEvent$71;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$71;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4503
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4504
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 4508
    :goto_22
    array-length v4, v2

    if-ge v0, v4, :cond_8b

    .line 4509
    aget-object v4, v2, v0

    .line 4510
    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 4511
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 4513
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 4514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4515
    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4517
    if-gez v2, :cond_99

    .line 4518
    const/16 v2, 0x2d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4523
    :goto_52
    int-to-long v6, v4

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4524
    const/16 v2, 0x3a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4526
    const v2, 0xea60

    div-int v2, v4, v2

    .line 4527
    rem-int/lit8 v2, v2, 0x3c

    .line 4529
    const/16 v4, 0xa

    if-ge v2, v4, :cond_6f

    .line 4530
    const/16 v4, 0x30

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4532
    :cond_6f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4533
    const-string v2, "("

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4534
    const-string v1, ") "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4535
    aget-object v0, v3, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4536
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4537
    const/4 v1, 0x1

    .line 4541
    :cond_8b
    if-nez v1, :cond_95

    .line 4542
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4544
    :cond_95
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    .line 4545
    return-void

    .line 4520
    :cond_99
    const/16 v2, 0x2b

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 4508
    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method private populateWhen()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 4299
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 4301
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 4304
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4305
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4307
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4308
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4310
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4311
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4313
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4314
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4315
    return-void
.end method

.method private prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V
    .registers 6
    .parameter

    .prologue
    .line 1652
    const v0, 0x7f0f00c5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1653
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1656
    if-lez v1, :cond_48

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1659
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1660
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1661
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1664
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1665
    new-instance v2, Lcom/android/calendar/EditEvent$40;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$40;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1688
    new-instance v1, Lcom/android/calendar/EditEvent$41;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/EditEvent$41;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;)V

    .line 1694
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1696
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1698
    return-void

    .line 1656
    :cond_48
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private processDataSetEvent(Landroid/view/View;IIIZZ)V
    .registers 22
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"

    .prologue
    .line 838
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 839
    .local v10, startTime:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    .line 840
    .local v4, endTime:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 841
    .local v7, sTime:Landroid/text/format/Time;
    new-instance v1, Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 862
    .local v1, eTime:Landroid/text/format/Time;
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_b0

    .line 864
    iget v12, v4, Landroid/text/format/Time;->year:I

    iget v13, v10, Landroid/text/format/Time;->year:I

    sub-int v11, v12, v13

    .line 865
    .local v11, yearDuration:I
    iget v12, v4, Landroid/text/format/Time;->month:I

    iget v13, v10, Landroid/text/format/Time;->month:I

    sub-int v6, v12, v13

    .line 866
    .local v6, monthDuration:I
    iget v12, v4, Landroid/text/format/Time;->monthDay:I

    iget v13, v10, Landroid/text/format/Time;->monthDay:I

    sub-int v5, v12, v13

    .line 868
    .local v5, monthDayDuration:I
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 869
    move/from16 v0, p2

    iput v0, v7, Landroid/text/format/Time;->year:I

    .line 870
    move/from16 v0, p3

    iput v0, v7, Landroid/text/format/Time;->month:I

    .line 871
    move/from16 v0, p4

    iput v0, v7, Landroid/text/format/Time;->monthDay:I

    .line 872
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 874
    .local v8, startMillis:J
    invoke-static {v7}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_51

    .line 875
    const v12, 0x7f0a00a1

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 955
    .end local v5           #monthDayDuration:I
    .end local v6           #monthDuration:I
    .end local v11           #yearDuration:I
    :goto_50
    return-void

    .line 879
    .restart local v5       #monthDayDuration:I
    .restart local v6       #monthDuration:I
    .restart local v11       #yearDuration:I
    :cond_51
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 880
    add-int v12, p2, v11

    iput v12, v1, Landroid/text/format/Time;->year:I

    .line 881
    add-int v12, p3, v6

    iput v12, v1, Landroid/text/format/Time;->month:I

    .line 882
    add-int v12, p4, v5

    iput v12, v1, Landroid/text/format/Time;->monthDay:I

    .line 883
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 884
    .local v2, endMillis:J
    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_72

    .line 885
    const v12, 0x7f0a00a1

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_50

    .line 888
    :cond_72
    invoke-virtual {v10, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 889
    invoke-virtual {v4, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 897
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    .line 898
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    .line 903
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_94

    .line 904
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 907
    :cond_94
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    .line 950
    .end local v5           #monthDayDuration:I
    .end local v6           #monthDuration:I
    .end local v11           #yearDuration:I
    :cond_97
    :goto_97
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v8, v9, v13}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 951
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v2, v3, v13}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 952
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v12, v2, v3, v13}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    goto :goto_50

    .line 910
    .end local v2           #endMillis:J
    .end local v8           #startMillis:J
    :cond_b0
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 911
    .restart local v8       #startMillis:J
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 912
    move/from16 v0, p2

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 913
    move/from16 v0, p3

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 914
    move/from16 v0, p4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 915
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 916
    .restart local v2       #endMillis:J
    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v12

    if-nez v12, :cond_d7

    .line 917
    const v12, 0x7f0a00a1

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto/16 :goto_50

    .line 920
    :cond_d7
    invoke-virtual {v4, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 938
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_97

    .line 939
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 940
    move-wide v2, v8

    .line 941
    const v12, 0x7f0a00a2

    invoke-static {p0, v12}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_97
.end method

.method private processDataSetRepeatDate(Landroid/view/View;IIIZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2135
    new-instance v1, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {v1, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    .line 2139
    invoke-static {v1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2140
    const v0, 0x7f0a00a1

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 2174
    :goto_17
    return-void

    .line 2144
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    if-le v0, v2, :cond_39

    .line 2146
    const v0, 0x7f0a00a3

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_17

    .line 2150
    :cond_39
    const-string v0, "EditEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " month:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " monthDay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p2, v0, Landroid/text/format/Time;->year:I

    .line 2153
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p3, v0, Landroid/text/format/Time;->month:I

    .line 2154
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    .line 2155
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 2160
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2161
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2163
    if-eqz v2, :cond_a0

    .line 2164
    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 2165
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2171
    :cond_a0
    :goto_a0
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDateButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 2166
    :cond_b2
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2167
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a0
.end method

.method private reminderItemsToMinutes()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4784
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4785
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_35

    .line 4786
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4787
    const v4, 0x7f0f0038

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4788
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4789
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4785
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 4791
    :cond_35
    return-object v3
.end method

.method static reminderMinuteToLabel(Ljava/util/ArrayList;ILjava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter "reminderValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5613
    .local p0, reminderValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, reminderLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 5614
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 5615
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5617
    :goto_19
    return-object v1

    .line 5613
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5617
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private save()I
    .registers 18

    .prologue
    .line 5075
    const/4 v9, 0x0

    .line 5077
    const/4 v6, 0x0

    .line 5081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1a

    .line 5086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 5087
    :cond_18
    const/4 v1, 0x3

    .line 5549
    :goto_19
    return v1

    .line 5095
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5096
    const/4 v3, -0x1

    .line 5098
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentValuesFromUi()Landroid/content/ContentValues;

    move-result-object v10

    .line 5100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_10f

    .line 5101
    const-string v2, "availabilityStatus"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5106
    :goto_38
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 5109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    if-eqz v2, :cond_57

    .line 5110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 5116
    :cond_57
    const-string v2, "organizer"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5118
    const/4 v4, 0x0

    .line 5119
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    .line 5120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5121
    const/4 v7, -0x1

    if-eq v2, v7, :cond_71

    .line 5122
    const/4 v2, 0x1

    .line 5150
    :goto_85
    if-nez v11, :cond_11d

    .line 5153
    const-string v3, "hasAttendeeData"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5155
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 5156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_a1

    .line 5158
    const-string v3, "dtend"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 5161
    :cond_a1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5162
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 5163
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5165
    const/4 v4, 0x1

    if-ne v2, v4, :cond_11b

    const/4 v2, 0x1

    :goto_ba
    move v7, v3

    move v6, v2

    .line 5233
    :goto_bc
    const/4 v2, -0x1

    if-eq v7, v2, :cond_24e

    const/4 v2, 0x1

    move v8, v2

    .line 5237
    :goto_c1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v2}, Lcom/android/calendar/EnterActionMultiEdit;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 5239
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d9
    :goto_d9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    .line 5240
    const/4 v3, 0x0

    .line 5242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v4, v3

    :goto_ef
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_252

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/EditEvent$Attendee;

    .line 5243
    invoke-virtual {v3}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v3

    .line 5244
    if-eqz v3, :cond_6b9

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getDisplay()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b9

    .line 5245
    const/4 v4, 0x1

    move v3, v4

    :goto_10d
    move v4, v3

    .line 5247
    goto :goto_ef

    .line 5103
    :cond_10f
    const-string v2, "availabilityStatus"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_38

    .line 5165
    :cond_11b
    const/4 v2, 0x0

    goto :goto_ba

    .line 5167
    :cond_11d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_14a

    .line 5169
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 5170
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 5171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v2, :cond_138

    .line 5173
    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 5176
    :cond_138
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    goto/16 :goto_bc

    .line 5178
    :cond_14a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v4, "rrule"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_172

    .line 5181
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 5183
    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 5185
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    goto/16 :goto_bc

    .line 5187
    :cond_172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e9

    .line 5191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "beginTime"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_19c

    .line 5193
    const-string v4, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5195
    :cond_19c
    const-string v4, "originalInstanceTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "allDay"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1e5

    const/4 v2, 0x1

    .line 5197
    :goto_1b6
    const-string v3, "originalAllDay"

    if-eqz v2, :cond_1e7

    const/4 v2, 0x1

    :goto_1bb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5198
    const-string v2, "hasAttendeeData"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5200
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 5201
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5202
    const/4 v6, 0x1

    move v7, v2

    .line 5204
    goto/16 :goto_bc

    .line 5196
    :cond_1e5
    const/4 v2, 0x0

    goto :goto_1b6

    .line 5197
    :cond_1e7
    const/4 v2, 0x0

    goto :goto_1bb

    .line 5204
    :cond_1e9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_24b

    .line 5207
    new-instance v2, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v2}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 5210
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 5212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_232

    .line 5216
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5219
    const-string v3, "hasAttendeeData"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5220
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5222
    const/4 v6, 0x1

    move v7, v2

    goto/16 :goto_bc

    .line 5224
    :cond_232
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 5226
    const-string v2, "dtend"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 5228
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24b
    move v7, v3

    goto/16 :goto_bc

    .line 5233
    :cond_24e
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_c1

    .line 5249
    :cond_252
    if-nez v4, :cond_d9

    .line 5250
    const/4 v3, 0x0

    .line 5251
    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 5253
    if-eqz v4, :cond_6b6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6b6

    .line 5254
    new-instance v3, Lcom/android/calendar/EditEvent$Attendee;

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2, v13}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v3

    .line 5256
    :goto_272
    if-eqz v2, :cond_281

    .line 5257
    const/16 v3, 0x1000

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    .line 5258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    .line 5266
    :cond_281
    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    .line 5267
    const/4 v1, 0x1

    goto/16 :goto_19

    .line 5273
    :cond_28a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_292
    :goto_292
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/EditEvent$Attendee;

    .line 5274
    const/4 v3, 0x0

    .line 5276
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v4, v3

    :goto_2a4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2dc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    .line 5277
    invoke-virtual {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 5278
    invoke-virtual {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5279
    if-eqz v14, :cond_2c8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2c8

    iget-object v15, v2, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d8

    :cond_2c8
    if-eqz v3, :cond_6b3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6b3

    iget-object v14, v2, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b3

    .line 5281
    :cond_2d8
    const/4 v4, 0x1

    move v3, v4

    :goto_2da
    move v4, v3

    .line 5283
    goto :goto_2a4

    .line 5285
    :cond_2dc
    if-nez v4, :cond_292

    .line 5286
    iget v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_292

    .line 5288
    iget v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2ec

    .line 5289
    const/4 v3, 0x4

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    goto :goto_292

    .line 5291
    :cond_2ec
    const/16 v3, 0x8

    iput v3, v2, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    goto :goto_292

    .line 5297
    :cond_2f1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_37a

    if-eqz v8, :cond_37a

    .line 5298
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 5299
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    .line 5300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 5303
    if-eqz v2, :cond_30c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_339

    :cond_30c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_339

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_339

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_339

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_339

    .line 5306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5308
    :cond_339
    if-eqz v2, :cond_37a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37a

    .line 5309
    const-string v3, "attendeeEmail"

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5310
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5311
    const-string v2, "attendeeType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5312
    const-string v2, "attendeeStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5314
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 5315
    const-string v3, "event_id"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 5316
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5320
    :cond_37a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-nez v2, :cond_4c7

    .line 5321
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_4c7

    if-nez v8, :cond_38a

    if-eqz v11, :cond_4c7

    .line 5322
    :cond_38a
    if-eqz v11, :cond_3fd

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-wide v3, v2

    .line 5323
    :goto_391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_401

    .line 5325
    :cond_3a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    if-eqz v2, :cond_401

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_401

    .line 5326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_401

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5327
    sget-object v12, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 5328
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    .line 5329
    const/4 v14, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 5330
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/calendar/EditEvent;->ATTENDEES_DELETE_PREFIX:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5332
    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5333
    const/4 v15, 0x1

    aput-object v2, v13, v15

    .line 5334
    const-string v2, ")"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5335
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 5336
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3ba

    .line 5322
    :cond_3fd
    const-wide/16 v2, -0x1

    move-wide v3, v2

    goto :goto_391

    .line 5341
    :cond_401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    .line 5343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->validateEmailAddress()V

    .line 5344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-boolean v2, v2, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    if-eqz v2, :cond_428

    .line 5345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    .line 5346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView;->setFocusToRecipient()V

    .line 5347
    const/4 v1, 0x1

    goto/16 :goto_19

    .line 5349
    :cond_428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v2

    .line 5350
    if-eqz v2, :cond_4c7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4c7

    .line 5351
    const-string v5, "/~/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aget-object v5, v5, v12

    const-string v12, "/,/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 5352
    const-string v5, "/~/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string v5, "/,/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 5353
    const/4 v2, 0x0

    :goto_458
    array-length v5, v12

    if-ge v2, v5, :cond_4c7

    .line 5354
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 5356
    const-string v5, "attendeeName"

    aget-object v14, v12, v2

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5357
    aget-object v5, v13, v2

    if-eqz v5, :cond_470

    .line 5360
    const-string v5, "attendeeEmail"

    aget-object v14, v13, v2

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    :cond_470
    const-string v5, "attendee_contact_id"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5364
    const-string v5, "attendeeRelationship"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5365
    const-string v5, "attendeeType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5366
    const-string v5, "attendeeStatus"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5368
    if-eqz v8, :cond_4b3

    .line 5369
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 5371
    const-string v14, "event_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 5377
    :goto_4a9
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5353
    add-int/lit8 v2, v2, 0x1

    goto :goto_458

    .line 5373
    :cond_4b3
    const-string v5, "event_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5374
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_4a9

    .line 5383
    :cond_4c7
    if-eqz v8, :cond_5e0

    .line 5384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v1, v7, v2, v3, v6}, Lcom/android/calendar/EditEvent;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 5396
    :cond_4d4
    :goto_4d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_610

    .line 5397
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 5398
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5400
    const-string v3, "map"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 5404
    if-nez v8, :cond_5ff

    if-eqz v11, :cond_5ff

    .line 5405
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v5, v2

    .line 5406
    const-string v2, "event_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5414
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5416
    if-eqz v3, :cond_5f3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5f3

    .line 5417
    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 5419
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 5422
    :goto_545
    if-eqz v3, :cond_54a

    .line 5423
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5432
    :cond_54a
    :goto_54a
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5463
    :cond_551
    :goto_551
    const/4 v3, 0x0

    .line 5466
    :try_start_552
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.calendar"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_55b
    .catch Ljava/lang/Exception; {:try_start_552 .. :try_end_55b} :catch_660
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_552 .. :try_end_55b} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_552 .. :try_end_55b} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_552 .. :try_end_55b} :catch_6a5

    move-result-object v1

    .line 5513
    :goto_55c
    if-nez v8, :cond_59c

    :try_start_55e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v2, :cond_59c

    .line 5517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_59c

    .line 5518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "organizer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5519
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 5520
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5521
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "event_id=%d AND attendeeEmail=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v2, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5523
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5527
    :cond_59c
    if-eqz v8, :cond_5b2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v2, :cond_5b2

    if-eqz v1, :cond_5b2

    array-length v2, v1

    if-lez v2, :cond_5b2

    .line 5528
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    .line 5531
    :cond_5b2
    if-eqz v1, :cond_5dd

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_5dd

    .line 5533
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " </GATE-M>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5dd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_55e .. :try_end_5dd} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_55e .. :try_end_5dd} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_55e .. :try_end_5dd} :catch_6a5

    :cond_5dd
    move v1, v9

    .line 5546
    goto/16 :goto_19

    .line 5387
    :cond_5e0
    if-eqz v11, :cond_4d4

    .line 5388
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 5389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_4d4

    .line 5421
    :cond_5f3
    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto/16 :goto_545

    .line 5426
    :cond_5ff
    sget-object v2, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 5427
    const-string v3, "event_id"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_54a

    .line 5438
    :cond_610
    if-nez v8, :cond_551

    if-eqz v11, :cond_551

    .line 5439
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v5, v2

    .line 5446
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->MAP_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5448
    if-eqz v2, :cond_659

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_659

    .line 5449
    sget-object v3, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5451
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 5452
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5454
    :cond_659
    if-eqz v2, :cond_551

    .line 5455
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_551

    .line 5469
    :catch_660
    move-exception v2

    .line 5472
    const-wide/16 v4, 0x32

    :try_start_663
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_666
    .catch Ljava/lang/InterruptedException; {:try_start_663 .. :try_end_666} :catch_688
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_663 .. :try_end_666} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_663 .. :try_end_666} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_663 .. :try_end_666} :catch_6a5

    .line 5481
    :goto_666
    :try_start_666
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_66f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_666 .. :try_end_66f} :catch_69b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_666 .. :try_end_66f} :catch_6a1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_666 .. :try_end_66f} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_666 .. :try_end_66f} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_666 .. :try_end_66f} :catch_6a5

    move-result-object v1

    .line 5494
    :goto_670
    :try_start_670
    throw v2
    :try_end_671
    .catch Ljava/lang/Exception; {:try_start_670 .. :try_end_671} :catch_671
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_670 .. :try_end_671} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_670 .. :try_end_671} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_670 .. :try_end_671} :catch_6a5

    .line 5495
    :catch_671
    move-exception v2

    .line 5497
    :try_start_672
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_675
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_672 .. :try_end_675} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_672 .. :try_end_675} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_672 .. :try_end_675} :catch_6a5

    goto/16 :goto_55c

    .line 5537
    :catch_677
    move-exception v1

    .line 5538
    const v1, 0x7f0a00b8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5539
    const/4 v1, 0x2

    .line 5546
    goto/16 :goto_19

    .line 5473
    :catch_688
    move-exception v4

    .line 5475
    :try_start_689
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_68c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_689 .. :try_end_68c} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_689 .. :try_end_68c} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_689 .. :try_end_68c} :catch_6a5

    goto :goto_666

    .line 5540
    :catch_68d
    move-exception v1

    .line 5541
    const-string v2, "EditEvent"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5542
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v9

    .line 5546
    goto/16 :goto_19

    .line 5484
    :catch_69b
    move-exception v1

    .line 5485
    :try_start_69c
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_69f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_69c .. :try_end_69f} :catch_677
    .catch Landroid/os/RemoteException; {:try_start_69c .. :try_end_69f} :catch_68d
    .catch Landroid/content/OperationApplicationException; {:try_start_69c .. :try_end_69f} :catch_6a5

    move-object v1, v3

    .line 5490
    goto :goto_670

    .line 5488
    :catch_6a1
    move-exception v1

    .line 5489
    const/4 v1, 0x3

    goto/16 :goto_19

    .line 5543
    :catch_6a5
    move-exception v1

    .line 5544
    const-string v2, "EditEvent"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5545
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    move v1, v9

    goto/16 :goto_19

    :cond_6b3
    move v3, v4

    goto/16 :goto_2da

    :cond_6b6
    move-object v2, v3

    goto/16 :goto_272

    :cond_6b9
    move v3, v4

    goto/16 :goto_10d

    :cond_6bc
    move v2, v4

    goto/16 :goto_85
.end method

.method private saveEvent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    .line 2192
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()I

    move-result v0

    .line 2193
    packed-switch v0, :pswitch_data_38

    .line 2215
    :goto_b
    :pswitch_b
    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    .line 2216
    return-void

    .line 2199
    :pswitch_e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 2200
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_b

    .line 2202
    :cond_1b
    const v0, 0x7f0a00fb

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2203
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    goto :goto_b

    .line 2209
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_b

    .line 2212
    :pswitch_2d
    const v0, 0x7f0a00a4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 2193
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .registers 21
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 5635
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5637
    .local v10, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    if-nez p5, :cond_f

    .line 5638
    const/4 v13, 0x0

    .line 5691
    :goto_e
    return v13

    .line 5641
    :cond_f
    const-string v12, "event_id=?"

    .line 5642
    .local v12, where:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v13

    .line 5645
    .local v1, args:[Ljava/lang/String;
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 5646
    .local v2, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2, v12, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 5647
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5649
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 5650
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5653
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_35
    if-ge v4, v6, :cond_53

    .line 5654
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5655
    .local v9, minutes:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_49

    .line 5653
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 5657
    :cond_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 5660
    .end local v9           #minutes:I
    :cond_53
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 5661
    .local v7, min:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5663
    .restart local v9       #minutes:I
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 5664
    const-string v13, "minutes"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5665
    const-string v13, "method"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5666
    const-string v13, "event_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5667
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 5668
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 5671
    .end local v7           #min:Ljava/lang/Integer;
    .end local v9           #minutes:I
    :cond_98
    const/4 v3, 0x0

    .line 5672
    .local v3, hasAlarm:Z
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5673
    .local v8, minute:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_9d

    .line 5674
    const/4 v3, 0x1

    .line 5691
    .end local v8           #minute:I
    :cond_b1
    const/4 v13, 0x1

    goto/16 :goto_e
.end method

.method static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .registers 15
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 5697
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 5699
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    if-nez p4, :cond_f

    .line 5700
    const/4 v8, 0x0

    .line 5730
    :goto_e
    return v8

    .line 5704
    :cond_f
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 5705
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "event_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 5706
    const/4 v8, 0x0

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 5707
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5709
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5711
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5713
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_32
    if-ge v1, v3, :cond_4c

    .line 5714
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5715
    .local v5, minutes:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_44

    .line 5713
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 5717
    :cond_44
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 5720
    .end local v5           #minutes:I
    :cond_4c
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5721
    .local v4, min:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5722
    .restart local v5       #minutes:I
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 5723
    const-string v8, "minutes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5724
    const-string v8, "method"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5725
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 5726
    const-string v8, "event_id"

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 5727
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 5730
    .end local v4           #min:Ljava/lang/Integer;
    .end local v5           #minutes:I
    :cond_8d
    const/4 v8, 0x1

    goto :goto_e
.end method

.method private sendToParticipants()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6633
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6635
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6636
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 6637
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 6641
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 6642
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 6643
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6645
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/calendar/EditEvent;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 6646
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6653
    const-string v3, "text/x-vCalendar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 6654
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6655
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALENDAR_SEND_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6658
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6660
    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    .line 6661
    return-void
.end method

.method private setAlarmCustomize(ILjava/lang/String;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 6520
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6521
    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 6522
    if-nez p1, :cond_35

    .line 6523
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6525
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6553
    :goto_34
    return-void

    .line 6528
    :cond_35
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6529
    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6530
    const v3, 0x7f0a00ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6531
    const v4, 0x7f0a00ac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6532
    const v5, 0x7f0a00ad

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6533
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 6534
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6535
    mul-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6550
    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1, v6}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 6536
    :cond_87
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 6537
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6538
    mul-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_71

    .line 6539
    :cond_a4
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 6540
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit16 v3, p1, 0x5a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6541
    mul-int/lit16 v1, p1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_71

    .line 6542
    :cond_c1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 6543
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I

    mul-int/lit16 v3, p1, 0x2760

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6544
    mul-int/lit16 v1, p1, 0x2760

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_71
.end method

.method private setAllday(Z)V
    .registers 10
    .parameter

    .prologue
    const/16 v6, 0x7f4

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 5000
    if-eqz p1, :cond_69

    .line 5001
    const-string v0, "UTC"

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 5002
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    .line 5003
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_4e

    .line 5004
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 5005
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 5009
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 5010
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 5011
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 5014
    :cond_40
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 5015
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 5018
    :cond_4e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5019
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5020
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5021
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5062
    :goto_62
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateTimezone()V

    .line 5063
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    .line 5064
    return-void

    .line 5023
    :cond_69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 5024
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 5025
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    .line 5026
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_da

    .line 5027
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 5028
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 5029
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_b7

    .line 5030
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/16 v2, 0x3b

    const/16 v3, 0x17

    const/16 v4, 0x1f

    const/16 v5, 0xb

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 5031
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 5033
    :cond_b7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 5034
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 5050
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5051
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5058
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5059
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_62

    .line 5039
    :cond_da
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_c5

    .line 5040
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 5041
    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    .line 5042
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 5043
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_10c

    .line 5044
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 5045
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 5047
    :cond_10c
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 5048
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    goto :goto_c5
.end method

.method private setCalendarData(I)V
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 4809
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_38

    .line 4817
    :cond_19
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "_id=%d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 4821
    :cond_38
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 4823
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 4885
    :cond_54
    :goto_54
    return-void

    .line 4826
    :cond_55
    iput p1, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    .line 4828
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4829
    iput v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    .line 4830
    iget-wide v1, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_6a

    .line 4831
    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/calendar/EditEvent;->mPrevCalendarId:J

    .line 4836
    :cond_6a
    if-eq v0, v10, :cond_110

    .line 4837
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 4838
    invoke-direct {p0, v6}, Lcom/android/calendar/EditEvent;->setLunarEnable(Z)V

    .line 4848
    :goto_78
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4849
    if-nez v0, :cond_84

    .line 4850
    const v0, -0x222223

    .line 4852
    :cond_84
    const v1, -0x44000001

    and-int/2addr v1, v0

    .line 4853
    const v0, 0x7f0f001a

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4854
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 4856
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4857
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/EditEvent;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 4858
    sget-object v1, Lcom/android/calendar/EditEvent;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "googlemail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsGooglemailDomain:Z

    .line 4860
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsGooglemailDomain:Z

    if-eqz v1, :cond_c9

    .line 4861
    const-string v1, "gmail"

    const-string v2, "googlemail"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4863
    :cond_c9
    const-string v1, "My calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 4864
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4865
    :cond_dc
    const v1, 0x7f0f004d

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/EditEvent;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 4867
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isLocalCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    .line 4868
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    .line 4869
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isGoogleCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    .line 4871
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    if-eqz v0, :cond_fd

    .line 4872
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4875
    :cond_fd
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    if-eqz v0, :cond_10b

    .line 4876
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    if-eqz v0, :cond_119

    move v0, v6

    :goto_108
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4883
    :cond_10b
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    goto/16 :goto_54

    .line 4842
    :cond_110
    const-string v0, "local"

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 4844
    invoke-direct {p0, v10}, Lcom/android/calendar/EditEvent;->setLunarEnable(Z)V

    goto/16 :goto_78

    :cond_119
    move v0, v7

    .line 4876
    goto :goto_108
.end method

.method private setDate(Landroid/widget/TextView;JLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4975
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4977
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4978
    if-eqz v1, :cond_2a

    .line 4979
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4980
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4986
    :cond_2a
    :goto_2a
    invoke-static {v0, p2, p3, p4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4988
    return-void

    .line 4981
    :cond_36
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4982
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method private setLocationMap()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 3379
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3385
    .local v7, id:I
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->MAP_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EditEvent;->LOCATIONMAP_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3386
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3387
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3389
    .local v8, raw:[B
    array-length v0, v8

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 3390
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3391
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3394
    const/4 v0, 0x1

    .line 3397
    .end local v8           #raw:[B
    :goto_4b
    return v0

    .line 3395
    :cond_4c
    if-eqz v6, :cond_51

    .line 3396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    move v0, v9

    .line 3397
    goto :goto_4b
.end method

.method private setLunarEnable(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 658
    return-void
.end method

.method private setParticipantsSchedule()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 7090
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 7091
    :cond_d
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->showErrorMessage()V

    .line 7110
    :goto_10
    return-void

    .line 7096
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v1

    .line 7098
    .local v1, recipients:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7099
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 7100
    const-string v2, "owner_account"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7101
    const-string v2, "recipients"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7102
    const-string v2, "timezone"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7103
    const-string v2, "start_time"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7104
    const-string v2, "end_time"

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7105
    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    goto :goto_10
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "id"
    .parameter "text"

    .prologue
    .line 5067
    invoke-virtual {p0, p1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5068
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 5071
    :goto_8
    return-void

    .line 5070
    :cond_9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setTime(Landroid/widget/TextView;JLjava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "millis"
    .parameter "timezone"

    .prologue
    .line 4991
    const/16 v0, 0x201

    .line 4992
    .local v0, flags:I
    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4993
    or-int/lit16 v0, v0, 0x80

    .line 4995
    :cond_a
    invoke-static {p0, p2, p3, v0, p4}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4996
    .local v1, timeStr:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4997
    return-void
.end method

.method private setTimezone(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 4487
    if-ltz p1, :cond_a

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-le p1, v1, :cond_b

    .line 4494
    :cond_a
    :goto_a
    return-void

    .line 4490
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 4491
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4492
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 4493
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->setVariableTimezone()V

    goto :goto_a
.end method

.method private setVariableTimezone()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4476
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4477
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4478
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4479
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4480
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4481
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4482
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4483
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4484
    return-void
.end method

.method private showAllTimezone(Landroid/widget/ListView;)V
    .registers 6
    .parameter "listView"

    .prologue
    .line 4626
    move-object v0, p1

    .line 4628
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 4629
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->showAllTimezones()V

    .line 4630
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    .line 4632
    .local v1, row:I
    new-instance v2, Lcom/android/calendar/EditEvent$72;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/calendar/EditEvent$72;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4638
    return-void
.end method

.method private showTimezoneDialog()V
    .registers 7

    .prologue
    .line 1015
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1059
    :cond_c
    :goto_c
    return-void

    .line 1017
    :cond_d
    new-instance v3, Lcom/android/calendar/TimezoneAdapter;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 1018
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v2

    .line 1019
    .local v2, row:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_76

    move v0, v2

    .line 1020
    .local v0, index:I
    :goto_22
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00cd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    new-instance v5, Lcom/android/calendar/EditEvent$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/EditEvent$3;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0077

    new-instance v5, Lcom/android/calendar/EditEvent$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/EditEvent$2;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 1039
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1040
    .local v1, lv:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/calendar/EditEvent$4;

    invoke-direct {v4, p0, v1}, Lcom/android/calendar/EditEvent$4;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1046
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/calendar/EditEvent$5;

    invoke-direct {v4, p0, v1}, Lcom/android/calendar/EditEvent$5;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1057
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1058
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    .line 1019
    .end local v0           #index:I
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_76
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private updateHomeTime()V
    .registers 16

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    .line 4554
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 4555
    const/4 v6, 0x1

    .line 4556
    invoke-static {p0}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    .line 4557
    if-eqz v11, :cond_1f

    .line 4558
    const/16 v6, 0x81

    .line 4560
    :cond_1f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 4561
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 4563
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_d8

    const/4 v0, 0x1

    move v8, v0

    .line 4564
    :goto_35
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_dc

    const/4 v0, 0x1

    move v9, v0

    .line 4567
    :goto_3d
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v8, v1, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 4569
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4571
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4572
    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object v0, p0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4574
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4578
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4579
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4585
    if-eq v9, v8, :cond_fd

    .line 4586
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 4589
    :goto_8a
    const/4 v6, 0x1

    .line 4590
    if-eqz v11, :cond_8f

    .line 4591
    const/16 v6, 0x81

    .line 4595
    :cond_8f
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4596
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4597
    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object v0, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v7}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4604
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4605
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    invoke-direct {p0, v0, v12, v13, v7}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 4610
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4611
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4612
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4613
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4620
    :goto_d7
    return-void

    .line 4563
    :cond_d8
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_35

    .line 4564
    :cond_dc
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_3d

    .line 4615
    :cond_e0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4616
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4617
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4618
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d7

    :cond_fd
    move-object v8, v10

    goto :goto_8a
.end method

.method private updateRecurrenceRule(Landroid/text/format/Time;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 5820
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 5822
    if-nez v0, :cond_d

    .line 5823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 5984
    :goto_c
    return-void

    .line 5825
    :cond_d
    const/16 v2, 0x8

    if-ne v0, v2, :cond_a0

    .line 5829
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 5830
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 5930
    :cond_1c
    :goto_1c
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-eqz v0, :cond_8c

    .line 5931
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSetLunarCalendar:Z

    if-nez v0, :cond_59

    .line 5932
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v6, :cond_1dd

    .line 5933
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 5934
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    packed-switch v0, :pswitch_data_20e

    .line 5951
    :goto_36
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_59

    .line 5952
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0x7f4

    iput v2, v0, Landroid/text/format/Time;->year:I

    .line 5953
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0xb

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 5954
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v2, 0x1f

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 5955
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 5962
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 5963
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 5964
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 5965
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 5966
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iput-boolean v6, v0, Landroid/text/format/Time;->allDay:Z

    .line 5967
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const-string v2, "UTC"

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 5968
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 5969
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    if-nez v0, :cond_8a

    .line 5970
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 5978
    :cond_8a
    :goto_8a
    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    .line 5982
    :cond_8c
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    invoke-static {v1}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v1

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 5983
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto/16 :goto_c

    .line 5831
    :cond_a0
    if-ne v0, v6, :cond_a9

    .line 5832
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    goto/16 :goto_1c

    .line 5833
    :cond_a9
    if-ne v0, v4, :cond_e8

    .line 5834
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5836
    new-array v2, v5, [I

    .line 5837
    new-array v3, v5, [I

    .line 5846
    const/high16 v0, 0x2

    aput v0, v2, v1

    .line 5847
    const/high16 v0, 0x4

    aput v0, v2, v6

    .line 5848
    const/high16 v0, 0x8

    aput v0, v2, v4

    .line 5849
    const/high16 v0, 0x10

    aput v0, v2, v7

    .line 5850
    const/4 v0, 0x4

    const/high16 v4, 0x20

    aput v4, v2, v0

    move v0, v1

    .line 5853
    :goto_c9
    if-ge v0, v5, :cond_d0

    .line 5854
    aput v1, v3, v0

    .line 5853
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 5857
    :cond_d0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 5858
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 5859
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5860
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5861
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1c

    .line 5862
    :cond_e8
    if-ne v0, v7, :cond_114

    .line 5863
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5864
    new-array v0, v6, [I

    .line 5866
    new-array v2, v6, [I

    .line 5868
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v0, v1

    .line 5870
    aput v1, v2, v1

    .line 5872
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v3, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 5873
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 5874
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5875
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5876
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1c

    .line 5877
    :cond_114
    const/4 v2, 0x4

    if-ne v0, v2, :cond_13b

    .line 5878
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v5, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5879
    new-array v0, v6, [I

    .line 5881
    new-array v2, v6, [I

    .line 5883
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v0, v1

    .line 5885
    aput v1, v2, v1

    .line 5887
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v3, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 5888
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 5889
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5890
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v4, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    goto/16 :goto_1c

    .line 5891
    :cond_13b
    const/4 v2, 0x6

    if-ne v0, v2, :cond_157

    .line 5892
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x6

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5893
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5894
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 5895
    new-array v0, v6, [I

    .line 5896
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    aput v2, v0, v1

    .line 5897
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1c

    .line 5898
    :cond_157
    if-ne v0, v5, :cond_189

    .line 5899
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x6

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5900
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5901
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 5903
    new-array v2, v6, [I

    .line 5904
    new-array v3, v6, [I

    .line 5906
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    .line 5907
    if-ne v0, v5, :cond_175

    .line 5908
    const/4 v0, -0x1

    .line 5910
    :cond_175
    aput v0, v3, v1

    .line 5911
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v0}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v0

    aput v0, v2, v1

    .line 5912
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 5913
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1c

    .line 5914
    :cond_189
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1c

    .line 5915
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x7

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5917
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v1, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 5918
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 5919
    new-array v0, v6, [I

    .line 5920
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    aput v2, v0, v1

    .line 5921
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    .line 5922
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 5923
    new-array v0, v6, [I

    .line 5926
    iget v2, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 5927
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    goto/16 :goto_1c

    .line 5936
    :pswitch_1b5
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_36

    .line 5941
    :pswitch_1bf
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_36

    .line 5945
    :pswitch_1c9
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_36

    .line 5948
    :pswitch_1d3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x32

    iput v2, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_36

    .line 5957
    :cond_1dd
    iget v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    if-ne v0, v7, :cond_59

    .line 5958
    iput-boolean v6, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    .line 5959
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    iput v2, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    goto/16 :goto_59

    .line 5972
    :cond_1eb
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 5973
    const-string v2, "UTC"

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 5974
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 5975
    iget-boolean v2, p0, Lcom/android/calendar/EditEvent;->mHasRepeatCount:Z

    if-nez v2, :cond_8a

    .line 5976
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    goto/16 :goto_8a

    .line 5934
    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_1b5
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1c9
        :pswitch_1c9
        :pswitch_1d3
    .end packed-switch
.end method


# virtual methods
.method public contactAdd()V
    .registers 6

    .prologue
    .line 7137
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z

    move-result v0

    .line 7138
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getExchangeCal()Ljava/lang/String;

    move-result-object v1

    .line 7140
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7141
    const-string v3, "additional"

    const-string v4, "email-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7142
    const-string v3, "app"

    const-string v4, "calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7143
    if-eqz v0, :cond_24

    .line 7144
    const-string v0, "account"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7146
    :cond_24
    const/16 v0, 0xc8

    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7147
    return-void
.end method

.method public makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6664
    .line 6666
    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6668
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v2

    .line 6669
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    .line 6688
    :cond_12
    :goto_12
    return-object v0

    .line 6674
    :cond_13
    const-string v2, "Invite.vcs"

    .line 6675
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 6678
    :try_start_1d
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6679
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/EditEvent;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 6680
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 6681
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 6682
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_12

    .line 6683
    :catch_36
    move-exception v1

    goto :goto_12
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 6183
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 6185
    if-eq p2, v10, :cond_19

    .line 6186
    sparse-switch p1, :sswitch_data_2b8

    .line 6517
    :cond_c
    :goto_c
    return-void

    .line 6189
    :sswitch_d
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_c

    .line 6194
    :sswitch_13
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto :goto_c

    .line 6200
    :cond_19
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6207
    sparse-switch p1, :sswitch_data_2ce

    goto :goto_c

    .line 6210
    :sswitch_26
    const-string v0, "latitude"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    .line 6211
    const-string v0, "longitude"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    .line 6212
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6213
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6214
    const-string v0, "map"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 6215
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 6216
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6217
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c

    .line 6222
    :sswitch_5c
    if-eqz p3, :cond_c

    .line 6226
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6227
    const-string v1, "datatype"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6228
    const-string v1, "mode"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6231
    if-eqz v0, :cond_c

    .line 6232
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v7

    :cond_7b
    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6234
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 6235
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 6236
    const-string v8, ""

    .line 6237
    if-eq v2, v3, :cond_ae

    .line 6238
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6246
    :goto_9d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 6248
    const/16 v3, 0x1e

    if-le v1, v3, :cond_bb

    .line 6275
    :cond_a7
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->setFocusToRecipient()V

    goto/16 :goto_c

    .line 6240
    :cond_ae
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9d

    .line 6253
    :cond_bb
    if-eqz v5, :cond_e5

    const-string v3, "onlineSearch"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 6254
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6264
    :goto_cf
    sget-object v3, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_ff

    move-object v3, v2

    .line 6271
    :goto_dc
    iget-object v8, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v8, v0, v2, v3, v7}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 6272
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 6274
    goto :goto_7b

    .line 6255
    :cond_e5
    if-eqz v4, :cond_fa

    const-string v3, "recent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 6256
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    .line 6258
    :cond_fa
    invoke-static {v2}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    .line 6268
    :cond_ff
    invoke-static {p0, v0}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_dc

    .line 6380
    :sswitch_104
    const-string v1, "EVENT_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6381
    const-wide/16 v8, -0x1

    cmp-long v1, v2, v8

    if-nez v1, :cond_119

    .line 6382
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_c

    .line 6385
    :cond_119
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 6386
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 6389
    sget-object v2, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=? AND (attendeeRelationship<>2 or attendeeRelationship is null)"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6391
    if-nez v7, :cond_134

    .line 6392
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_c

    .line 6396
    :cond_134
    :try_start_134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6398
    :cond_137
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6399
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6402
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 6405
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getAttendeesCount()I

    move-result v0

    .line 6406
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1d7

    .line 6407
    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 6409
    if-eqz v0, :cond_173

    .line 6410
    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    .line 6413
    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->addAttendee(Lcom/android/calendar/EditEvent$Attendee;)Ljava/lang/String;

    move-result-object v0

    .line 6414
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_173

    .line 6415
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6416
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6426
    :cond_173
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_137

    .line 6428
    :goto_179
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v1}, Lcom/android/calendar/EnterActionMultiEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6430
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6431
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1b7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1b7

    .line 6433
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6435
    :cond_1b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6437
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1cd

    .line 6438
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/EnterActionMultiEdit;->setText(Ljava/lang/CharSequence;)V
    :try_end_1cd
    .catchall {:try_start_134 .. :try_end_1cd} :catchall_1e3

    .line 6441
    :cond_1cd
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6443
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    goto/16 :goto_c

    .line 6420
    :cond_1d7
    const v0, 0x7f0a00b1

    const/4 v1, 0x0

    :try_start_1db
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_1e3

    goto :goto_179

    .line 6441
    :catchall_1e3
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6453
    :sswitch_1e8
    const-string v0, "_id"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6455
    if-eq v0, v10, :cond_223

    .line 6456
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_1ff

    .line 6457
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v2, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6458
    :cond_1ff
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "_id=%d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6465
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 6468
    invoke-direct {p0, v7}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    goto/16 :goto_c

    .line 6470
    :cond_223
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 6472
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/calendar/EditEvent;->mCalendarPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_c

    .line 6477
    :sswitch_240
    const-string v0, "deleteAlarmIndices"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 6478
    if-eqz v6, :cond_c

    .line 6480
    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6481
    array-length v8, v6

    .line 6482
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_25d

    .line 6483
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateReminder()V

    .line 6485
    :cond_25d
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 6487
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v4, v7

    .line 6488
    :goto_26e
    if-ge v4, v8, :cond_28a

    .line 6489
    aget v9, v6, v4

    .line 6491
    if-ne v9, v10, :cond_278

    .line 6488
    :goto_274
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_26e

    .line 6493
    :cond_278
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 6494
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6495
    invoke-virtual {v1, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6496
    invoke-virtual {v2, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_274

    .line 6498
    :cond_28a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6499
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6503
    :goto_294
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 6504
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6505
    if-eqz v0, :cond_2a7

    .line 6506
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6508
    :cond_2a7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6509
    if-eqz v0, :cond_2b4

    .line 6510
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6503
    :cond_2b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_294

    .line 6186
    nop

    :sswitch_data_2b8
    .sparse-switch
        0x64 -> :sswitch_d
        0x65 -> :sswitch_d
        0xc8 -> :sswitch_13
        0xc9 -> :sswitch_13
        0xca -> :sswitch_13
    .end sparse-switch

    .line 6207
    :sswitch_data_2ce
    .sparse-switch
        0x64 -> :sswitch_26
        0x65 -> :sswitch_26
        0xc8 -> :sswitch_5c
        0xc9 -> :sswitch_5c
        0xca -> :sswitch_104
        0x190 -> :sswitch_1e8
        0x1f4 -> :sswitch_240
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4228
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    .line 4232
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4250
    :cond_e
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()I

    move-result v0

    .line 4251
    packed-switch v0, :pswitch_data_44

    .line 4275
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 4276
    :goto_18
    :pswitch_18
    return-void

    .line 4257
    :pswitch_19
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMessageAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 4258
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_15

    .line 4260
    :cond_26
    const v0, 0x7f0a00fb

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4261
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->finishWithResult()V

    goto :goto_15

    .line 4267
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_18

    .line 4270
    :pswitch_38
    const v0, 0x7f0a00a4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 4251
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 2261
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_7

    .line 2266
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 2268
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_22

    .line 2225
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    .line 2226
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaving:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2248
    :cond_11
    :goto_11
    return-void

    .line 2232
    :cond_12
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isOverlap()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2233
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_11

    .line 2235
    :cond_1e
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->saveEvent()V

    goto :goto_11

    .line 2240
    :cond_22
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_11

    .line 2241
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->hideSoftInput()V

    .line 2242
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 3712
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3720
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 3721
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3727
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 3728
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->dismissDropDown()V

    .line 3731
    :cond_21
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3735
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    .line 3737
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    .line 3738
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3741
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAlarmCustomizeDialog:Landroid/app/Dialog;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3742
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3748
    :cond_59
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3751
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;

    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3752
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3756
    :cond_7f
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 4067
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 4076
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4073
    :pswitch_c
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->procToButtonMenu(I)V

    goto :goto_7

    .line 4067
    :pswitch_data_16
    .packed-switch 0x7f0f00d5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter

    .prologue
    .line 2416
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2418
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    .line 2419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    .line 2423
    if-nez p1, :cond_62

    sget-boolean v2, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v2, :cond_62

    .line 2424
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 2425
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2427
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 2429
    array-length v2, v2

    array-length v3, v3

    add-int/2addr v2, v3

    array-length v3, v4

    add-int/2addr v2, v3

    .line 2431
    if-nez v2, :cond_62

    .line 2438
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2439
    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2440
    const-string v3, "authorities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.calendar"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    .line 2446
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    .line 2447
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->requestWindowFeature(I)Z

    .line 3268
    :cond_61
    :goto_61
    return-void

    .line 2453
    :cond_62
    const v2, 0x7f030017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setContentView(I)V

    .line 2454
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAccountManager:Landroid/accounts/AccountManager;

    .line 2484
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "hasAlarm"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "_sync_id"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "availability"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "accessLevel"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ownerAccount"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "hasAttendeeData"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "longitude"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "contactEventType"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "availabilityStatus"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 2509
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 2511
    const/4 v9, 0x0

    .line 2513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    .line 2515
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 2516
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    .line 2520
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    .line 2521
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 2535
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 2536
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_79f

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_161

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_166

    .line 2549
    :cond_161
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto/16 :goto_61

    .line 2552
    :cond_166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setTitle(Ljava/lang/CharSequence;)V

    .line 2558
    :goto_17f
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2561
    const v2, 0x7f0f0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    .line 2562
    const v2, 0x7f0f002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    .line 2563
    const v2, 0x7f0f0062

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    .line 2564
    const v2, 0x7f0f003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    .line 2565
    const v2, 0x7f0f0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    .line 2566
    const v2, 0x7f0f003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    .line 2567
    const v2, 0x7f0f0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    .line 2568
    const v2, 0x7f0f004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckText:Landroid/view/View;

    .line 2569
    const v2, 0x7f0f004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 2570
    const v2, 0x7f0f004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    .line 2571
    const v2, 0x7f0f005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mParticipantsContactButton:Landroid/widget/ImageButton;

    .line 2575
    const v2, 0x7f0f0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationSearchButton:Landroid/widget/ImageButton;

    .line 2576
    const v2, 0x7f0f0055

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    .line 2577
    const v2, 0x7f0f0056

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    .line 2578
    const v2, 0x7f0f0057

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mMapDeleteButton:Landroid/widget/ImageView;

    .line 2579
    const v2, 0x7f0f005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    .line 2580
    const v2, 0x7f0f005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatTypeTextView:Landroid/widget/TextView;

    .line 2581
    const v2, 0x7f0f0063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    .line 2582
    const v2, 0x7f0f0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPresenceContainer:Landroid/view/View;

    .line 2583
    const v2, 0x7f0f0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrivacyContainer:Landroid/view/View;

    .line 2584
    const v2, 0x7f0f0066

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    .line 2585
    const v2, 0x7f0f0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    .line 2586
    const v2, 0x7f0f0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    .line 2587
    const v2, 0x7f0f0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneSeperator:Landroid/view/View;

    .line 2588
    const v2, 0x7f0f0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneContainer:Landroid/widget/LinearLayout;

    .line 2589
    const v2, 0x7f0f0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    .line 2590
    const v2, 0x7f0f003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    .line 2591
    const v2, 0x7f0f0045

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    .line 2592
    const v2, 0x7f0f0044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    .line 2593
    const v2, 0x7f030034

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    .line 2594
    const v2, 0x7f0f0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    .line 2596
    new-instance v3, Lcom/android/calendar/ComposeHeaderView;

    const v2, 0x7f0f0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 2600
    const v2, 0x7f0f004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatusContainer:Landroid/view/View;

    .line 2601
    const v2, 0x7f0f004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatus:Landroid/view/View;

    .line 2602
    const v2, 0x7f0f0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    .line 2603
    const v2, 0x7f0f0028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    .line 2605
    const-string v2, "beginTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 2606
    const-string v2, "endTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 2608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStatus:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$56;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$56;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/calendar/EditEvent$57;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$57;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_7e9

    .line 2632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7b1

    const/4 v2, 0x1

    :goto_3db
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7b4

    const/4 v2, 0x1

    move v8, v2

    .line 2635
    :goto_3ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    .line 2637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xe

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 2638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 2639
    if-nez v8, :cond_7de

    .line 2642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7b8

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 2657
    :goto_438
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "beginTime"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "endTime"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2660
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v7, "allDay"

    if-eqz v8, :cond_7e6

    const/4 v2, 0x1

    :goto_464
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v6, "rrule"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "calendar_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "eventLocation"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "latitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v7, 0x10

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v7, 0x11

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "contactEventType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "organizer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2673
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2679
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2680
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_52b

    if-eqz v2, :cond_52b

    .line 2683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2685
    :cond_52b
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->setLocationMap()Z

    .line 2687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2689
    if-eqz v2, :cond_553

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2691
    :cond_553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2693
    if-eqz v3, :cond_56b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_56b

    .line 2694
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2696
    :cond_56b
    if-eqz v4, :cond_57a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_57a

    .line 2697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2699
    :cond_57a
    if-eqz v2, :cond_589

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_589

    .line 2700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2704
    :cond_589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mAvailability:I

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    .line 2710
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    if-lez v2, :cond_5c3

    .line 2713
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    :cond_5c3
    move v10, v9

    move v9, v8

    .line 2801
    :goto_5c5
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_939

    .line 2802
    if-eqz v9, :cond_926

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 2808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2822
    :goto_5e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_611

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7f4

    if-le v2, v3, :cond_970

    .line 2824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0x1f

    const/16 v7, 0xb

    const/16 v8, 0x7f4

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 2828
    :goto_609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2831
    :cond_611
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mIsLeapMonth:Z

    .line 2840
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-eqz v2, :cond_995

    .line 2841
    if-eqz v9, :cond_981

    .line 2842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2856
    :goto_636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_64b

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2859
    :cond_64b
    new-instance v2, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    .line 2860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v3, 0x7f4

    iput v3, v2, Landroid/text/format/Time;->year:I

    .line 2861
    new-instance v2, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    .line 2863
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$58;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$58;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mLocationSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$59;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$59;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mMapDeleteButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/calendar/EditEvent$60;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$60;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mParticipantsContactButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$61;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$61;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$62;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$62;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mReminderAddButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/calendar/EditEvent$63;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$63;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3010
    new-instance v2, Lcom/android/calendar/EmailAddressAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    .line 3012
    const v2, 0x7f0f0059

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->initMultiAutoCompleteTextView(I)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    .line 3013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    new-instance v3, Lcom/android/calendar/EditEvent$64;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$64;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/EnterActionMultiEdit;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3031
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v2, :cond_9ab

    .line 3085
    :goto_6f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/calendar/EditEvent$65;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$65;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckText:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$66;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$66;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3098
    const v2, 0x7f0f00c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    .line 3099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 3100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3102
    const v2, 0x7f0f00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    .line 3103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    const v3, 0x7f0a0087

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->getToRecipientLayout()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$67;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$67;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3118
    const v2, 0x7f0f002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 3119
    new-instance v3, Lcom/android/calendar/EditEvent$68;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$68;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3127
    const v2, 0x7f070001

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3128
    array-length v4, v3

    .line 3129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3130
    const/4 v2, 0x0

    :goto_78d
    if-ge v2, v4, :cond_9b6

    .line 3131
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3130
    add-int/lit8 v2, v2, 0x1

    goto :goto_78d

    .line 2555
    :cond_79f
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_17f

    .line 2633
    :cond_7b1
    const/4 v2, 0x0

    goto/16 :goto_3db

    .line 2634
    :cond_7b4
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3ec

    .line 2646
    :cond_7b8
    new-instance v2, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v2, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    .line 2647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/16 v6, 0x7f4

    iput v6, v2, Landroid/text/format/Time;->year:I

    .line 2648
    new-instance v2, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v2, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    .line 2651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setAllday(Z)V

    goto/16 :goto_438

    .line 2654
    :cond_7de
    const-string v2, "UTC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    goto/16 :goto_438

    .line 2660
    :cond_7e6
    const/4 v2, 0x0

    goto/16 :goto_464

    .line 2717
    :cond_7e9
    const/4 v11, 0x1

    .line 2718
    const-string v2, "allDay"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 2726
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2728
    const-string v2, "account_name"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2730
    if-eqz v2, :cond_84c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_84c

    .line 2731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type=\'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.seven.Z7.work"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2739
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2741
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_5c5

    .line 2744
    :cond_84c
    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    if-eqz v2, :cond_890

    sget-object v2, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_890

    sget-object v2, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    if-eqz v2, :cond_890

    sget-object v2, Lcom/android/calendar/Utils;->sTaskId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getTaskId()I

    move-result v4

    if-ne v2, v4, :cond_890

    .line 2746
    const-string v2, "account_name=\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/calendar/Utils;->sMySingle:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2752
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2753
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_5c5

    .line 2755
    :cond_890
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2756
    const-string v4, "preference_default_calendar_sync_account"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2758
    const-string v5, "preference_default_calendar_owner_account"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2760
    const-string v6, "preference_default_calendar_sync_account_type"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2763
    if-nez v4, :cond_8c7

    .line 2764
    const-string v7, "account_type=\'com.google\' AND calendar_access_level>=500 AND sync_events=1"

    .line 2767
    new-instance v2, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V

    .line 2769
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    move v10, v11

    .line 2772
    goto/16 :goto_5c5

    .line 2773
    :cond_8c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name=\'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ownerAccount=\'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2786
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2787
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    move v9, v10

    move v10, v11

    goto/16 :goto_5c5

    .line 2810
    :cond_926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v13, v14}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_5e4

    .line 2814
    :cond_939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 2817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 2818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 2819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto/16 :goto_5e4

    .line 2826
    :cond_970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x76e

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    goto/16 :goto_609

    .line 2849
    :cond_981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_636

    .line 2853
    :cond_995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_636

    .line 3082
    :cond_9ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/calendar/ComposeHeaderView;->setVisibility(I)V

    goto/16 :goto_6f1

    .line 3133
    :cond_9b6
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    .line 3134
    const/high16 v2, 0x7f07

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3135
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    .line 3138
    const v2, 0x7f070022

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3139
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mStatusLabels:Ljava/util/ArrayList;

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_a45

    const-wide/16 v2, -0x1

    move-wide v8, v2

    .line 3148
    :goto_9ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_a50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a50

    const/4 v3, 0x1

    .line 3153
    :goto_a00
    if-eqz v3, :cond_a55

    .line 3154
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 3155
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "event_id=%d AND (method=1 OR method=0)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3156
    sget-object v4, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3159
    :goto_a1e
    :try_start_a1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a52

    .line 3160
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 3161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a3f
    .catchall {:try_start_a1e .. :try_end_a3f} :catchall_a40

    goto :goto_a1e

    .line 3165
    :catchall_a40
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3147
    :cond_a45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_9ea

    .line 3151
    :cond_a50
    const/4 v3, 0x0

    goto :goto_a00

    .line 3165
    :cond_a52
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3171
    :cond_a55
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v3, :cond_aa7

    const-wide/16 v3, -0x1

    cmp-long v3, v8, v3

    if-eqz v3, :cond_aa7

    .line 3172
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 3173
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    .line 3176
    sget-object v4, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=? AND (attendeeRelationship<>2 or attendeeRelationship is null)"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3182
    :cond_a76
    :goto_a76
    :try_start_a76
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a9d

    .line 3183
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3184
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3187
    const/4 v2, 0x0

    .line 3188
    if-eqz v3, :cond_a8a

    move-object v2, v3

    .line 3194
    :cond_a8a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a76

    .line 3196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/calendar/ComposeHeaderView;->addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a97
    .catchall {:try_start_a76 .. :try_end_a97} :catchall_a98

    goto :goto_a76

    .line 3206
    :catchall_a98
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3199
    :cond_a9d
    :try_start_a9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/ComposeHeaderView;->addRecipientQuicklyDone()V
    :try_end_aa4
    .catchall {:try_start_a9d .. :try_end_aa4} :catchall_a98

    .line 3206
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3210
    :cond_aa7
    const v2, 0x7f070006

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3211
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 3212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mPresenceContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$69;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$69;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3219
    const v2, 0x7f070007

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3220
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    .line 3221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mPrivacyContainer:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/EditEvent$70;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EditEvent$70;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_b20

    .line 3231
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/EditEvent;->initFromIntent(Landroid/content/Intent;)V

    .line 3234
    :cond_b20
    if-eqz p1, :cond_b3a

    .line 3235
    const-string v2, "mNewEventDialogChecked"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    .line 3236
    const-string v2, "mGoogleEventDialogChecked"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    .line 3239
    :cond_b3a
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3240
    const-string v3, "preferences_confirm_new_event"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 3241
    const-string v3, "preferences_confirm_new_event_google"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3243
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 3244
    if-eqz v10, :cond_b5a

    array-length v4, v3

    if-eqz v4, :cond_b5a

    .line 3260
    :cond_b5a
    if-nez v2, :cond_61

    if-eqz v10, :cond_61

    array-length v2, v3

    if-nez v2, :cond_61

    .line 3261
    const/16 v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto/16 :goto_61
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4085
    invoke-interface {p1}, Landroid/view/ContextMenu;->close()V

    .line 4087
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4089
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 4092
    instance-of v1, p2, Lcom/android/calendar/ComposeHeaderView$ToButton;

    if-eqz v1, :cond_7f

    .line 4094
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 4095
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v1, :cond_1f

    .line 4097
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView;->clearFocusAllBtn()V

    .line 4101
    :cond_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4104
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 4106
    const/high16 v2, 0x7f0e

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4107
    const/4 v0, 0x0

    .line 4110
    if-eqz v1, :cond_6c

    array-length v2, v1

    if-le v2, v5, :cond_6c

    aget-object v2, v1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    aget-object v2, v1, v5

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 4114
    const-string v0, "%s (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    aget-object v3, v1, v6

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4117
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/android/calendar/Utils;->isExistsInContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4118
    const v2, 0x7f0f00d7

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 4127
    :cond_6c
    const v2, 0x7f0f00d8

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 4130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 4133
    if-eqz v1, :cond_7c

    .line 4134
    aget-object v0, v1, v6

    .line 4136
    :cond_7c
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4140
    :cond_7f
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter

    .prologue
    const v4, 0x7f0a0077

    const v3, 0x7f030031

    const v6, 0x7f0a0076

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1147
    packed-switch p1, :pswitch_data_3ba

    move-object v0, v1

    .line 1592
    :goto_f
    return-object v0

    .line 1149
    :pswitch_10
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1151
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1152
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2e

    .line 1153
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1155
    :cond_2e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$8;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$8;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$7;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    .line 1184
    :pswitch_51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0080

    new-instance v2, Lcom/android/calendar/EditEvent$10;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$10;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0081

    new-instance v2, Lcom/android/calendar/EditEvent$9;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$9;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    .line 1202
    :pswitch_81
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createRepeatUntilDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_f

    .line 1205
    :pswitch_86
    const/4 v1, 0x0

    .line 1207
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_bc

    .line 1208
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1213
    :goto_8d
    add-int/lit8 v2, v1, 0x1

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/calendar/EditEvent$12;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$12;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/EditEvent$11;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$11;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1210
    :cond_bc
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1211
    const v3, 0x7f0a0067

    invoke-virtual {p0, v3}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_8d

    .line 1239
    :pswitch_ca
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$13;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$13;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1250
    :pswitch_f3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$14;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1262
    :pswitch_11c
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1264
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    new-instance v3, Lcom/android/calendar/EditEvent$16;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$16;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$15;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$15;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1283
    :pswitch_149
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    new-instance v3, Lcom/android/calendar/EditEvent$18;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$18;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$17;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$17;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1304
    :pswitch_176
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createAlarmCustomizeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1307
    :pswitch_17c
    new-instance v5, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1332
    iget v0, v5, Landroid/text/format/Time;->year:I

    const/16 v1, 0x7f4

    if-le v0, v1, :cond_1a0

    .line 1333
    const/16 v0, 0x7f4

    iput v0, v5, Landroid/text/format/Time;->year:I

    .line 1334
    const/16 v0, 0xb

    iput v0, v5, Landroid/text/format/Time;->month:I

    .line 1335
    const/16 v0, 0x1f

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1337
    :cond_1a0
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/EditEvent$RepeatDateListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$RepeatDateListener;-><init>(Lcom/android/calendar/EditEvent;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    .line 1339
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    check-cast v0, Landroid/app/DatePickerDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$19;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$19;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1347
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$20;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$20;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1353
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/EditEvent$21;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$21;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1362
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    goto/16 :goto_f

    .line 1368
    :pswitch_1e3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDatePicker:Landroid/app/Dialog;

    goto/16 :goto_f

    .line 1373
    :pswitch_1e7
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1380
    :pswitch_1ed
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    if-nez v0, :cond_1fd

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_200

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_200

    :cond_1fd
    move-object v0, v1

    .line 1381
    goto/16 :goto_f

    .line 1383
    :cond_200
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1384
    const v2, 0x7f030019

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1386
    const v1, 0x7f0f006e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1387
    new-instance v2, Lcom/android/calendar/EditEvent$22;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$22;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$24;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$24;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$23;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$23;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    .line 1427
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    goto/16 :goto_f

    .line 1430
    :pswitch_255
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1431
    const v2, 0x7f030018

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1433
    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1434
    new-instance v2, Lcom/android/calendar/EditEvent$25;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$25;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/EditEvent$26;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/EditEvent$26;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1462
    :pswitch_29d
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    if-nez v0, :cond_2ad

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2b0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b0

    :cond_2ad
    move-object v0, v1

    .line 1463
    goto/16 :goto_f

    .line 1465
    :cond_2b0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1466
    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1468
    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1470
    const v2, 0x7f0f0074

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1472
    const v3, 0x7f0f0072

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1474
    const v4, 0x7f0f0075

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1477
    new-instance v5, Lcom/android/calendar/EditEvent$27;

    invoke-direct {v5, p0, v3}, Lcom/android/calendar/EditEvent$27;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    new-instance v1, Lcom/android/calendar/EditEvent$28;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/EditEvent$28;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0100

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$30;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$30;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$29;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/calendar/EditEvent$29;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    .line 1527
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    goto/16 :goto_f

    .line 1531
    :pswitch_328
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStatusLabels:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1533
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    new-instance v3, Lcom/android/calendar/EditEvent$32;

    invoke-direct {v3, p0}, Lcom/android/calendar/EditEvent$32;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/EditEvent$31;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$31;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1566
    :pswitch_355
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1569
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 1570
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/calendar/EditEvent$35;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$35;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0080

    new-instance v2, Lcom/android/calendar/EditEvent$34;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$34;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0081

    new-instance v2, Lcom/android/calendar/EditEvent$33;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$33;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1147
    nop

    :pswitch_data_3ba
    .packed-switch 0x1
        :pswitch_10
        :pswitch_51
        :pswitch_81
        :pswitch_86
        :pswitch_ca
        :pswitch_f3
        :pswitch_11c
        :pswitch_149
        :pswitch_176
        :pswitch_17c
        :pswitch_1ed
        :pswitch_255
        :pswitch_29d
        :pswitch_1e3
        :pswitch_1e7
        :pswitch_328
        :pswitch_355
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const v4, 0x2020176

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4145
    const v0, 0x7f0a00c7

    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4147
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4148
    const v0, 0x7f0a00c8

    invoke-interface {p1, v3, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4150
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3349
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 3350
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNewEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3352
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_13

    .line 3353
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3355
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v0, :cond_25

    .line 3356
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->setVisibility(I)V

    .line 3357
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->releaseResources()V

    .line 3358
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 3361
    :cond_25
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2e

    .line 3362
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3363
    :cond_2e
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v0, :cond_34

    .line 3365
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderViewInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 3367
    :cond_34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3368
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 4210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 4223
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 4217
    :pswitch_d
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 4220
    :pswitch_14
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 4210
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 3687
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3688
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->pauseQuery()V

    .line 3691
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 11
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/16 v7, 0x7f4

    const/4 v6, 0x1

    .line 1066
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1067
    if-ne p1, v6, :cond_3b

    .line 1068
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EditEvent;->mSelectedReminderValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1069
    .local v1, checkedItem:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1f

    .line 1070
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :cond_1f
    move-object v0, p2

    .line 1072
    check-cast v0, Landroid/app/AlertDialog;

    .line 1073
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1074
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1076
    new-instance v4, Lcom/android/calendar/EditEvent$6;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$6;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1141
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v1           #checkedItem:I
    :cond_38
    :goto_38
    iput-object p2, p0, Lcom/android/calendar/EditEvent;->mDialog:Landroid/app/Dialog;

    .line 1142
    return-void

    .line 1083
    :cond_3b
    const/4 v4, 0x3

    if-ne p1, v4, :cond_50

    .line 1084
    const v4, 0x1020252

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1085
    .local v3, titleDivider:Landroid/view/View;
    if-eqz v3, :cond_4c

    .line 1086
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    :cond_4c
    invoke-direct {p0, p2}, Lcom/android/calendar/EditEvent;->initRepeatUntilDialog(Landroid/app/Dialog;)V

    goto :goto_38

    .line 1090
    .end local v3           #titleDivider:Landroid/view/View;
    :cond_50
    const/16 v4, 0x9

    if-ne p1, v4, :cond_5b

    move-object v4, p2

    .line 1091
    check-cast v4, Landroid/app/AlertDialog;

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V

    goto :goto_38

    .line 1092
    :cond_5b
    const/16 v4, 0xa

    if-ne p1, v4, :cond_8a

    .line 1093
    new-instance v2, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v2, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1120
    iget v4, v2, Landroid/text/format/Time;->year:I

    if-le v4, v7, :cond_7d

    .line 1121
    iput v7, v2, Landroid/text/format/Time;->year:I

    .line 1122
    const/16 v4, 0xb

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1123
    const/16 v4, 0x1f

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    :cond_7d
    move-object v4, p2

    .line 1125
    check-cast v4, Landroid/app/DatePickerDialog;

    iget v5, v2, Landroid/text/format/Time;->year:I

    iget v6, v2, Landroid/text/format/Time;->month:I

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_38

    .line 1129
    .end local v2           #time:Landroid/text/format/Time;
    :cond_8a
    const/16 v4, 0xe

    if-eq p1, v4, :cond_38

    .line 1137
    const/16 v4, 0xf

    if-ne p1, v4, :cond_38

    move-object v4, p2

    .line 1139
    check-cast v4, Landroid/app/AlertDialog;

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent;->prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V

    goto :goto_38
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4175
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsGoogleCalendar:Z

    if-eqz v0, :cond_21

    .line 4176
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4177
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4178
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4188
    :goto_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4180
    :cond_1a
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4181
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_15

    .line 4184
    :cond_21
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4185
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_15
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3851
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3852
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 3970
    :cond_12
    :goto_12
    return-void

    .line 3855
    :cond_13
    if-eqz p1, :cond_12

    .line 3856
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    move v7, v6

    .line 3857
    :goto_1a
    if-ge v7, v8, :cond_62

    .line 3858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3859
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 3861
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3862
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3863
    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "contactId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "status"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3866
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3857
    :cond_5e
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1a

    .line 3878
    :cond_62
    const-string v0, "calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    .line 3879
    const-string v0, "isLocalCalendar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    .line 3880
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_83

    .line 3881
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v1, "calendar_id"

    iget v2, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3882
    :cond_83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3889
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    .line 3891
    invoke-direct {p0, v6}, Lcom/android/calendar/EditEvent;->setCalendarData(I)V

    .line 3895
    const-string v0, "starttime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3896
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3897
    const-string v0, "endtime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3898
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3902
    const-string v0, "prevrepeatselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    .line 3903
    const-string v0, "prevrepeatuserselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    .line 3904
    const-string v0, "prevrepeatuntiltype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    .line 3905
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    const-string v1, "prevrepeatuntildate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3907
    const-string v0, "repeatselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    .line 3908
    const-string v0, "repeatuserselection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    .line 3909
    const-string v0, "repeatuntiltype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    .line 3910
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const-string v1, "repeatuntildate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3915
    const-string v0, "reminderminutes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    .line 3916
    const-string v0, "reminderOriginalminutes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 3917
    const-string v0, "reminderNextIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    .line 3921
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3922
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "customreminder"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3927
    const-string v0, "locationbitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3928
    if-eqz v0, :cond_16e

    array-length v1, v0

    if-lez v1, :cond_16e

    .line 3929
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3930
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 3931
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    .line 3932
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    .line 3934
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3935
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mMap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3937
    :try_start_16b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_1fd

    .line 3945
    :cond_16e
    :goto_16e
    const-string v0, "owneraccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 3947
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    .line 3948
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mVisibilityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mVisibilityLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3950
    const-string v0, "availability"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    .line 3951
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAvailabilityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3953
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const-string v1, "extraOptionVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3954
    const-string v0, "modification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    .line 3955
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 3957
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3958
    if-eqz v0, :cond_203

    .line 3959
    if-eqz v0, :cond_203

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_203

    .line 3960
    const-string v1, "/~/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    const-string v2, "/,/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3961
    const-string v2, "/~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    const-string v2, "/,/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v6

    .line 3962
    :goto_1ec
    array-length v3, v1

    if-ge v0, v3, :cond_203

    .line 3963
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    aget-object v7, v2, v0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3962
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ec

    .line 3938
    :catch_1fd
    move-exception v0

    .line 3939
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16e

    .line 3968
    :cond_203
    const-string v0, "syncId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    goto/16 :goto_12
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/16 v1, 0x1e

    const/4 v8, 0x2

    const/16 v2, 0x1388

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3510
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3512
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mGoogleLogin:Z

    if-eqz v0, :cond_12

    .line 3513
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 3683
    :cond_11
    :goto_11
    return-void

    .line 3517
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_26

    .line 3518
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_26

    .line 3521
    :cond_22
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_11

    .line 3526
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1db

    .line 3527
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    .line 3528
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3530
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 3532
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 3533
    iget v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-nez v1, :cond_1c0

    .line 3536
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    .line 3539
    :try_start_4b
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 3540
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v0

    .line 3541
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_175

    if-eqz v1, :cond_17b

    .line 3543
    :try_start_5c
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3544
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 3545
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 3546
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_77} :catch_16f

    .line 3569
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 3570
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    .line 3600
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_9f

    .line 3601
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 3602
    if-le v1, v2, :cond_222

    move v0, v1

    .line 3603
    :goto_8c
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    .line 3604
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3607
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3609
    :cond_9f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_bf

    .line 3610
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 3611
    if-le v1, v2, :cond_225

    move v0, v1

    .line 3612
    :goto_ac
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    .line 3613
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3616
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3618
    :cond_bf
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_f4

    .line 3619
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->length()I

    move-result v1

    .line 3620
    if-le v1, v2, :cond_228

    move v0, v1

    .line 3621
    :goto_d0
    new-instance v3, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    .line 3622
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Lcom/android/calendar/ConvNameEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3625
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setSelection(I)V

    .line 3627
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f4

    .line 3628
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->refreshRecipientButton()V

    .line 3633
    :cond_f4
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    if-eqz v0, :cond_104

    .line 3634
    iget v0, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ff

    .line 3635
    iput v6, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    .line 3637
    :cond_ff
    iget v0, p0, Lcom/android/calendar/EditEvent;->mStatusValue:I

    packed-switch v0, :pswitch_data_256

    .line 3653
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    if-eqz v0, :cond_131

    .line 3654
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->length()I

    move-result v1

    .line 3655
    if-le v1, v2, :cond_253

    move v0, v1

    .line 3656
    :goto_111
    new-instance v3, Lcom/android/calendar/EditEvent$InvalidCharsFiler;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\n"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Lcom/android/calendar/EditEvent$InvalidCharsFiler;-><init>(Lcom/android/calendar/EditEvent;[Ljava/lang/String;)V

    .line 3659
    new-instance v4, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v4, p0, v0}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    .line 3660
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    new-array v5, v8, [Landroid/text/InputFilter;

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/calendar/EnterActionMultiEdit;->setFilters([Landroid/text/InputFilter;)V

    .line 3663
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EnterActionMultiEdit;->setSelection(I)V

    .line 3665
    :cond_131
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_151

    .line 3666
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 3667
    if-le v0, v2, :cond_13e

    move v2, v0

    .line 3668
    :cond_13e
    new-instance v1, Lcom/android/calendar/EditEvent$LengthFilter;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/EditEvent$LengthFilter;-><init>(Lcom/android/calendar/EditEvent;I)V

    .line 3669
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3672
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3675
    :cond_151
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateWhen()V

    .line 3676
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    .line 3677
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateTimezone()V

    .line 3678
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    .line 3679
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateReminder()V

    .line 3681
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_11

    .line 3682
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->resumeQuery()V

    goto/16 :goto_11

    .line 3548
    :catch_16f
    move-exception v0

    .line 3550
    const/4 v0, 0x0

    :try_start_171
    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_173} :catch_175

    goto/16 :goto_77

    .line 3564
    :catch_175
    move-exception v0

    .line 3566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto/16 :goto_77

    .line 3552
    :cond_17b
    :try_start_17b
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-nez v1, :cond_183

    if-ne v0, v7, :cond_1a3

    .line 3553
    :cond_183
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    .line 3554
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v0, :cond_195

    .line 3555
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iput v0, p0, Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I

    .line 3556
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    .line 3558
    :cond_195
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_77

    .line 3560
    :cond_1a3
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v0, :cond_1af

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v0, :cond_77

    .line 3561
    :cond_1af
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    .line 3562
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1be} :catch_175

    goto/16 :goto_77

    .line 3572
    :cond_1c0
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-ne v0, v8, :cond_1d0

    .line 3573
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3574
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7f

    .line 3575
    :cond_1d0
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    if-ne v0, v7, :cond_7f

    .line 3576
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_7f

    .line 3581
    :cond_1db
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 3583
    :cond_1eb
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 3585
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v6, v0, Landroid/text/format/Time;->second:I

    .line 3586
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    .line 3587
    if-lez v0, :cond_215

    if-gt v0, v1, :cond_215

    .line 3588
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 3593
    :goto_204
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 3594
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_7f

    .line 3590
    :cond_215
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput v6, v0, Landroid/text/format/Time;->minute:I

    .line 3591
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    goto :goto_204

    :cond_222
    move v0, v2

    .line 3602
    goto/16 :goto_8c

    :cond_225
    move v0, v2

    .line 3611
    goto/16 :goto_ac

    :cond_228
    move v0, v2

    .line 3620
    goto/16 :goto_d0

    .line 3639
    :pswitch_22b
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_104

    .line 3642
    :pswitch_235
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_104

    .line 3645
    :pswitch_23f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_104

    .line 3648
    :pswitch_249
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;

    const v1, 0x7f0a013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_104

    :cond_253
    move v0, v2

    .line 3655
    goto/16 :goto_111

    .line 3637
    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_22b
        :pswitch_235
        :pswitch_23f
        :pswitch_249
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 3761
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3762
    const/4 v0, 0x0

    .line 3763
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EditEvent$Attendee;

    .line 3764
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3766
    const-string v5, "name"

    iget-object v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    const-string v5, "email"

    iget-object v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    const-string v5, "contactId"

    iget v6, v0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3770
    const-string v5, "status"

    iget v0, v0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3771
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v1, v0

    .line 3779
    goto :goto_c

    .line 3781
    :cond_4d
    const-string v0, "calendar_id"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mCalendarId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3782
    const-string v0, "isLocalCalendar"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mIsLocalCalendar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3786
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    if-eqz v0, :cond_6a

    .line 3787
    const-string v0, "starttime"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3788
    :cond_6a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    if-eqz v0, :cond_79

    .line 3789
    const-string v0, "endtime"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3793
    :cond_79
    const-string v0, "prevrepeatselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3794
    const-string v0, "prevrepeatuserselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUserSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3795
    const-string v0, "prevrepeatuntiltype"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3796
    const-string v0, "prevrepeatuntildate"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mPrevRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3797
    const-string v0, "repeatselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3798
    const-string v0, "repeatuserselection"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUserSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3799
    const-string v0, "repeatuntiltype"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3800
    const-string v0, "repeatuntildate"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mRepeatUntilDate:Landroid/text/format/Time;

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3804
    const-string v0, "reminderminutes"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3805
    const-string v0, "reminderOriginalminutes"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3806
    const-string v0, "reminderNextIndex"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mReminderNextIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3811
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3812
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_f1

    .line 3813
    const-string v1, "customreminder"

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3817
    :cond_f1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11a

    .line 3818
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3819
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3820
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 3821
    const-string v1, "locationbitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3822
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3823
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3828
    :cond_11a
    const-string v0, "owneraccount"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_130

    .line 3831
    const-string v0, "extraOptionVisibility"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3832
    :cond_130
    const-string v0, "visibility"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3833
    const-string v0, "availability"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mAvailability:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3834
    const-string v0, "modification"

    iget v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3835
    const-string v0, "timezone"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->getNumberOfRecipients()I

    move-result v0

    if-lez v0, :cond_15f

    .line 3838
    const-string v0, "recipients"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v1, v7}, Lcom/android/calendar/ComposeHeaderView;->getRecipients(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3841
    :cond_15f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    if-eqz v0, :cond_16a

    .line 3842
    const-string v0, "syncId"

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    :cond_16a
    const-string v0, "mNewEventDialogChecked"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3845
    const-string v0, "mGoogleEventDialogChecked"

    iget-boolean v1, p0, Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3846
    return-void
.end method

.method public setScheduleButtonGone()V
    .registers 3

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4893
    return-void
.end method

.method public setScheduleButtonVisible()V
    .registers 3

    .prologue
    .line 4888
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mScheduleButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mIsExchangeCalendar:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4889
    return-void

    .line 4888
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method

.method public showErrorMessage()V
    .registers 3

    .prologue
    .line 7120
    const v0, 0x7f0a014d

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7121
    return-void
.end method
