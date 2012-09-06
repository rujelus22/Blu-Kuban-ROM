.class public Lcom/android/calendar/EventInfoFragment;
.super Landroid/app/DialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static DIALOG_TOP_MARGIN:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static mDialogHeight:I

.field private static mDialogWidth:I

.field private static mScale:F

.field private static final mWildcardPattern:Ljava/util/regex/Pattern;


# instance fields
.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAllDay:Z

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarAllowedReminders:Ljava/lang/String;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentQuery:I

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultReminderMinutes:I

.field private mDeleteDialogVisible:Z

.field private mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDesc:Lcom/android/calendar/ExpandableTextView;

.field private mDismissOnResume:Z

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventDeletionStarted:Z

.field private mEventId:J

.field private mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

.field private mHasAlarm:Z

.field private mHasAttendeeData:Z

.field private mHeadlines:Landroid/view/View;

.field private mIsBusyFreeCalendar:Z

.field private mIsDialog:Z

.field private mIsOrganizer:Z

.field private mIsPaused:Z

.field private mIsRepeating:Z

.field private mIsTabletConfig:Z

.field private mLongAttendees:Lcom/android/calendar/event/AttendeesView;

.field private mMaxReminders:I

.field private mMenu:Landroid/view/Menu;

.field private mMinTop:I

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field private mOriginalAttendeeResponse:I

.field public mOriginalReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerCanRespond:Z

.field private mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersCursor:Landroid/database/Cursor;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStartMillis:J

.field private mTZUpdater:Ljava/lang/Runnable;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field public mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mUserModifiedReminders:Z

.field private mUserSetResponse:I

.field private mView:Landroid/view/View;

.field private mWhenDate:Landroid/widget/TextView;

.field private mWhenTime:Landroid/widget/TextView;

.field private mWhere:Landroid/widget/TextView;

.field private mWindowStyle:I

.field private mX:I

.field private mY:I

.field private onDeleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

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

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 212
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 223
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 285
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 328
    const/16 v0, 0x1f4

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 329
    const/16 v0, 0x258

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 330
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 475
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 143
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 154
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 253
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 262
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 266
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 267
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 273
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 299
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 319
    new-instance v0, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 331
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 332
    iput-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 334
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 335
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 677
    new-instance v0, Lcom/android/calendar/EventInfoFragment$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$5;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 476
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZI)V
    .registers 21
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"
    .parameter "isDialog"
    .parameter "windowStyle"

    .prologue
    .line 482
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V

    .line 484
    iput-wide p2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 485
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V
    .registers 16
    .parameter "context"
    .parameter "uri"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"
    .parameter "isDialog"
    .parameter "windowStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 447
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 143
    iput v5, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 154
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 253
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 262
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 266
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 267
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 273
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 299
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 319
    new-instance v1, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 331
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 332
    iput-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 333
    iput-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 334
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 335
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 677
    new-instance v1, Lcom/android/calendar/EventInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$5;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 449
    if-eqz p8, :cond_b2

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 452
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 453
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 455
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b2

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 457
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b2

    .line 458
    sget v1, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 459
    sget v1, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 460
    sget v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    .line 464
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_b2
    iput-boolean p8, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 466
    invoke-virtual {p0, v5, v3}, Lcom/android/calendar/EventInfoFragment;->setStyle(II)V

    .line 467
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 468
    iput-wide p3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 469
    iput-wide p5, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 470
    iput p7, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 471
    iput p9, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 472
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/EventInfoFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    return v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/DeleteEventHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/calendar/EventInfoFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/calendar/EventInfoFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/EventInfoFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/EventInfoFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->addReminder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/EventInfoFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/EventInfoFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EventInfoFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method private addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcom/android/calendar/ExpandableTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1344
    if-eqz p2, :cond_23

    .line 1345
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1352
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1353
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1354
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 1355
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    const-string v0, ". "

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_22
    return-void

    .line 1346
    :cond_23
    if-eqz p3, :cond_22

    .line 1347
    invoke-virtual {p3}, Lcom/android/calendar/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method private addReminder()V
    .registers 12

    .prologue
    .line 1721
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 1722
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 1733
    :goto_21
    return-void

    .line 1728
    :cond_22
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_21
.end method

