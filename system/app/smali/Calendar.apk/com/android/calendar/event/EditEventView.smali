.class public Lcom/android/calendar/event/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventView$CalendarsAdapter;,
        Lcom/android/calendar/event/EditEventView$DateClickListener;,
        Lcom/android/calendar/event/EditEventView$DateListener;,
        Lcom/android/calendar/event/EditEventView$TimeClickListener;,
        Lcom/android/calendar/event/EditEventView$TimeListener;
    }
.end annotation


# static fields
.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field mAccessLevelSpinner:Landroid/widget/Spinner;

.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mAllDay:Z

.field mAllDayCheckBox:Landroid/widget/CheckBox;

.field mAttendeesGroup:Landroid/view/View;

.field mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

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

.field mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mAvailabilityValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarSelectorWrapper:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field mDescriptionGroup:Landroid/view/View;

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field mEndDateButton:Landroid/widget/Button;

.field mEndDateHome:Landroid/widget/TextView;

.field mEndHomeGroup:Landroid/view/View;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeButton:Landroid/widget/Button;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mIsMultipane:Z

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationGroup:Landroid/view/View;

.field mLocationTextView:Landroid/widget/TextView;

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mOriginalSpinnerPadding:[I

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

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveAfterQueryComplete:Z

.field mScrollView:Landroid/widget/ScrollView;

.field mStartDateButton:Landroid/widget/Button;

.field mStartDateHome:Landroid/widget/TextView;

.field mStartHomeGroup:Landroid/view/View;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeButton:Landroid/widget/Button;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field mTimezoneLabel:Landroid/widget/TextView;

.field mTimezoneRow:Landroid/view/View;

.field mTimezoneTextView:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/TextView;

.field private mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mWhenView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 202
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    .line 1501
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 188
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 194
    iput v2, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 196
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 805
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    .line 806
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    .line 807
    iput-object p3, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    .line 810
    const v0, 0x7f10003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 811
    const v0, 0x7f10003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 814
    const v0, 0x7f100045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 815
    const v0, 0x7f100012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    .line 816
    const v0, 0x7f10004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 817
    const v0, 0x7f100073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 818
    const v0, 0x7f100064

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    .line 819
    const v0, 0x7f10004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 820
    const v0, 0x7f100056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    .line 821
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f100013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 822
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    .line 823
    const v0, 0x7f100050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    .line 824
    const v0, 0x7f100057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    .line 825
    const v0, 0x7f100061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 826
    const v0, 0x7f100060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    .line 827
    const v0, 0x7f100053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 828
    const v0, 0x7f100052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 829
    const v0, 0x7f10005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 830
    const v0, 0x7f100059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 831
    const v0, 0x7f10005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 832
    const v0, 0x7f100075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 833
    const v0, 0x7f10007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 834
    const v0, 0x7f10007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    .line 835
    const v0, 0x7f100044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 836
    const v0, 0x7f100062

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    .line 837
    const v0, 0x7f100046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 838
    const v0, 0x7f100076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 839
    const v0, 0x7f100065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 840
    const v0, 0x7f10006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 841
    const v0, 0x7f10006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    .line 842
    const v0, 0x7f100049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    .line 843
    const v0, 0x7f100071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    .line 844
    const v0, 0x7f100051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    .line 845
    const v0, 0x7f100058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    .line 846
    const v0, 0x7f100070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 848
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 854
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 855
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 856
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 857
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 858
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 859
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 860
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 861
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10005e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10005b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10007a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10007d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100054

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    const v0, 0x7f100067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 879
    const v0, 0x7f100078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 881
    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 882
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    .line 883
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 884
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 885
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 886
    new-instance v0, Lcom/android/common/Rfc822Validator;

    invoke-direct {v0, v3}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 887
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;

    .line 890
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 891
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/EditEventView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1198
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1227
    :cond_8
    :goto_8
    return-void

    .line 1201
    :cond_9
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_38

    .line 1202
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1206
    :cond_38
    instance-of v0, p2, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_69

    move-object v0, p2

    .line 1207
    check-cast v0, Landroid/widget/RadioGroup;

    .line 1208
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 1209
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1212
    :cond_69
    instance-of v0, p2, Landroid/widget/Spinner;

    if-eqz v0, :cond_a1

    .line 1213
    check-cast p2, Landroid/widget/Spinner;

    .line 1214
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1215
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1220
    :cond_a1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1221
    check-cast p2, Landroid/view/ViewGroup;

    .line 1222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1223
    const/4 v0, 0x0

    :goto_ac
    if-ge v0, v1, :cond_8

    .line 1224
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac
.end method

.method private addReminder()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1446
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    .line 1447
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 1459
    :goto_22
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1460
    return-void

    .line 1453
    :cond_2c
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_22
.end method

.method private fillModelFromUI()Z
    .registers 13

    .prologue
    .line 699
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v7, :cond_6

    .line 700
    const/4 v7, 0x0

    .line 800
    :goto_5
    return v7

    .line 702
    :cond_6
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v8, v9, v10}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 704
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    .line 706
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1a5

    const/4 v7, 0x1

    :goto_2d
    iput-boolean v7, v8, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 707
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 708
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 709
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 710
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 711
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 712
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 714
    :cond_72
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 715
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 718
    :cond_81
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    invoke-static {v7}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v6

    .line 720
    .local v6, status:I
    if-eqz v6, :cond_91

    .line 721
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v6, v7, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 724
    :cond_91
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v7, :cond_be

    .line 725
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 726
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 727
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 728
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v7, v8, v9}, Lcom/android/calendar/CalendarEventModel;->addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V

    .line 729
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 733
    :cond_be
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v7, :cond_fd

    .line 734
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 735
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 736
    .local v0, calendarCursorPosition:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 737
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, defaultCalendar:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v8, "preference_defaultCalendar"

    invoke-static {v7, v8, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 742
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 743
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 747
    .end local v0           #calendarCursorPosition:I
    .end local v1           #defaultCalendar:Ljava/lang/String;
    :cond_fd
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v7, :cond_1ad

    .line 750
    const-string v7, "UTC"

    iput-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 751
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 752
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 753
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 754
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 755
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 757
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 758
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 759
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 760
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 763
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long v2, v7, v9

    .line 765
    .local v2, normalizedEndTimeMillis:J
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v7, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_1a8

    .line 767
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v8, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 777
    .end local v2           #normalizedEndTimeMillis:J
    :goto_15c
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 778
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    iput v8, v7, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 780
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 786
    iget v7, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d0

    .line 787
    const/4 v5, 0x0

    .line 793
    .local v5, selection:I
    :goto_188
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5, v7, v8}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 797
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-nez v7, :cond_1a2

    .line 798
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 800
    :cond_1a2
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 706
    .end local v5           #selection:I
    .end local v6           #status:I
    :cond_1a5
    const/4 v7, 0x0

    goto/16 :goto_2d

    .line 769
    .restart local v2       #normalizedEndTimeMillis:J
    .restart local v6       #status:I
    :cond_1a8
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v2, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_15c

    .line 772
    .end local v2           #normalizedEndTimeMillis:J
    :cond_1ad
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 773
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 774
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 775
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_15c

    .line 789
    :cond_1d0
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 790
    .local v4, position:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5       #selection:I
    goto :goto_188
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1399
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_a

    move v1, v0

    .line 1418
    :cond_9
    :goto_9
    return v1

    .line 1403
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v3, "preference_defaultCalendar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1406
    if-eqz v2, :cond_9

    .line 1409
    const-string v3, "ownerAccount"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1411
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 1412
    :goto_1f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1413
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move v1, v0

    .line 1414
    goto :goto_9

    .line 1416
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 14
    .parameter

    .prologue
    .line 1464
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1465
    new-instance v0, Lcom/android/calendar/RecipientAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/RecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1466
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1467
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnFocusListShrinkRecipients(Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1469
    const v1, 0x7f020031

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1470
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f020023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f020026

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v6, 0x7f04002c

    const v7, 0x7f040014

    const v8, 0x7f0a001c

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v9, 0x7f0a001b

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const v10, 0x7f0a001d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f040018

    move-object v0, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIFFFI)V

    .line 1486
    :goto_65
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1487
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1490
    sget-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1492
    return-object p1

    .line 1483
    :cond_78
    new-instance v0, Lcom/android/calendar/EmailAddressAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1484
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_65
.end method