.method private applyDialogParams()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 521
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 522
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 524
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 525
    .local v2, window:Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 527
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 528
    .local v0, a:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 530
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 531
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 537
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    if-eq v3, v4, :cond_4d

    .line 538
    :cond_2a
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 539
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 540
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    if-ge v3, v4, :cond_49

    .line 541
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 543
    :cond_49
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 545
    :cond_4d
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 546
    return-void
.end method

.method private createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .registers 2

    .prologue
    .line 1829
    new-instance v0, Lcom/android/calendar/EventInfoFragment$8;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$8;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    return-object v0
.end method

.method private createExceptionResponse(JI)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 940
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 941
    const-string v1, "originalInstanceTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v1, "selfAttendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    const-string v1, "eventStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 946
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 948
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 952
    return-void
.end method

.method private doEdit()V
    .registers 16

    .prologue
    const/4 v10, 0x0

    .line 991
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 994
    .local v14, c:Landroid/content/Context;
    if-eqz v14, :cond_1a

    .line 995
    invoke-static {v14}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v6, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v8, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    const-wide/16 v12, -0x1

    move-object v1, p0

    move v11, v10

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 999
    :cond_1a
    return-void
.end method

.method public static findButtonIdForResponse(I)I
    .registers 2
    .parameter

    .prologue
    .line 974
    packed-switch p0, :pswitch_data_12

    .line 985
    :pswitch_3
    const/4 v0, -0x1

    .line 987
    :goto_4
    return v0

    .line 976
    :pswitch_5
    const v0, 0x7f100068

    .line 977
    goto :goto_4

    .line 979
    :pswitch_9
    const v0, 0x7f100069

    .line 980
    goto :goto_4

    .line 982
    :pswitch_d
    const v0, 0x7f10006a

    .line 983
    goto :goto_4

    .line 974
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static getResponseFromButtonId(I)I
    .registers 2
    .parameter "buttonId"

    .prologue
    .line 956
    packed-switch p0, :pswitch_data_c

    .line 967
    const/4 v0, 0x0

    .line 969
    .local v0, response:I
    :goto_4
    return v0

    .line 958
    .end local v0           #response:I
    :pswitch_5
    const/4 v0, 0x1

    .line 959
    .restart local v0       #response:I
    goto :goto_4

    .line 961
    .end local v0           #response:I
    :pswitch_7
    const/4 v0, 0x4

    .line 962
    .restart local v0       #response:I
    goto :goto_4

    .line 964
    .end local v0           #response:I
    :pswitch_9
    const/4 v0, 0x2

    .line 965
    .restart local v0       #response:I
    goto :goto_4

    .line 956
    nop

    :pswitch_data_c
    .packed-switch 0x7f100068
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private initAttendeesCursor(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 720
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 721
    iput-wide v9, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 722
    iput v5, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 723
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_76

    .line 724
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 725
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 726
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 727
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 728
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 729
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 732
    :cond_35
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 733
    .local v2, status:I
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, email:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_77

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 738
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 739
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 762
    :goto_66
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 763
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 765
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateAttendees(Landroid/view/View;)V

    .line 768
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #status:I
    :cond_76
    return-void

    .line 744
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #status:I
    :cond_77
    packed-switch v2, :pswitch_data_a6

    .line 758
    :pswitch_7a
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-direct {v4, v1, v0, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 746
    :pswitch_85
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-direct {v4, v1, v0, v7}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 750
    :pswitch_90
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-direct {v4, v1, v0, v8}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 754
    :pswitch_9b
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-direct {v4, v1, v0, v6}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 744
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_85
        :pswitch_90
        :pswitch_7a
        :pswitch_9b
    .end packed-switch
.end method

.method private initEventCursor()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    move v3, v2

    .line 715
    :goto_f
    return v3

    .line 708
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 709
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 710
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, rRule:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    move v1, v2

    :goto_2c
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    .line 712
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_51

    :goto_38
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    .line 713
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    .line 714
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    goto :goto_f

    :cond_4f
    move v1, v3

    .line 711
    goto :goto_2c

    :cond_51
    move v2, v3

    .line 712
    goto :goto_38
.end method

.method private static linkifyTextView(Landroid/widget/TextView;)V
    .registers 15
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x0

    .line 1162
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v7

    .line 1176
    const-string v0, "user.region"

    const-string v1, "US"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    const-string v0, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1182
    if-nez v8, :cond_1a

    if-nez v7, :cond_11b

    .line 1183
    :cond_1a
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1184
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1185
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v2

    .line 1195
    instance-of v0, v1, Landroid/text/SpannableString;

    if-eqz v0, :cond_9d

    move-object v0, v1

    .line 1196
    check-cast v0, Landroid/text/SpannableString;

    move-object v3, v0

    .line 1204
    :goto_35
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v3, v6, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1209
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v6

    :cond_46
    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 1210
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v5

    .line 1211
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v6

    .line 1215
    if-nez v8, :cond_a3

    if-nez v5, :cond_64

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v6, v10, :cond_a3

    .line 1264
    :cond_64
    if-eqz v4, :cond_82

    .line 1266
    if-eq v3, v1, :cond_6b

    .line 1267
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1274
    if-eqz v0, :cond_75

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_82

    .line 1275
    :cond_75
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1276
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1282
    :cond_82
    :goto_82
    if-nez v7, :cond_9c

    if-nez v4, :cond_9c

    .line 1283
    const-string v0, "EventInfoFragment"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1284
    const-string v0, "EventInfoFragment"

    const-string v1, "No linkification matches, using geo default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_95
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    const-string v1, "geo:0,0?q="

    invoke-static {p0, v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 1288
    :cond_9c
    return-void

    .line 1198
    :cond_9d
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v3, v0

    goto :goto_35

    .line 1219
    :cond_a3
    invoke-static {v3, v0, v5, v6}, Lcom/android/calendar/EventInfoFragment;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 1220
    const-string v5, "EventInfoFragment"

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1221
    const-string v5, "EventInfoFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not linkifying "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " as phone number due to overlap"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 1251
    :cond_d9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    .line 1252
    :goto_df
    if-ge v2, v6, :cond_f5

    .line 1253
    invoke-interface {v3, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    .line 1254
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_ef

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 1255
    :cond_ef
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    :cond_f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_df

    .line 1258
    :cond_f5
    new-instance v2, Landroid/text/style/URLSpan;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1260
    const/16 v10, 0x21

    invoke-interface {v3, v2, v5, v6, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1261
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    .line 1262
    goto/16 :goto_46

    :cond_11b
    move v4, v6

    goto/16 :goto_82
.end method

.method private static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .registers 7
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 1806
    .local v3, vals:[I
    array-length v2, v3

    .line 1807
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1809
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_19

    .line 1810
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1813
    :cond_19
    return-object v1
.end method

.method private static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .registers 5
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1819
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1820
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1821
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private declared-synchronized prepareReminders()V
    .registers 4

    .prologue
    .line 1739
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_57

    if-nez v0, :cond_17

    .line 1764
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 1749
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1750
    const v1, 0x7f070003

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 1751
    const v1, 0x7f070002

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 1752
    const v1, 0x7f070001

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 1753
    const/high16 v1, 0x7f07

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 1757
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 1758
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1761
    :cond_4d
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 1762
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_57

    goto :goto_15

    .line 1739
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveReminders()Z
    .registers 11

    .prologue
    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1771
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 1773
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1774
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1775
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1776
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1779
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v1

    .line 1782
    if-nez v1, :cond_39

    .line 1783
    const/4 v0, 0x0

    .line 1798
    :goto_38
    return v0

    .line 1787
    :cond_39
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 1788
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1790
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1791
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1792
    if-lez v0, :cond_81

    const/4 v0, 0x1

    .line 1793
    :goto_61
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eq v0, v2, :cond_7f

    .line 1794
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1795
    const-string v2, "hasAlarm"

    if-eqz v0, :cond_83

    const/4 v0, 0x1

    :goto_6f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1796
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 1798
    :cond_7f
    const/4 v0, 0x1

    goto :goto_38

    .line 1792
    :cond_81
    const/4 v0, 0x0

    goto :goto_61

    .line 1795
    :cond_83
    const/4 v0, 0x0

    goto :goto_6f
.end method

.method private saveResponse()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 870
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_b

    .line 911
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 874
    :cond_b
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 875
    .local v6, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v5

    .line 876
    .local v5, status:I
    if-eqz v5, :cond_a

    .line 881
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-eq v5, v1, :cond_a

    .line 886
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 890
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v1, :cond_3c

    .line 892
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 893
    goto :goto_a

    .line 897
    :cond_3c
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v7

    .line 898
    .local v7, whichEvents:I
    packed-switch v7, :pswitch_data_5e

    .line 908
    const-string v1, "EventInfoFragment"

    const-string v2, "Unexpected choice for updating invitation response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 902
    :pswitch_4d
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-direct {p0, v0, v1, v5}, Lcom/android/calendar/EventInfoFragment;->createExceptionResponse(JI)V

    move v0, v8

    .line 903
    goto :goto_a

    .line 905
    :pswitch_54
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 906
    goto :goto_a

    .line 898
    :pswitch_data_5e
    .packed-switch -0x1
        :pswitch_a
        :pswitch_4d
        :pswitch_54
    .end packed-switch
.end method

.method private sendAccessibilityEvent()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1312
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1314
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1339
    :goto_13
    return-void

    .line 1318
    :cond_14
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 1319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1321
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .line 1323
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1324
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDate:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1325
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1326
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1327
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-direct {p0, v4, v2, v1}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 1330
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9d

    .line 1331
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    .line 1332
    const/4 v2, -0x1

    if-eq v5, v2, :cond_9d

    .line 1333
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100066

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_9d
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_13
.end method

.method private sendAccessibilityEventIfQueryDone(I)V
    .registers 4
    .parameter "token"

    .prologue
    .line 440
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 441
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_e

    .line 442
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEvent()V

    .line 444
    :cond_e
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 5
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1601
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1602
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 1605
    :goto_8
    return-void

    .line 1604
    :cond_9
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .registers 5
    .parameter "view"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 1608
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1609
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 1610
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    :cond_9
    return-void
.end method

.method private static spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z
    .registers 11
    .parameter "spanText"
    .parameter "spanList"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x0

    .line 1295
    if-ne p2, p3, :cond_4

    .line 1308
    :cond_3
    :goto_3
    return v6

    .line 1299
    :cond_4
    move-object v0, p1

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 1300
    .local v5, span:Landroid/text/style/URLSpan;
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1301
    .local v2, existingStart:I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1302
    .local v1, existingEnd:I
    if-lt p2, v2, :cond_17

    if-lt p2, v1, :cond_1b

    :cond_17
    if-le p3, v2, :cond_1d

    if-gt p3, v1, :cond_1d

    .line 1304
    :cond_1b
    const/4 v6, 0x1

    goto :goto_3

    .line 1299
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method private updateAttendees(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1455
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_4a

    .line 1457
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeesView;->clearAttendees()V

    .line 1458
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1459
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1460
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1461
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1462
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/AttendeesView;->setEnabled(Z)V

    .line 1463
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/AttendeesView;->setVisibility(I)V

    .line 1467
    :goto_49
    return-void

    .line 1465
    :cond_4a
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->setVisibility(I)V

    goto :goto_49
.end method

.method private updateCalendar(Landroid/view/View;)V
    .registers 14
    .parameter

    .prologue
    const v11, 0x7f100089

    const/16 v10, 0xa

    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_104

    .line 1364
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1365
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1366
    if-nez v0, :cond_25

    const-string v0, ""

    :cond_25
    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v8

    :goto_31
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    .line 1369
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1372
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_displayName=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1377
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    .line 1378
    const v2, 0x7f10006d

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1379
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_f3

    .line 1380
    const v0, 0x7f10008d

    invoke-direct {p0, p1, v0, v9}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1384
    :goto_6a
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_fb

    move v0, v8

    :goto_75
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    .line 1385
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_fe

    move v0, v8

    :goto_82
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    .line 1388
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_100

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_100

    move v0, v8

    :goto_8d
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    .line 1389
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_102

    move v0, v8

    :goto_9a
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    .line 1392
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_b3

    .line 1393
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1394
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1395
    new-instance v2, Lcom/android/calendar/EventInfoFragment$7;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoFragment$7;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    :cond_b3
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-nez v0, :cond_c8

    .line 1412
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10008a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1413
    if-eqz v0, :cond_c8

    .line 1414
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    :cond_c8
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-nez v0, :cond_da

    .line 1419
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_da

    .line 1421
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1422
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :cond_da
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_e2

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_e6

    :cond_e2
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_ef

    :cond_e6
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_ef

    .line 1427
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1433
    :cond_ef
    :goto_ef
    return-void

    :cond_f0
    move v0, v9

    .line 1367
    goto/16 :goto_31

    .line 1382
    :cond_f3
    const v0, 0x7f10008d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_6a

    :cond_fb
    move v0, v9

    .line 1384
    goto/16 :goto_75

    :cond_fe
    move v0, v9

    .line 1385
    goto :goto_82

    :cond_100
    move v0, v9

    .line 1388
    goto :goto_8d

    :cond_102
    move v0, v9

    .line 1389
    goto :goto_9a

    .line 1430
    :cond_104
    const v0, 0x7f100031

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1431
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    goto :goto_ef
.end method

.method private updateEvent(Landroid/view/View;)V
    .registers 14
    .parameter

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 1129
    :cond_6
    :goto_6
    return-void

    .line 1006
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 1008
    :cond_16
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_21
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_12d

    const/4 v1, 0x1

    :goto_2b
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    .line 1012
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1013
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1014
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1017
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    .line 1018
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1021
    if-eqz v0, :cond_68

    .line 1022
    const v2, 0x7f100012

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1028
    :cond_68
    const/4 v0, 0x1

    .line 1029
    const/16 v6, 0x16

    .line 1032
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 1033
    const/16 v0, 0x81

    move v7, v0

    .line 1037
    :goto_78
    const/4 v0, 0x0

    .line 1038
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20e

    .line 1039
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1040
    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1041
    new-instance v1, Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1042
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v2, :cond_9e

    .line 1043
    const-string v2, "UTC"

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1045
    :cond_9e
    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1046
    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1051
    :goto_b3
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v0, :cond_137

    .line 1052
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    const-string v7, "UTC"

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    if-eqz v8, :cond_130

    .line 1056
    const v1, 0x7f10008b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1060
    :goto_fe
    const v0, 0x7f10008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    :goto_10a
    if-eqz v9, :cond_116

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f2

    .line 1103
    :cond_116
    const v0, 0x7f100014

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1126
    :cond_11e
    :goto_11e
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1127
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-virtual {v0, v10}, Lcom/android/calendar/ExpandableTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1011
    :cond_12d
    const/4 v1, 0x0

    goto/16 :goto_2b

    .line 1058
    :cond_130
    const v1, 0x7f10008b

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto :goto_fe

    .line 1064
    :cond_137
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 1065
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 1067
    if-eqz v8, :cond_1d6

    .line 1068
    const v0, 0x7f10008b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1074
    :goto_175
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ea

    .line 1078
    new-instance v2, Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1079
    iget-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v3, :cond_19a

    .line 1080
    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1082
    :cond_19a
    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1084
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1085
    if-eqz v3, :cond_1b1

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GMT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 1090
    :cond_1b1
    :goto_1b1
    const v2, 0x7f10008c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 1070
    :cond_1d6
    const v0, 0x7f10008b

    invoke-direct {p0, p1, v0, v6}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto :goto_175

    .line 1088
    :cond_1dd
    iget v0, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_1e8

    const/4 v0, 0x1

    :goto_1e2
    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b1

    :cond_1e8
    const/4 v0, 0x0

    goto :goto_1e2

    .line 1093
    :cond_1ea
    const v0, 0x7f10008c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 1105
    :cond_1f2
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 1106
    if-eqz v0, :cond_11e

    .line 1107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1108
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->linkifyTextView(Landroid/widget/TextView;)V

    .line 1111
    new-instance v1, Lcom/android/calendar/EventInfoFragment$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$6;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_11e

    :cond_20e
    move-object v8, v0

    goto/16 :goto_b3

    :cond_211
    move v7, v0

    goto/16 :goto_78
.end method

.method private updateMenu()V
    .registers 4

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_5

    .line 1452
    :cond_4
    :goto_4
    return-void

    .line 1442
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000af

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1443
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f1000ae

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1444
    if-eqz v0, :cond_23

    .line 1445
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1446
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1448
    :cond_23
    if-eqz v1, :cond_4

    .line 1449
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1450
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private updateResponse(JJI)V
    .registers 15
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 917
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 919
    .local v4, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 920
    const-string v0, "attendeeEmail"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_15
    const-string v0, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 925
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 927
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 929
    return-void
.end method

.method private updateTitle()V
    .registers 4

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 692
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v1, :cond_1f

    .line 693
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 697
    :goto_1e
    return-void

    .line 695
    :cond_1f
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method


# virtual methods
.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 1688
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1693
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v3, 0x80

    cmp-long v0, v0, v3

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    if-eqz v0, :cond_1a

    .line 1695
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    :cond_1a
    return-void
.end method

.method public initReminders(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1473
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1474
    :goto_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1475
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1476
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1478
    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1481
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1483
    :cond_32
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1487
    :cond_3c
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1489
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    if-eqz v0, :cond_46

    .line 1521
    :cond_45
    return-void

    .line 1495
    :cond_46
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f100078

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1497
    if-eqz v0, :cond_56

    .line 1498
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1500
    :cond_56
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    .line 1501
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1504
    :cond_5f
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eqz v0, :cond_45

    .line 1505
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 1507
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1508
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_69

    .line 1514
    :cond_83
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_87
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1515
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_87
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 491
    new-instance v0, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 508
    if-eqz p1, :cond_1e

    .line 509
    const-string v0, "key_fragment_is_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 510
    const-string v0, "key_window_style"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 514
    :cond_1e
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_25

    .line 515
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 517
    :cond_25
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    .line 518
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 581
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 582
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 584
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v0, :cond_16

    .line 585
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 587
    :cond_16
    new-instance v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    .line 588
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_24

    .line 589
    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoFragment;->setHasOptionsMenu(Z)V

    .line 591
    :cond_24
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 559
    invoke-static {p2}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 560
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_b

    .line 573
    :cond_a
    :goto_a
    return-void

    .line 566
    :cond_b
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    if-eq p2, v0, :cond_a

    .line 572
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1706
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1707
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1708
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1709
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1710
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 1711
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 785
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 787
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_f

    :cond_b
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_1a

    .line 788
    :cond_f
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 789
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 790
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateMenu()V

    .line 792
    :cond_1a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 18
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 597
    if-eqz p3, :cond_23

    .line 598
    const-string v1, "key_fragment_is_dialog"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 599
    const-string v1, "key_window_style"

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 601
    const-string v1, "key_delete_dialog_visible"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 606
    :cond_23
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_137

    .line 607
    const v1, 0x7f040024

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    .line 611
    :goto_34
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 612
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    .line 613
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDate:Landroid/widget/TextView;

    .line 614
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenTime:Landroid/widget/TextView;

    .line 615
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 616
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ExpandableTextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    .line 617
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    .line 618
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/AttendeesView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    .line 619
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090006

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    .line 621
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_d1

    .line 623
    const-string v1, "key_event_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 624
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 625
    const-string v1, "key_start_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 626
    const-string v1, "key_end_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 630
    :cond_d1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 634
    .local v10, b:Landroid/widget/Button;
    new-instance v1, Lcom/android/calendar/EventInfoFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$3;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v1, :cond_fa

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v1, :cond_fe

    :cond_fa
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v1, :cond_10c

    .line 651
    :cond_fe
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_10c
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 657
    .local v13, reminderAddButton:Landroid/view/View;
    new-instance v9, Lcom/android/calendar/EventInfoFragment$4;

    invoke-direct {v9, p0}, Lcom/android/calendar/EventInfoFragment$4;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    .line 664
    .local v9, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 669
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_default_reminder"

    const-string v2, "-1"

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 671
    .local v11, defaultReminderString:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    .line 672
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    .line 674
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v1

    .line 609
    .end local v9           #addReminderOnClickListener:Landroid/view/View$OnClickListener;
    .end local v10           #b:Landroid/widget/Button;
    .end local v11           #defaultReminderString:Ljava/lang/String;
    .end local v12           #prefs:Landroid/content/SharedPreferences;
    .end local v13           #reminderAddButton:Landroid/view/View;
    :cond_137
    const v1, 0x7f040023

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    goto/16 :goto_34
.end method

.method public onDeleteStarted()V
    .registers 2

    .prologue
    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 1826
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 852
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 854
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 855
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 857
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1b

    .line 858
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 860
    :cond_1b
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 861
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    if-nez v0, :cond_1f

    .line 842
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveResponse()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveReminders()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 843
    :cond_10
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 846
    :cond_1f
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 847
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 798
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v1, :cond_7

    .line 799
    const/4 v0, 0x0

    .line 836
    :goto_6
    return v0

    .line 809
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_82

    .line 836
    :goto_e
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_6

    .line 811
    :sswitch_13
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 812
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 815
    :sswitch_1e
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 816
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 817
    const-string v1, "beginTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 818
    const-string v1, "endTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 819
    const-string v1, "allDay"

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 821
    const-string v1, "editMode"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    invoke-virtual {p0, v2}, Lcom/android/calendar/EventInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 823
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_e

    .line 826
    :sswitch_57
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 828
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v1, p0}, Lcom/android/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 829
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 830
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 831
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_e

    .line 809
    nop

    :sswitch_data_82
    .sparse-switch
        0x102002c -> :sswitch_13
        0x7f1000ae -> :sswitch_1e
        0x7f1000af -> :sswitch_57
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 1654
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1655
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 1659
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    if-eqz v0, :cond_1d

    .line 1660
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/android/calendar/DeleteEventHelper;->dismissAlertDialog()V

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 1663
    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1667
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 1668
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 1669
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    if-eqz v1, :cond_11

    .line 1670
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 1673
    :cond_11
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v1, :cond_40

    .line 1674
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v4, :cond_24

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-nez v4, :cond_24

    const/4 v0, 0x1

    :cond_24
    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 1677
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1678
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    .line 1680
    :cond_40
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 772
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 773
    const-string v0, "key_event_id"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 774
    const-string v0, "key_start_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 775
    const-string v0, "key_end_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 776
    const-string v0, "key_fragment_is_dialog"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    const-string v0, "key_window_style"

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 778
    const-string v0, "key_delete_dialog_visible"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 779
    const-string v0, "key_attendee_response"

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    return-void
.end method

.method public setDialogParams(III)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "minTop"

    .prologue
    .line 549
    iput p1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 550
    iput p2, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 551
    iput p3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    .line 552
    return-void
.end method

.method updateResponse(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f10008e

    const/4 v2, -0x1

    .line 1576
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    :cond_15
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    if-nez v0, :cond_23

    .line 1578
    :cond_1d
    const/16 v0, 0x8

    invoke-direct {p0, p1, v3, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1598
    :goto_22
    return-void

    .line 1582
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1586
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    if-eq v0, v2, :cond_41

    .line 1587
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 1594
    :goto_2d
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 1595
    const v0, 0x7f100067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1596
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1597
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_22

    .line 1588
    :cond_41
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eq v0, v2, :cond_48

    .line 1589
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    goto :goto_2d

    .line 1591
    :cond_48
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    goto :goto_2d
.end method