.method private isCustomRecurrence()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 510
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ne v2, v1, :cond_1a

    :cond_14
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    .line 545
    :cond_1b
    :goto_1b
    :pswitch_1b
    return v0

    .line 516
    :cond_1c
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_1b

    .line 520
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_5e

    :cond_29
    move v0, v1

    .line 545
    goto :goto_1b

    .line 524
    :pswitch_2b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 526
    :cond_39
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_29

    goto :goto_1b

    .line 531
    :pswitch_40
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 534
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_29

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    if-lez v2, :cond_29

    goto :goto_1b

    .line 520
    nop

    :pswitch_data_5e
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_2b
        :pswitch_40
        :pswitch_1b
    .end packed-switch
.end method

.method private isWeekdayEvent()Z
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 550
    const/4 v0, 0x1

    .line 552
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
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
    .line 898
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 899
    .local v3, vals:[I
    array-length v2, v3

    .line 900
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 902
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_19

    .line 903
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 906
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
    .line 913
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 915
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private populateRepeats()V
    .registers 22

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 401
    .local v15, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 403
    .local v12, r:Landroid/content/res/Resources;
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const/16 v19, 0x5

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    .line 411
    .local v5, days:[Ljava/lang/String;
    const v18, 0x7f07000d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 416
    .local v10, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isCustomRecurrence()Z

    move-result v8

    .line 417
    .local v8, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v9

    .line 419
    .local v9, isWeekdayEvent:Z
    new-instance v14, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .local v14, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .local v13, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v18, 0x7f0c0050

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    const v18, 0x7f0c0051

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    if-eqz v9, :cond_d8

    .line 429
    const v18, 0x7f0c0052

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_d8
    const v18, 0x7f0c0053

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, format:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "%A"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    div-int/lit8 v4, v18, 0x7

    .line 440
    .local v4, dayNumber:I
    const v18, 0x7f0c0054

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 441
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v20, v10, v4

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget v0, v15, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    aget-object v20, v5, v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const v18, 0x7f0c0057

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 445
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 449
    .local v16, when:J
    const v18, 0x7f0c0058

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    const/4 v6, 0x0

    .line 451
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_19d

    .line 452
    or-int/lit16 v6, v6, 0x80

    .line 454
    :cond_19d
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    if-eqz v8, :cond_1e8

    .line 458
    const v18, 0x7f0c0059

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1e8
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 463
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 464
    .local v11, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_218

    .line 465
    if-eqz v8, :cond_262

    .line 466
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 496
    :cond_218
    :goto_218
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x1090008

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 498
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_261

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 506
    :cond_261
    return-void

    .line 468
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_2dc

    goto :goto_218

    .line 470
    :pswitch_272
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 471
    goto :goto_218

    .line 473
    :pswitch_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v18

    if-eqz v18, :cond_298

    .line 474
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto :goto_218

    .line 477
    :cond_298
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 480
    goto/16 :goto_218

    .line 482
    :pswitch_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v18

    if-eqz v18, :cond_2c0

    .line 483
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_218

    .line 486
    :cond_2c0
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 489
    goto/16 :goto_218

    .line 491
    :pswitch_2ce
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_218

    .line 468
    :pswitch_data_2dc
    .packed-switch 0x4
        :pswitch_272
        :pswitch_27f
        :pswitch_2a6
        :pswitch_2ce
    .end packed-switch
.end method

.method private populateTimezone()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/event/EditEventView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$1;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 360
    return-void
.end method

.method private populateWhen()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 337
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 338
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 339
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 340
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 342
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 343
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 345
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void
.end method

.method private prepareAvailability()V
    .registers 5

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 921
    const v1, 0x7f07000b

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    .line 922
    const v1, 0x7f07000a

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 924
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 925
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 929
    :cond_29
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 931
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 932
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 933
    return-void
.end method

.method private prepareReminders()V
    .registers 14

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 944
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 951
    const v2, 0x7f070003

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 952
    const v2, 0x7f070002

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 953
    const v2, 0x7f070001

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 954
    const/high16 v2, 0x7f07

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 958
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 959
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 963
    :cond_3c
    const/4 v0, 0x0

    .line 964
    iget-boolean v2, v1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_be

    .line 965
    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 966
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 968
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 969
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 970
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_4b

    .line 978
    :cond_75
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 979
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 980
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_b7

    .line 982
    :cond_a0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_7e

    .line 987
    :cond_b7
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_bd
    move v0, v11

    .line 992
    :cond_be
    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 993
    return-void
.end method

.method private sendAccessibilityEvent()V
    .registers 5

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1181
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v1, :cond_15

    .line 1195
    :cond_14
    :goto_14
    return-void

    .line 1184
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1185
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1191
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1194
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_14
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1504
    const v0, 0x18016

    .line 1516
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1517
    :try_start_6
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1518
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1520
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1521
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1e

    .line 1522
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    return-void

    .line 1521
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1526
    const/4 v0, 0x1

    .line 1527
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1528
    const/16 v0, 0x81

    .line 1539
    :cond_b
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1540
    :try_start_e
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1541
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1542
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1543
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_26

    .line 1544
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    return-void

    .line 1543
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private setTimezone(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1548
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 1560
    :cond_b
    :goto_b
    return-void

    .line 1551
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1552
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1555
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1556
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1557
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1558
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1559
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private setViewStates(I)V
    .registers 13
    .parameter "mode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 1324
    if-eqz p1, :cond_10

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 1325
    :cond_10
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->setWhenString()V

    .line 1327
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1328
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1330
    .end local v1           #v:Landroid/view/View;
    :cond_29
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1331
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    .line 1333
    .end local v1           #v:Landroid/view/View;
    :cond_3f
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1334
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1335
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_45

    .line 1337
    .end local v1           #v:Landroid/view/View;
    :cond_59
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1340
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1342
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1343
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    :goto_84
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1348
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    :cond_95
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1351
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    :cond_a6
    :goto_a6
    return-void

    .line 1345
    :cond_a7
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_84

    .line 1354
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_ad
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_b3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1355
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b3

    .line 1357
    .end local v1           #v:Landroid/view/View;
    :cond_c3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1358
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c9

    .line 1360
    .end local v1           #v:Landroid/view/View;
    :cond_d9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_df
    :goto_df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1361
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1362
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 1363
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_df

    .line 1368
    .end local v1           #v:Landroid/view/View;
    :cond_111
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v2, :cond_15f

    .line 1369
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    :goto_121
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v6, v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 1378
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_16a

    .line 1379
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1383
    :goto_14e
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a6

    .line 1372
    :cond_15f
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_121

    .line 1381
    :cond_16a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_14e
.end method

.method private showTimezoneDialog()V
    .registers 8

    .prologue
    .line 363
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    .local v0, alertDialogContext:Landroid/content/Context;
    new-instance v4, Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 366
    const v4, 0x7f0c0004

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 367
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 371
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 373
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040031

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 376
    .local v3, timezoneFooterView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c002f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    new-instance v4, Lcom/android/calendar/event/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/calendar/event/EditEventView$2;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 395
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 396
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 397
    return-void
.end method

.method private updateAttendees(Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, attendeesList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1429
    :cond_8
    return-void

    .line 1425
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1427
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method private updateHomeTime()V
    .registers 18

    .prologue
    .line 1666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .line 1667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_130

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_130

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/EditEventView;->mModification:I

    if-eqz v1, :cond_130

    .line 1669
    const/4 v7, 0x1

    .line 1670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 1671
    if-eqz v12, :cond_30

    .line 1672
    const/16 v7, 0x81

    .line 1674
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 1677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_128

    const/4 v1, 0x1

    move v9, v1

    .line 1678
    :goto_4c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_12c

    const/4 v1, 0x1

    move v10, v1

    .line 1681
    :goto_56
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v9, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 1683
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    const v7, 0x80016

    .line 1693
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    if-eq v10, v9, :cond_143

    .line 1700
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 1703
    :goto_c4
    const/4 v7, 0x1

    .line 1704
    if-eqz v12, :cond_c9

    .line 1705
    const/16 v7, 0x81

    .line 1709
    :cond_c9
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1710
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    const v7, 0x80016

    .line 1717
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    :goto_127
    return-void

    .line 1677
    :cond_128
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_4c

    .line 1678
    :cond_12c
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_56

    .line 1724
    :cond_130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_127

    :cond_143
    move-object v9, v11

    goto :goto_c4
.end method

.method private updateRemindersVisibility(I)V
    .registers 4
    .parameter "numReminders"

    .prologue
    .line 1432
    if-nez p1, :cond_a

    .line 1433
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1437
    :goto_9
    return-void

    .line 1435
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_b

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 673
    :cond_a
    :goto_a
    return-void

    .line 668
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_a

    .line 669
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 670
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 678
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_30

    .line 679
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 680
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    .line 681
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2f

    .line 682
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .local v1, nextIntent:Landroid/content/Intent;
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 684
    .local v0, array:[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 695
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_2f
    :goto_2f
    return-void

    .line 688
    :cond_30
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_2f

    .line 689
    if-ltz p2, :cond_2f

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_2f

    .line 690
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 691
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 692
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_2f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 655
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 656
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 657
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 659
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 1610
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1611
    if-nez v0, :cond_10

    .line 1613
    const-string v0, "EditEvent"

    const-string v1, "Cursor not set on calendar item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_f
    :goto_f
    return-void

    .line 1617
    :cond_10
    const-string v1, "calendar_color"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1618
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1619
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v2

    .line 1621
    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v3, :cond_b5

    .line 1622
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1628
    :goto_27
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1629
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1630
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_f

    .line 1633
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v2, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1634
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1636
    const-string v1, "maxReminders"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1637
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1638
    const-string v1, "allowedReminders"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1639
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1640
    const-string v1, "allowedAttendeeTypes"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1641
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1642
    const-string v1, "allowedAvailability"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1643
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 1648
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1649
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1650
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_bc

    const/4 v0, 0x1

    :goto_98
    iput-boolean v0, v1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1653
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1654
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f100078

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1656
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1657
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1658
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    goto/16 :goto_f

    .line 1624
    :cond_b5
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_27

    .line 1650
    :cond_bc
    const/4 v0, 0x0

    goto :goto_98
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
    .line 1731
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public prepareForSave()Z
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 626
    :cond_e
    const/4 v0, 0x0

    .line 628
    :goto_f
    return v0

    :cond_10
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_f
.end method

.method protected setAllDayViewsVisibility(Z)V
    .registers 9
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1566
    if-eqz p1, :cond_5a

    .line 1567
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_45

    .line 1568
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_1e

    .line 1569
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1572
    :cond_1e
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1577
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1578
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1579
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1581
    :cond_3b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1582
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1585
    .end local v0           #endMillis:J
    :cond_45
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1586
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1587
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    :goto_54
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1603
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1604
    return-void

    .line 1589
    :cond_5a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_82

    .line 1590
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_72

    .line 1591
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1594
    :cond_72
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1595
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1596
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1598
    .end local v0           #endMillis:J
    :cond_82
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1599
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1600
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1264
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 1265
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4b

    .line 1267
    :cond_b
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_14

    .line 1268
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1270
    :cond_14
    if-nez p2, :cond_17

    .line 1306
    :cond_16
    :goto_16
    return-void

    .line 1275
    :cond_17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1276
    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    goto :goto_16

    .line 1284
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v1

    .line 1287
    new-instance v2, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1288
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1289
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1290
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1292
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v1, :cond_16

    .line 1293
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1294
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1295
    if-eqz p2, :cond_89

    .line 1296
    :goto_7c
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1297
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_16

    .line 1295
    :cond_89
    const/4 v0, 0x0

    goto :goto_7c

    .line 1298
    :cond_8b
    if-eqz p2, :cond_99

    .line 1299
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_16

    .line 1301
    :cond_99
    const-string v0, "EditEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1302
    const-string v0, "EditEvent"

    const-string v1, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method public setModel(Lcom/android/calendar/CalendarEventModel;)V
    .registers 15
    .parameter

    .prologue
    const v12, 0x7f100047

    const v11, 0x7f100046

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 1004
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1007
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/calendar/EmailAddressAdapter;

    if-eqz v0, :cond_20

    .line 1008
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/EmailAddressAdapter;->close()V

    .line 1009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1012
    :cond_20
    if-nez p1, :cond_2d

    .line 1014
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1176
    :goto_2c
    return-void

    .line 1019
    :cond_2d
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v1

    .line 1021
    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1022
    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 1023
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1026
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_4f

    .line 1027
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v6, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1029
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1031
    :cond_4f
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_65

    .line 1032
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1034
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1036
    :cond_65
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1037
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 1038
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1043
    :cond_72
    iget-boolean v0, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-nez v0, :cond_7b

    .line 1044
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :cond_7b
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/event/EditEventView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$3;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1054
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1055
    iput-boolean v9, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1056
    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_20a

    .line 1057
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1059
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1060
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1061
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1062
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1063
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1069
    :goto_b6
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v0, v2, :cond_c1

    .line 1070
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1073
    :cond_c1
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 1074
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_db

    .line 1075
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1078
    :cond_db
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1079
    const-string v2, "preferences_default_reminder"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    .line 1083
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1084
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 1086
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1087
    new-instance v2, Lcom/android/calendar/event/EditEventView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$4;-><init>(Lcom/android/calendar/event/EditEventView;)V

    .line 1093
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-nez v0, :cond_11b

    .line 1096
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10005d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/event/EditEventView$5;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$5;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    :cond_11b
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_126

    .line 1106
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_126
    iget-boolean v0, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_13c

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13c

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    const-string v2, "calendar.google.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 1111
    :cond_13c
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :goto_159
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_164

    .line 1119
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1122
    :cond_164
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_16f

    .line 1123
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1126
    :cond_16f
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1127
    const/4 v2, -0x1

    if-eq v0, v2, :cond_183

    .line 1128
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1130
    :cond_183
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1133
    if-eqz v1, :cond_223

    .line 1134
    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 1136
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1137
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1138
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    :goto_1a8
    iget v0, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 1146
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_23c

    .line 1149
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1150
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1152
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1154
    if-eqz v0, :cond_1dd

    .line 1155
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :cond_1dd
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v0, :cond_232

    .line 1158
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1167
    :goto_1ea
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateTimezone()V

    .line 1168
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateWhen()V

    .line 1169
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1170
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateAttendees(Ljava/util/HashMap;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1173
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->sendAccessibilityEvent()V

    goto/16 :goto_2c

    .line 1065
    :cond_20a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_b6

    .line 1115
    :cond_211
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_159

    .line 1140
    :cond_223
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a8

    .line 1160
    :cond_232
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1ea

    .line 1163
    :cond_23c
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1164
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1ea
.end method

.method public setModification(I)V
    .registers 2
    .parameter "modifyWhich"

    .prologue
    .line 1391
    iput p1, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 1392
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1393
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1394
    return-void
.end method

.method protected setWhenString()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 1234
    const/16 v6, 0x10

    .line 1235
    .local v6, flags:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1236
    .local v7, tz:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_33

    .line 1237
    or-int/lit8 v6, v6, 0x2

    .line 1238
    const-string v7, "UTC"

    .line 1245
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1246
    .local v2, startMillis:J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1247
    .local v4, endMillis:J
    sget-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1250
    .local v8, when:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    return-void

    .line 1240
    .end local v2           #startMillis:J
    .end local v4           #endMillis:J
    .end local v8           #when:Ljava/lang/String;
    :cond_33
    or-int/lit8 v6, v6, 0x1

    .line 1241
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1242
    or-int/lit16 v6, v6, 0x80

    goto :goto_f
.end method

.method public updateView()V
    .registers 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v0, :cond_5

    .line 1320
    :goto_4
    return-void

    .line 1315
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1316
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_4

    .line 1318
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_4
.end method
